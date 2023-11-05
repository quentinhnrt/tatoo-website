<?php

acf_add_local_field_group(array(
    'key' => 'tatoo-block',
    'title' => 'Tatoo',
    'fields' => [
        AcfHelper::field('Titre', 'tatoo-title', 'text'),
        AcfHelper::field('Description', 'tatoo-desc', 'wysiwyg'),
        AcfHelper::field('Illustration', 'tatoo-image', 'image'),
        AcfHelper::field('Lien vers la page tatoo', 'tatoo-link', 'link'),
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