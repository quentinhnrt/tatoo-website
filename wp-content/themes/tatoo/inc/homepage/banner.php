<?php

acf_add_local_field_group(array(
    'key' => 'banner-block',
    'title' => 'Banner',
    'fields' => [
        AcfHelper::field('Title', 'banner-title', 'text', 'banner'),
    ],
    'location' => array (
        array (
            array (
                'param' => 'post_type',
                'operator' => '==',
                'value' => 'page',
            ),
        ),
    ),
));