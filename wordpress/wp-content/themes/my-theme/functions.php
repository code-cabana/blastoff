<?php
// Allow posts to have an associated image
function add_featured_image_support()
{
  add_theme_support('post-thumbnails');
}

// Make wordpress load stylesheets
// https://developer.wordpress.org/reference/functions/wp_enqueue_style/
function register_styles()
{
  $version = wp_get_theme()->get('Version');
  wp_enqueue_style('main', get_template_directory_uri() . "/style.css", array(), $version, "all");
}

// Make wordpress load javascript
// https://developer.wordpress.org/reference/functions/wp_enqueue_script/
function register_scripts()
{
  $version = wp_get_theme()->get('Version');
  wp_enqueue_script('main', get_template_directory_uri() . "/assets/js/main.js", array(), $version, "all", true);
}

add_action('after_setup_theme', 'add_featured_image_support');
add_action('wp_enqueue_scripts', 'register_styles');
add_action('wp_enqueue_scripts', 'register_scripts');
