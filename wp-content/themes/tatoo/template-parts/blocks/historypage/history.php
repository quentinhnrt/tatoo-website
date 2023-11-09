<?php
    $title = get_field('history-title');
    $events = get_field('history');

    if (!$title || !$events) {
        return;
    }
?>

<div class="history">
    <h2 class="history__title"><?= $title ?></h2>
    <ul class="history__list">
        <?php foreach ($events as $event) : ?>
            <li class="history__list__item">
                <div class="history__list__item__date"><?= $event['history-date'] ?></div>
                <div class="history__list__item__description"><?= $event['history-description'] ?></div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
