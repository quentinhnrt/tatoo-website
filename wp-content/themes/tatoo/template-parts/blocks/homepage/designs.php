<<?php

$designs = get_field('designs-selection');
$title = get_field('designs-title');
$labelCta = get_field('designs-label-cta');
$archiveLink = get_post_type_archive_link('design');

if (!$designs || !$title || !$labelCta || !$archiveLink) {
    return;
}

?>

<div class="block-designs container">
    <h2 class="block-designs__title"><?= $title ?></h2>
    <div class="block-designs__design-wrapper">
        <?php foreach ($designs as $design) : ?>
            <div class="block-designs__design-wrapper__item">
                <?php if ($image = get_the_post_thumbnail($design->ID, 'large')): ?>
                    <?= $image ?>
                <?php else: ?>
                    <div class="block-designs__design-wrapper__item__no-image"></div>
                <?php endif; ?>
            </div>
        <?php endforeach; ?>
    </div>
    <a class="block-designs__link cta" href="<?= $archiveLink ?>"><?= $labelCta ?></a>
</div>
