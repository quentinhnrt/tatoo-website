<?php

add_action('wp_ajax_nopriv_get_designs', 'get_designs');
add_action('wp_ajax_get_designs', 'get_designs');

function get_designs()
{
    $lastTemplate = $_POST['lastTemplate'];
    $templates = [1, 2, 3];
    $offset = $_POST['offset'];

    $templates = array_diff($templates, [$lastTemplate]);
    $lastTemplate = $templates[array_rand($templates)];

    $limit = match ($lastTemplate) {
        1 => 6,
        2 => 10,
        3 => 3,
        default => get_option('posts_per_page'),
    };

    $args = [
        'post_type' => 'design',
        'posts_per_page' => $limit,
        'offset' => $offset,
    ];

    $query = new WP_Query($args);

    if ($query->have_posts()) {
        get_template_part('template-parts/loop-designs', null, ['template' => $lastTemplate, 'query' => $query, 'offset' => $limit]);
    } else {
        echo 'no more posts';
    }

    wp_reset_postdata();
    die();
}