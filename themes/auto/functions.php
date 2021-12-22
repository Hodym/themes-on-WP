<?php

add_action( 'wp_enqueue_scripts', function() {
	wp_enqueue_style( 'fonts-gstatic', 'https://fonts.gstatic.com' );
	wp_enqueue_style( 'fonts-googleapis', 'https://fonts.googleapis.com/css2?family=Oswald:wght@300;400&display=swap' );
	wp_enqueue_style( 'reset', get_template_directory_uri() . '/assets/css/reset.css' );
	wp_enqueue_style( 'slick', get_template_directory_uri() . '/assets/css/slick.css' );
	wp_enqueue_style( 'animate', 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css' );
	wp_enqueue_style( 'style', get_template_directory_uri() . '/assets/css/style.css' );
	//wp_enqueue_script( 'script-name', get_template_directory_uri() . '/js/example.js', array(), '1.0.0', true );
});

?>