<section class="footer">
    <div class="mc-container">
        <div class="mc-row mc-mg--15">
            <div class="mc-col-4 mc-col-lgm-12 mc-pdx-15">
                <div class="title-maps">
                    <?php echo get_field("title_maps_sec_7","option"); ?>
                </div>
                <a href="<?php echo get_field("link_maps_footer","option"); ?>" class="fot-maps"><img src="<?php echo get_field("image_maps_footer","option"); ?>" alt="<?php echo get_field("image_maps_footer","option"); ?>"></a>
            </div>
            <div class="mc-col-8 mc-col-lgm-12 mc-pdx-15">
                <div class="footer-right">
                    <div class="title-form-footer">
                        <?php echo get_field("title_form_right_footer","option"); ?>
                    </div>
                    <div class="desc-form-footer">
                        <?php echo get_field("description_form_right_footer","option"); ?>
                    </div>
                    <form class="form-footer">
                        <div class="inp-form-footer">
                            <input type="text" placeholder="Your email addresss" />
                        </div>
                        <div class="inp-submit">
                            <input type="submit" value="Sign Up" />
                        </div>
                    </form>
                    <div class="line-3">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/line-3.png" alt="Line">
                    </div>
                    <div class="list-social">
                        <div class="soc-row">
                            <div class="item-soc title-soc mc-col-sm-12">
                                Follow Us
                            </div>
                            <?php if( have_rows('list_social_footer','option') ):
                                while( have_rows('list_social_footer','option') ) : the_row(); ?>
                            <div class="item-soc mc-col-sm-4">
                                <a href="<?php echo get_sub_field('link_social_footer','option'); ?>">
                                    <p class="icon-social"><?php echo get_sub_field('icon_social_footer','option'); ?></p>
                                    <p class="name-social"><?php echo get_sub_field('name_social_footer','option'); ?></p>
                                </a>
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
</section>
<?php wp_footer() ?>
</body>

</html>