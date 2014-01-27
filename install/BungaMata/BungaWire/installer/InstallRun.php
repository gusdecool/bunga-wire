<?php

namespace BungaMata\BungaWire\Installer;

use Doctrine\DBAL\Configuration;
use Doctrine\DBAL\Connection;
use Doctrine\DBAL\DriverManager;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Helper\DialogHelper;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class InstallRun extends Command
{

	/**
	 * @var Connection
	 */
	private $dbConnection;

	/**
	 * Database Name
	 *
	 * @var string
	 */
	private $dbName;

	/**
	 * @var DialogHelper
	 */
	private $dialog;

	/**
	 * @var string
	 */
	private $tableQuery;

	private function init()
	{
		// Load Dialog Helper
		$this->dialog = $this->getHelperSet()->get('dialog');

		// Load file database
		$this->tableQuery = file_get_contents(__DIR__.'/database.sql');
	}

	protected function configure()
	{
		$this->setName('bungawire:install:run')
			->setDescription('Run BungaWire installation');
	}

	protected function execute(InputInterface $input, OutputInterface $output)
	{
		$this->init();

		$output->writeln('Trying connect to database...');
		$this->connectDatabase($output);
		$output->writeln('Trying to populate database...');
		$this->populateDatabase($output);

		$output->writeln('Create config file');
		$this->createConfigFile($output);

		// @TODO: add bower automation
		$output->writeln('Please run "bower update" from your terminal and delete "install" folder');
	}

	private function connectDatabase(OutputInterface $output)
	{
		$param = array();
		$param['host'] = $this->dialog->ask($output,
			'<question>Where is your database server? [localhost]</question> ',
			'localhost');
		$param['user'] = $this->dialog->ask($output,
			'<question>What is your database username? [root]</question> ',
			'root');
		$param['password'] = $this->dialog->ask($output,
			'<question>What is your database password?</question> ',
			'');
		$param['driver'] = 'pdo_mysql';

		// Save dbName for later use to create database
		$this->dbName = $this->dialog->ask($output,
			'<question>What is your database name? [BungaWire]</question> ',
			'BungaWire');

		$output->writeln(''); // Write empty line for easy read

		$config = new Configuration();
		$this->dbConnection = DriverManager::getConnection($param, $config);
		$this->dbConnection->connect();
		if($this->dbConnection->isConnected() === false) {
			$output->writeln('Database connection failed, please check your setting');
			$output->writeln('You connection configuration is:');
			$output->writeln('host: '.$param['host']);
			$output->writeln('user: '.$param['user']);
			$output->writeln('password: '.$param['password']);
			$output->writeln('Database Name: '.$param['dbname']);
			$output->writeln('Driver: '.$param['driver']);
			$output->writeln($this->dbConnection->errorInfo());
			$output->writeln('Please try again!');
			$this->connectDatabase($output);
		} else {
			$output->writeln('Database connected!');
		}
	}

	private function populateDatabase(OutputInterface $output)
	{
		// Check if database exist
		$stmt = $this->dbConnection->prepare('SHOW DATABASES LIKE ?');
		$stmt->bindValue(1, $this->dbName);
		$stmt->execute();

		if($stmt->rowCount() > 0) {
			$output->writeln('<info>Waring, Database "'.$this->dbName.'" already exist!</info>');
			$confirmation = $this->dialog->askConfirmation($output,
				'<question>Do you want to drop it? [N]</question> ',
				false
			);

			// if user don't want to use it, reselect the database
			if($confirmation === false) {
				$output->writeln('Okay, then please reselect database name');
				$this->selectDatabase($output);
				$this->populateDatabase($output);
				return;
			} else {
				// Delete database
				$output->writeln('<info>Delete database....</info>');
				$this->dbConnection->executeQuery('DROP DATABASE '.$this->dbName);
			}
		}

		$output->writeln('<info>Create database "'.$this->dbName.'"...</info>');
		$this->dbConnection->executeQuery('CREATE DATABASE '.$this->dbName.' COLLATE utf8_general_ci');

		$output->writeln('<info>Select database "'.$this->dbName.'"...</info>');
		$this->dbConnection->executeQuery('USE '.$this->dbName);

		$output->writeln('<info>Populating table....</info>');
		$this->dbConnection->executeQuery($this->tableQuery);

		$output->writeln('<info>Populating table SUCCESS!</info>');
	}

	private function selectDatabase(OutputInterface $output)
	{
		$this->dbName = $this->dialog->ask($output,
			'<question>What is your database name? [BungaWire]</question> ',
			'BungaWire'
		);
	}

	private function createConfigFile(OutputInterface $output)
	{
		$template = file_get_contents(__DIR__.'/config.php.bak');
		$result = str_replace(
			array(
				'{{host}}',
				'{{database}}',
				'{{user}}',
				'{{password}}'
			),
			array(
				$this->dbConnection->getHost(),
				$this->dbName,
				$this->dbConnection->getUsername(),
				$this->dbConnection->getPassword()
			),
			$template
		);

		$filename = __DIR__.'/../../../../site/config.php';
		file_put_contents($filename, $result);
		chmod($filename, 0644);

		$output->writeln('Create config file success with chmod 644');
	}
}