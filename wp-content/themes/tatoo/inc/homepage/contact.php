<?php

acf_add_local_field_group(array(
    'key' => 'contact-block',
    'title' => 'Contact',
    'fields' => [
        AcfHelper::field('Titre', 'contact-title', 'text'),
        AcfHelper::field('Contact CTA', 'contact-link', 'link'),
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