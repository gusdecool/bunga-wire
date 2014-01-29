<?php
namespace BungaMata\BungaWire\Installer;

use Doctrine\DBAL\Configuration;
use Doctrine\DBAL\Connection;
use Doctrine\DBAL\DriverManager;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class DatabaseDump extends Command
{
	const DB_HOST = 'localhost';

	const DB_USER = 'gusdecool';

	const DB_PASS = 'gusdecool';

	const DB_NAME = 'bunga_wire';

	/**
	 * @var Connection
	 */
	private $db;

	private function init()
	{
		$this->db = DriverManager::getConnection(
			array(
				'host' => self::DB_HOST,
				'user' => self::DB_USER,
				'password' => self::DB_PASS,
				'dbname' => self::DB_NAME,
				'driver' => 'pdo_mysql',
			),
			new Configuration()
		);
	}

	protected function configure()
	{
		$this->setName('bungawire:db:dump')
			->setDescription('Dump database');
	}

	protected function execute(InputInterface $input, OutputInterface $output)
	{
		$this->init();
		$command = 'mysqldump -v -h'.self::DB_HOST.' -u'.self::DB_USER.' -p'.self::DB_PASS.' '.self::DB_NAME.' > '.__DIR__.'/database.sql';
		$return = exec($command);
		$output->writeln($return);
	}
}