<?php

acf_add_local_field_group(array(
    'key' => 'history-block',
    'title' => 'Histoire',
    'fields' => [
        AcfHelper::field('Titre', 'history-title', 'text', null, ['required' => true]),
        AcfHelper::field('Evenements', 'history', 'repeater', null, ['required' => true, 'layout' => 'row', 'sub_fields' => [
            AcfHelper::field('Date', 'history-date', 'date_picker', 'history', ['required' => true]),
            AcfHelper::field('Description', 'history-description', 'wysiwyg', 'history', ['required' => true]),
        ]]),
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