<!doctype html>
<html id="no_margin" <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta property="og:image" content="<?php echo esc_url($featured_img_url); ?>" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="icon" href="<?php //echo get_template_directory_uri(); ?>/images/favico.png" type="image/x-icon" />
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<section class="mc_header">
    <div class="mc-container">
        <div class="mc_header_row">
            <div class="left-header">
                <div class="left-row">
                    <button class="btn-menu-mobile">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <a href='<?php echo site_url(); ?>' class="logo">
                        <img src="<?php echo get_field('logo','option'); ?>" alt="Logo" />
                    </a>
                    <div class="main_menu main_menu_desktop">
                        <?php
                            wp_nav_menu( array(
                                'theme_location' => 'main_menu',
                            ) );
                        ?>
                    </div>
                </div>
            </div>
            <div class="right-header">
                <div class="right-func">
                    <div class="item-right notification">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/noti.svg" class="notice-black" alt="Notice Black">
                    </div>
                    <div class="item-right search">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/search.svg" class="search-black" alt="Search Black">
                    </div>
                    <div class="change-mode">
                        <div class="change-mode-bar">
                            <div class="btn-change">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/sun.svg" class="search-black" alt="Search Black">
                            </div>
                            
                        </div>
                    </div>
                </div>            
            </div>
        </div>
    </div>
</section>
<div class="mc_header_mobile">
    <div class="mc_header_mobile_contain">
        <?php
            wp_nav_menu( array(
                'theme_location' => 'header_mobile',
            ) );
        ?>
    </div>
</div>
<div class="menu_mobile menu-fade-in">
    <div class="menu_mobile_contain">
        <div class="mc-menu-mb">
            <?php
                wp_nav_menu( array(
                    'theme_location' => 'menu_mobile',
                ) );
            ?>
        </div>
        <div class="social-in-menu">
            <div class="row-social">
                <div class="left-title">
                    Follow Us
                </div>
                <div class="right-social">
                    <div class="right-social-row">
                        <?php if( have_rows('list_social_footer','option') ):
                            while( have_rows('list_social_footer','option') ) : the_row(); ?>
                            <div class="item-social">
                                <a href="<?php echo get_sub_field('link_social_footer','option'); ?>"><?php echo get_sub_field('icon_social_footer','option'); ?></a>
                            </div>
                            <?php 
                                endwhile;
                                endif;
                            ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="overlay_menu menu-fade-in">
</div>
