<?php
namespace BungaMata\BungaWire\Installer;

use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\ArrayInput;

//use Sensio\Bundle\DistributionBundle\Composer\ScriptHandler as BaseScriptHandler;
//use Symfony\Component\ClassLoader\ClassCollectionLoader;
use Symfony\Component\Process\Process;

class Console
{
	public static function install()
	{
		set_time_limit(0);
		$application = new Application();
		$application->add(new InstallRun());
		$input = new ArrayInput(array(
			'command' => 'bungawire:install:run'
		));
		$application->run($input);
	}
} 