<!doctype html>
<html>
<head>
	<meta charset="UTF-8"/>
	<meta name="keywords" content="<?php echo $page->metaKeyword ?>"/>
	<meta name="description" content="<?php echo $page->metaDescription ?>"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title><?php echo $page->title; ?></title>
	<link rel="stylesheet" href="<?php echo $config->urls->root ?>bower/bootstrap/dist/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="<?php echo $config->urls->root ?>bower/bootstrap/dist/css/bootstrap-theme.min.css"/>
	<link rel="stylesheet" href="<?php echo $config->urls->templates ?>style/main.css"/>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="<?php echo $config->urls->root; ?>">Bunga Wire</a>
	</div>

	<div class="collapse navbar-collapse navbar-inverse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<?php
			$root = $pages->get("/");
			$children = $root->children();
			$children->prepend($root);
			foreach($children as $child) {
				/* @var $child Page */
				echo '<li>
						<a href="'.$child->url.'">'.$child->title.'</a>
					</li>';
			}
			?>
		</ul>
	</div>
</nav>