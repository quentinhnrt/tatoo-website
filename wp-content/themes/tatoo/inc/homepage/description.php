<?php

acf_add_local_field_group(array(
    'key' => 'description-block',
    'title' => 'Description',
    'fields' => [
        AcfHelper::field('Titre', 'description-title', 'text'),
        AcfHelper::field('Texte de description', 'description-text', 'wysiwyg'),
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