<section class="section_1">
    <div class="section_1_contain">
        <div class="sec-1-row">
            <div class="left-banner">
                <img src="<?php echo get_field('sec_1_banner_left'); ?>" alt="<?php echo get_field('sec_1_banner_left'); ?>">
            </div>
            <div class="right-contain">
                <div class="right_content_sec_1">
                    <?php echo get_field('content_right_sec_1'); ?>
                </div>
                <div class="mc-line"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/line-1.png" class="search-black" alt="Search Black"></div>
                <div class="btn_sec_1">
                    <a href="<?php echo get_field('link_button_sec_1'); ?>"><span><i class="fa-brands fa-youtube"></i></span><?php echo get_field('text_button_sec_1'); ?></a>
                </div>
            </div>
        </div>
    </div>
</section>