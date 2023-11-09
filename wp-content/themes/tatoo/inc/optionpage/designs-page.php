<?php

acf_add_local_field_group(array(
    'key' => 'design-page',
    'title' => 'Page Designs',
    'fields' => [
        AcfHelper::field('Image de bannière', 'design-page-img', 'image'),
    ],
    'location' => array(
        array(
            array(
                'param' => 'options_page',
                'operator' => '==',
                'value' => 'theme-general-settings',
            ),
        ),
    ),
));
