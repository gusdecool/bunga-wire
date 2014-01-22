<?php
/* @var $page Page */
/* @var $pages Pages */
/* @var $config Config */


include('include/header.inc.php');
?>

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="bunga-form">
					<?php
					$form = $modules->get('FormTemplateProcessor');
					/* @var $form FormTemplateProcessor */
					$form->template = $templates->get('formContactUs'); // required
					$form->requiredFields = array(
						'formFirstName',
						'formLastName',
						'formPhone',
						'formEmail',
						'formSubject',
						'formMessage',
					);
					$form->skipFields = array('title', 'metaKeyword', 'metaDescription');
					$form->email = $page->email;
					echo $form->render();
					?>
				</div>
			</div>
		</div>
	</div>

<?php
include('include/footer.inc.php');