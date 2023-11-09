<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package tatoo
 */
	$adresse = get_field('contact-address', 'options');
	$phone = get_field('contact-phone', 'options');
	$email = get_field('contact-email', 'options');
?>

	<footer id="colophon" class="site-footer">
		<div class="site-footer__block">
			<?php wp_nav_menu( array( 'theme_location' => 'footer' ) ); ?>
			<div class="site-footer__block__contact">
				<div class="site-footer__block__contact__item">
					<?php echo $adresse ?>
				</div>
				<div class="site-footer__block__contact__item">
					<?php echo $phone ?>
				</div>
				<div class="site-footer__block__contact__item">
					<?php echo $email ?>
				</div>
			</div>
		</div>
		<div class="site-footer__info">
			© 2023 by Quentin HONNART and Fabien LAPERT
		</div>
	</footer>
</div>

<?php wp_footer(); ?>

</body>
</html>
