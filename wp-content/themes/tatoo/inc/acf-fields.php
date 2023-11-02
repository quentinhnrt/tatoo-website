<?php

if (!function_exists('acf_add_local_field_group')) {
    return;
}

add_action('acf/init', function () {
    require 'class-acf.php';
    require get_template_directory() . '/inc/homepage/register.php';
});