<?php

acf_add_local_field_group(array(
    'key' => 'tatoo-block',
    'title' => 'Tatoo',
    'fields' => [
        AcfHelper::field('Nom', 'tatoo-name', 'text'),
        AcfHelper::field('Description', 'tatoo-desc', 'wysiwyg'),
        AcfHelper::field('Illustration', 'tatoo-image', 'image')
    ],
    'location' => array(
        array(
            array(
                'param' => 'page',
                'operator' => '==',
                'value' => '36',
            ),
        ),
    ),
));