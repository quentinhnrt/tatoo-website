<?php

acf_add_local_field_group(array(
    'key' => 'history-block',
    'title' => 'Histoire',
    'fields' => [
        AcfHelper::field('Titre', 'resume-history-title', 'text'),
        AcfHelper::field('Description', 'resume-history-desc', 'wysiwyg'),
        AcfHelper::field('Illustration', 'resume-history-image', 'image'),
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