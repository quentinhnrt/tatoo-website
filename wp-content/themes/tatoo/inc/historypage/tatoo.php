<?php

acf_add_local_field_group(array(
    'key' => 'tatoo-block',
    'title' => 'Tatoo',
    'fields' => [
        AcfHelper::field('Nom', 'tatoo-name', 'text'),
        AcfHelper::field('Poste', 'tatoo-job', 'text'),
        AcfHelper::field('Biographie', 'tatoo-bio', 'wysiwyg'),
        AcfHelper::field('Illustration', 'tatoo-image', 'image'),
        AcfHelper::field('Citation', 'tatoo-quote', 'text')
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