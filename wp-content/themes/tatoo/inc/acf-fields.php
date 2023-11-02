<?php

add_action('acf/init', function () {
    require 'class-acf.php';
    require get_template_directory() . '/inc/homepage/register.php';
});