<?php

$image = get_field('banner-background');

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
        <p class="banner__tagline__item"><?= get_bloginfo('description') ?></p>
    </div>
</div>

