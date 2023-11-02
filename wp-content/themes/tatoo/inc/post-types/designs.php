<?php

register_post_type('design', [
    'labels' => [
        'name' => __('Designs'),
        'singular_name' => __('Design'),
        'add_new' => __('Add new'),
        'add_new_item' => __('Add new design'),
        'edit_item' => __('Edit design'),
        'new_item' => __('New design'),
        'view_item' => __('View design'),
        'search_items' => __('Search designs'),
        'not_found' => __('No designs found'),
        'not_found_in_trash' => __('No designs found in trash'),
        'parent_item_colon' => __('Parent design'),
        'menu_name' => __('Designs'),
    ],
    'public' => true,
    'menu_position' => 20,
    'menu_icon' => 'dashicons-admin-customizer',
    'supports' => ['title', 'editor', 'thumbnail', 'excerpt', 'comments'],
    'has_archive' => true,
    'rewrite' => ['slug' => 'designs'],
    'show_in_rest' => true,
    'taxonomies' => ['post_tag'],
]);