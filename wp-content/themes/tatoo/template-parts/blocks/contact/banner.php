<?php

$image = get_field('banner-contact');
$title = get_field('banner-contact-title');

if (!$image) {
    return;
}

?>

<div class="banner" style="background-image: url('<?= $image['url'] ?>')">
    <div class="banner__tagline">
        <p class="banner__tagline__item">
            <?= $title ?>
        </p>
    </div>
</div>

