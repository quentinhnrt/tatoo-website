<?php


acf_add_local_field_group(array(
    'key' => 'resume-history-block',
    'title' => 'Resumé histoire',
    'fields' => [
        AcfHelper::field('Titre', 'resume-history-title', 'text'),
        AcfHelper::field('Description', 'resume-history-desc', 'wysiwyg'),
        AcfHelper::field('Illustration', 'resume-history-image', 'image'),
        AcfHelper::field('Lien vers la page histoire', 'resume-history-link', 'link'),
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