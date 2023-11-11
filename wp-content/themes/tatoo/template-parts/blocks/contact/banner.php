<?php

$image = get_field('banner-contact');
$title = get_field('banner-contact-title');
if (isset($image['ID'])) {
    $image = wp_get_attachment_image($image['ID'], 'full', false, [
        'class' => 'banner__background',
    ]);
}

if (!$image) {
    return;
}

?>

<div class="banner">
    <?= $image ?>
    <div class="banner__tagline">
        <p class="banner__tagline__item">
            <?= $title ?>
        </p>
    </div>
</div>

