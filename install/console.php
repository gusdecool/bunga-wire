#!/usr/bin/env php
<?php
// application.php

set_time_limit(0);

require_once __DIR__.'/../vendor/autoload.php';
require_once __DIR__.'/Install.php';

use install\Install;
use Symfony\Component\Console\Application;

$application = new Application();
$application->add(new Install());
$application->run();