<!doctype html>
<html id="no_margin" <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta property="og:image" content="<?php echo esc_url($featured_img_url); ?>" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="icon" href="<?php //echo get_template_directory_uri(); ?>/images/favico.png" type="image/x-icon" />
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<section class="main_header">
    <div class="mc-container">
        <div class="main_header_contain">
            <div class="mc-row mc-jc-space-between mc-align-center">
                <a href=<?php echo site_url(); ?> class="logo">
                    <img src=<?php echo get_field("logo","option"); ?> alt="Logo">
                </a>
                <div class="right-header">
                    <div class="menu_desktop">
                        <?php
                            wp_nav_menu( array(
                                'theme_location' => 'main_menu',
                            ) );
                        ?>
                    </div>
                    <div class="icon-more-menu" id="showAllCateMenu">
                        <i class="gg-more"></i>
                    </div>
                    <div class="icon-close-mega-menu" id="closeAllCateMenu">
                        <i class="gg-close"></i>
                    </div>
                </div>
                <div class="icon-menu-mobile" id="openMenuMobile">
                    <i class="gg-menu"></i>
                </div>
                <div class="icon-close-menu-mobile" id="closeMenuMobile">
                    <i class="gg-close"></i>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="mc_mega_all_menu">
    <div class="mc-container">
        <div class="mc_mega_all_menu_contain">
            <?php
                wp_nav_menu( array(
                    'theme_location' => 'menu_show_category',
                ) );
            ?>
        </div>
    </div>
</div>
<div class="mc-menu-mobile fade-in-left" id="menuMobile">
    <div class="mc-menu-mobile-contain">
        <?php
            wp_nav_menu( array(
                'theme_location' => 'main_menu',
            ) );
        ?>
    </div>
</div>
<div class="bg-overlay-mega-menu mc-fade-in">

</div>
<?php 
    // Create token header as a JSON string
$header = json_encode(['typ' => 'JWT', 'alg' => 'HS256']);

// Create token payload as a JSON string
$payload = json_encode(['user_id' => 123]);

// Encode Header to Base64Url String
$base64UrlHeader = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($header));

// Encode Payload to Base64Url String
$base64UrlPayload = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($payload));

// Create Signature Hash
$signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, 'abC123!', true);

// Encode Signature to Base64Url String
$base64UrlSignature = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));

// Create JWT

$jwt = $base64UrlHeader . "." . $base64UrlPayload . "." . $base64UrlSignature;

echo $jwt;
?>