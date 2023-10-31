<?php

acf_add_local_field_group(array(
    'key' => 'description-block',
    'title' => 'Description',
    'fields' => [
        AcfHelper::field('Titre', 'description-title', 'text', 'banner'),
        AcfHelper::field('Texte de description', 'description-text', 'wysiwyg', 'banner'),
    ],
    'location' => array (
        array (
            array (
                'param' => 'post_type',
                'operator' => '==',
                'value' => 'page',
            ),
        ),
    ),
));