<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package tatoo
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
	<script>
		window.addEventListener('scroll', function() {
			if (window.scrollY > 1) {
				document.getElementById('masthead').classList.add('site-header-fixed');
			} else {
				document.getElementById('masthead').classList.remove('site-header-fixed');
			}
		});
	</script>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e( 'Skip to content', 'tatoo' ); ?></a>

	<header id="masthead" class="site-header">
		<?php wp_nav_menu( array( 'theme_location' => 'header' ) ); ?>
	</header>
