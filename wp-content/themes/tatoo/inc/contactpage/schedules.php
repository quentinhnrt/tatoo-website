<?php

acf_add_local_field_group(array(
    'key' => 'contact-schedules',
    'title' => 'Contact Schedules',
    'fields' => [
        AcfHelper::field('Logo', 'schedules-logo', 'image'),
        AcfHelper::field('Titre', 'schedules-title', 'text'),
        AcfHelper::field('Jour', 'schedules-days', 'repeater', null, ['required' => true, 'layout' => 'row', 'sub_fields' => [
            AcfHelper::field('Jour', 'schedules-day', 'text', null, ['required' => true]),
            AcfHelper::field('Heure', 'schedules-hour', 'text', null, ['required' => true]),
        ]]),
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