<?php

$images = get_field('images');

if (!$tatooName && !$tatooDesc && !$tatooImage) {
    return;
}

?>

<div class="images">
    <?php foreach ($images as $image) : ?>
        <?= wp_get_attachment_image($image['ID'], 'large', false, [
            'class' => 'images__item',
        ]) ?>
    <?php endforeach; ?>
</div>

