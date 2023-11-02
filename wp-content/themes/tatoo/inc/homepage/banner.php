<?php

acf_add_local_field_group(array(
    'key' => 'banner-block',
    'title' => 'Banner',
    'fields' => [
        AcfHelper::field('Image de fond', 'banner-background', 'image'),
    ],
    'location' => array (
        array(
            array(
                'param' => 'page',
                'operator' => '==',
                'value' => 'frontpage',
            ),
        ),
    ),
));