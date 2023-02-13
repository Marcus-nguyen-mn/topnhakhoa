<section class="footer">
    <div class="mc-container">
        <div class="menu-footer">
            <?php
                wp_nav_menu( array(
                    'theme_location' => 'menu_footer',
                ) );
            ?>
        </div>
        <div class="request_and_banner_ads">
            <div class="mc-row mc-mg--15">
                <div class="mc-col-6 mc-col-md-12 mc-pdx-15">
                    <div class="left-request-reader">
                        <div class="mc-row">
                            <a href="<?php echo site_url(); ?>" class="logo_footer mc-col-3 mc-col-sm-12">
                                <img src="<?php echo get_field("logo_footer","option"); ?>" alt="Logo Footer">
                            </a>
                            <div class="txt-request-reader mc-col-9 mc-col-sm-12">
                                <div class="title_request_reader">
                                    <?php echo get_field("title_request_reader","option"); ?>
                                </div>
                                <a class="mc-row css-mailer mc-align-center" href="mailto:<?php echo get_field("mail_tspn","option"); ?>">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/mail.png" alt="Icon Mail" />
                                    <span><?php echo get_field("mail_tspn","option"); ?></span>
                                </a>
                                <div class="desc_requeest_reader">
                                    <?php echo get_field("desc_request_reader","option"); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mc-col-6 mc-col-md-12 mc-pdx-15">
                    <a href="<?php echo get_field("link_banner_ads_left_footer","option"); ?>" class="banner_ads_right_footer">
                        <img src="<?php echo get_field("banner_ads_left_footer","option"); ?>" alt="Banner Ads Footer" />
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="last_footer">
        <div class="mc-container">
            <div class="mc-row">
                <div class="mc-col-6 mc-col-sm-12">
                    <div class="info_this_footer">
                        <div class="title_info_this_footer">
                            <?php echo "THÔNG TIN LIÊN HỆ"; ?>
                        </div>
                        <div class="info_this_footer_detail">
                            <div class="one_this_info mc-row">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/address.png" alt="Icon Address" />
                                <div class="txt_one_this_info">
                                    <?php echo get_field("address_footer","option"); ?>
                                </div>
                            </div>
                            <a href="tel:<?php echo get_field("mc_footer_hotline","option"); ?>" class="one_this_info mc-row">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/phone.png" alt="Icon Phone" />
                                <div class="txt_one_this_info">
                                    <?php echo get_field("mc_footer_hotline","option"); ?>
                                </div>
                            </a>
                            <a href="mailto:<?php echo get_field("mail_tspn","option"); ?>" class="one_this_info mc-row">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/mail-white.png" alt="Icon Mail" />
                                <div class="txt_one_this_info">
                                    <?php echo get_field("mail_tspn","option"); ?>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="mc-col-6 mc-col-sm-12">
                    <div class="about_woman_think">
                        <?php echo get_field("about_woman_think","option"); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php wp_footer() ?>
</body>

</html>