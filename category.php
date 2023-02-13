<?php
get_header();
?>
<?php
    get_template_part('sections/home/focus'); 
    get_template_part('sections/banner-top-on-all-page');
?>
<?php 
    $cat = get_queried_object();
    $parent_cat_id = $cat->parent;
    if($parent_cat_id == 0){
?>
    <div class="mc_cate_name">
        <div class="mc-container">
            <?php echo single_cat_title(); ?>
        </div>
    </div>
<?php 
    }else{
        list_cat_child_in_cate_page($parent_cat_id, $cat->term_id);
    }
?>
<section class="show_pth_sec_1 mc_category">
    <div class="mc-container">
        <div class="show_pth_sec_1_contain">
            <div class="mc-row mc-mg--15">
                <div class="mc-col-9 mc-col-sm-12 mc-pdx-15">
                    
                    <div class="show_pth">
                        <div class="mc-row mc-mg--15">
                            <?php $count=1; if (have_posts()) : while(have_posts()) : the_post(); ?>
                            <?php 
                                if($count == 1) :
                            ?>
                            <div class="mc-col-12 mc-pdx-15">
                                <a href="<?php the_permalink(); ?>" class="sec_1_pth_one_post mc-row mc-mg--15">
                                    <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt=" <?php echo get_the_title(); ?>">
                                    </div>
                                    <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                                        <div class="thtm-2-title-post">
                                            <?php echo get_the_title(); ?>
                                        </div>
                                        <div class="thtm-2-date-post">
                                            <?php echo get_the_date( 'Y-m-d' ); ?>
                                        </div>
                                        <div class="thtm-2-excerpt-post">
                                            <?php echo get_the_excerpt(); ?>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <?php else: ?>
                            <a href="<?php the_permalink(); ?>" class="thtm-mgb mc-col-4 mc-col-sm-12 mc-pdx-15">
                                <div class="sec_1_pth_many_post">
                                    <div class="thtm-thumb-post">
                                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt=" <?php echo get_the_title(); ?>">
                                    </div>
                                    <div class="thtm-title-post">
                                        <?php echo get_the_title(); ?>
                                    </div>
                                    <div class="cate-2-date-post">
                                        <?php echo get_the_date( 'Y-m-d' ); ?>
                                    </div>
                                    <div class="cate-2-excerpt-post">
                                        <?php echo get_the_excerpt(); ?>
                                    </div>
                                </div>
                            </a>
                            <?php endif; ?>
                            <?php $count++;endwhile; endif; ?>
                        </div>
                        
                    </div>
                    
                    <?php
                    the_posts_pagination( array(
                    'prev_text' => __( 'Trước', 'textdomain' ),
                    'next_text' => __( 'Sau', 'textdomain' ),
                    ) );
                    ?>
                    
                </div>
                <div class="mc-col-3 mc-col-sm-12 mc-pdx-15">
                    <div class="banner_qc_news_1">
                        <a href="<?php echo get_field("cate_mc_link_banner_quc_1","option"); ?>" class="stk-banenr">
                            <img src="<?php echo get_field("cate_mc_banner_quc_1","option"); ?>" alt="<?php echo get_field("cate_mc_banner_quc_1","option"); ?>">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>
