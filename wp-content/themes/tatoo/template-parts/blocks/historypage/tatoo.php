<?php

$tatooName = get_field('tatoo-name');
$tatooJob = get_field('tatoo-job');
$tatooBio = get_field('tatoo-bio');
$tatooImage = get_field('tatoo-image');
$tatooQuote = get_field('tatoo-quote');

if (!$tatooName && !$tatooDesc && !$tatooImage) {
    return;
}

?>

<div class="tatoo">
    <div class="tatoo__content">
        <h2 class="tatoo__content__title"><?= $tatooName ?></h2>
        <h3 class="tatoo__content__job"><?= $tatooJob ?></h3>
        <div class="tatoo__content__bio"><?= $tatooBio ?></div>
    </div>
    <div class="tatoo__image">
        <?= wp_get_attachment_image($tatooImage['ID'], 'large', false, [
            'class' => 'tatoo__image__item',
        ]) ?>
        <div class="tatoo__image__quote">"<?= $tatooQuote ?>"</div>
    </div>
</div>

