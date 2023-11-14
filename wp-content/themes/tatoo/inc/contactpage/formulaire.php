<?php

acf_add_local_field_group(array(
    'key' => 'contact-form',
    'title' => 'Contact Form',
    'fields' => [
        AcfHelper::field('Titre', 'form-title', 'text'),
        AcfHelper::field('Description', 'form-description', 'wysiwyg'),
        AcfHelper::field('Iframe google map', 'formlocation', 'text'),
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