<?php

add_action('init', function () {
    include get_template_directory() . '/inc/post-types/designs.php';
});