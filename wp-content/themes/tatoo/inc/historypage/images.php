<?php

acf_add_local_field_group(array(
    'key' => 'images-block',
    'title' => 'Images',
    'fields' => [
        AcfHelper::field('Images', 'images', 'gallery'),
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