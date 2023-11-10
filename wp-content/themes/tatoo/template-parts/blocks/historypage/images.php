<?php

$images = get_field('images');

if (!$images || !is_array($images)) {
    return;
}
?>

<div class="images">
    <h2 class="images__title">Quelques photos de notre salon</h2>
    <div class="images__content">
        <?php foreach ($images as $image) : ?>
            <?= wp_get_attachment_image($image['ID'], 'large', false, [
                'class' => 'images__content__item',
            ]) ?>
        <?php endforeach; ?>
    </div>
</div>

