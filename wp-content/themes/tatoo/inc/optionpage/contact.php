<?php

acf_add_local_field_group(array(
    'key' => 'contact',
    'title' => 'Contact',
    'fields' => [
        AcfHelper::field('Adresse', 'contact-address', 'text'),
        AcfHelper::field('Téléphone', 'contact-phone', 'text'),
        AcfHelper::field('Email', 'contact-email', 'text'),
    ],
    'location' => array(
        array(
            array(
                'param' => 'options_page',
                'operator' => '==',
                'value' => 'theme-general-settings',
            ),
        ),
    ),
));
