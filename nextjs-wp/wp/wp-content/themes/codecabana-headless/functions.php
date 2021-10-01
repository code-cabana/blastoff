<?php
    function add_featured_image_support_to_your_wordpress_theme() {
      add_theme_support( 'post-thumbnails' );
    }

    add_action( 'after_setup_theme', 'add_featured_image_support_to_your_wordpress_theme' );
?>