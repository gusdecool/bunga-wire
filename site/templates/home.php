<?php
/* @var $page Page */
/* @var $pages Pages */
/* @var $config Config */


include('include/header.inc.php');
?>

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<?php echo $page->content; ?>
		</div>
	</div>
</div>

<?php
include('include/footer.inc.php');