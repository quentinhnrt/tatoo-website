<?php

class AcfHelper
{
    public static function isPage($slug) {
        if (!$slug) return false;
        if (!isset($_GET['post'])) return false;
        if (!is_admin()) return false;

        if ($slug === 'frontpage') {
            $page = get_option('page_on_front');
            $currentPage = get_post($_GET['post']);

            if (!$page || !$currentPage) return false;

            return $page === $currentPage->ID;
        }

        $currentPage = get_post($_GET['post']);
        $page = get_page_by_path($slug);

        if (!$page || !$currentPage) return false;

        return $page->ID === $currentPage->ID;
    }

    public static function field($label, $slug, $type = 'text', $parent = null, $extra = []) {
        if (!$label || !$slug) return false;

        $base = [
            'key' => $slug,
            'label' => $label,
            'name' => $slug,
            'type' => $type,
            'parent' => $parent
        ];

        return array_merge($base, $extra);
    }
}