<?php

acf_add_local_field_group(array(
    'key' => 'designs-block',
    'title' => 'Designs',
    'fields' => [
        AcfHelper::field('Designs', 'designs-selection', 'relationship', null, [
            'post_type' => 'design',
            'filters' => [
                'search'
            ],
            'elements' => [
                'featured_image'
            ],
            'return_format' => 'object',

        ])
    ],
    'location' => array(
        array(
            array(
                'param' => 'post_type',
                'operator' => '==',
                'value' => 'page',
            ),
        ),
    ),
));