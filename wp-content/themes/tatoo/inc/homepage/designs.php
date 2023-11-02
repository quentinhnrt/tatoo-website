<?php

acf_add_local_field_group(array(
    'key' => 'designs-block',
    'title' => 'Designs',
    'fields' => [
        AcfHelper::field('Titre', 'designs-title', 'text'),
        AcfHelper::field('Label CTA', 'designs-label-cta', 'text'),
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
                'param' => 'page',
                'operator' => '==',
                'value' => 'frontpage',
            ),
        ),
    ),
));