<?php

$title = get_field('description-title');
$text = get_field('description-text');

if (!$title || !$text) {
    return;
}

?>

<div class="description container">
    <h2 class="description__title"><?= $title ?></h2>
    <div class="description__text">
        <?= $text ?>
    </div>
</div>
