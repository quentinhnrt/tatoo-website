<?php

$tatooName = get_field('tatoo-name');
$tatooDesc = get_field('tatoo-desc');
$tatooImage = get_field('tatoo-image');

if (!$tatooName && !$tatooDesc && !$tatooImage) {
    return;
}

?>

<div class="tatoo">
    <div class="tatoo__content">
        <h2 class="tatoo__content__title"><?= $tatooName ?></h2>
        <div class="tatoo__content__description"><?= $tatooDesc ?></div>
    </div>
    <div class="tatoo__image">
        <?= wp_get_attachment_image($tatooImage['ID'], 'large', false, [
            'class' => 'tatoo__image__item',
        ]) ?>
    </div>
</div>

