<?php

$title = get_field('resume-history-title');
$text = get_field('resume-history-desc');
$image = get_field('resume-history-image');
$link = get_field('resume-history-link');

if (!$title || !$text || !$image || !$link) {
    return;
}

if (isset($image['ID'])) {
    $image = wp_get_attachment_image($image['ID'], 'large', false, [
        'class' => 'resume-history__image',
    ]);
}

?>

<div class="resume-history container">
    <?= $image ?>
    <div class="resume-history__content">
        <h2 class="resume-history__title"><?= $title ?></h2>
        <div class="resume-history__text">
            <?= $text ?>
        </div>
        <a href="<?= $link['url'] ?>" class="resume-history__link cta"><?= $link['title'] ?></a>
    </div>
</div>
