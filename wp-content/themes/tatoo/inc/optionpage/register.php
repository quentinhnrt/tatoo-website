<?php

if (!function_exists('acf_add_options_page')) return;

acf_add_options_page([
    'page_title' => __('Inkognito'),
    'menu_title' => __('Inkognito'),
    'menu_slug' => 'theme-general-settings',
    'capability' => 'edit_posts',
    'redirect' => false
]);

require get_template_directory() . '/inc/optionpage/designs-page.php';
require get_template_directory() . '/inc/optionpage/contact.php';