<?php
    $title = get_field('schedules-title');
    $logo = get_field('schedules-logo');
    $days = get_field('schedules-days');

    if (!$title || !$days) {
        return;
    }
?>

<div class="schedules">
    <div class="schedules__logo">
        <img src="<?= $logo['url'] ?>" alt="<?= $logo['alt'] ?>">
    </div>
    <div class="schedules__content">
        <h2 class="schedules__content__title"><?= $title ?></h2>
        <ul class="schedules__content__list">
            <?php foreach ($days as $day) : ?>
                <li class="schedules__content__list__item">
                    <div class="schedules__content__list__item__day"><?= $day['schedules-day'] ?></div>
                    <div class="schedules__content__list__item__hour"><?= $day['schedules-hour'] ?></div>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
