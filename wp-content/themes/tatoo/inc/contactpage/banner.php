<?php

acf_add_local_field_group(array(
    'key' => 'contact-banner',
    'title' => 'Contact Banner',
    'fields' => [
        AcfHelper::field('Bannière', 'banner-contact', 'image'),
        AcfHelper::field('Titre', 'banner-contact-title', 'text'),
    ],
    'location' => array(
        array(
            array(
                'param' => 'page',
                'operator' => '==',
                'value' => '34',
            ),
        ),
    ),
));