<?php
namespace BungaMata\BungaWire\Installer;

use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\ArrayInput;

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