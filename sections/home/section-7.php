<section class="section_7">
    <div class="mc-container">
        <div class="sec_7_contain">
            <div class="mc-custome-title">
                <div class="mc-main-title">
                     <?php echo get_field('title_sec_7'); ?>
                </div>
                <div class="mc-sub-title">
                    <?php echo get_field('sub_title_sec_7'); ?>
                </div>
            </div>
            <div class="list_post_sec_7">
                <div class="mc-row mc-mg--15">
                <?php 
                        $args = array(
                            'post_type' => 'post',
                            'post_status' => 'publish',
                            'posts_per_page' => 6,
                        );
                        $list_posts = new WP_Query( $args );
                        if ( $list_posts->have_posts() ) :
                            while ( $list_posts->have_posts() ) : $list_posts->the_post();
                    ?>
                    <div class="mc-col-6 mc-col-lgm-12 mc-pdx-15">
                        <div class="item-sec-7">
                            <div class="mc-row mc-mg--15">
                                <div class="mc-col-7 oder-2 mc-col-sm-12 mc-pdx-15">
                                    <div class="mc-list-cate-7">
                                        <?php
                                            $category_detail=get_the_category(get_the_ID());
                                            $count_cat = 0;
                                            foreach($category_detail as $cd){ $count_cat++;
                                            if($count_cat <= 2){
                                            ?>
                                        <a href="<?php echo get_category_link( $cd->term_id ); ?>">
                                            <?php echo $cd->name; ?>
                                        </a>
                                        <?php 
                                            }
                                        }
                                        ?>
                                    </div>
                                    <a href="<?php the_permalink(); ?>" class="title_item_sec_7">
                                        <?php echo get_the_title(); ?>
                                    </a>
                                    <div class="excerpt-item-7">
                                        <?php the_excerpt(); ?>
                                    </div>
                                    <div class="author_date">
                                        <span>BY</span><span class="author">Dansolo</span><span>|</span><span><?php echo get_the_date( 'D M j' ); ?></span>
                                    </div>
                                </div>
                                <div class="mc-col-5 oder-1 mc-col-sm-12 mc-pdx-15">
                                    <a href="<?php the_permalink(); ?>" class="img-first-sec-7">
                                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php 
                            endwhile;
                        endif;
                        
                        // Reset Post Data
                        wp_reset_postdata();
                    ?>
                </div>
            </div>
            <div class="read-more-7">
                <a href="<?php echo get_field('link_button_read_more_7'); ?>"><?php echo get_field('text_button_read_more_sec_7'); ?></a>
            </div>
        </div>
    </div>
</section>