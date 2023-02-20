<section class="section_6">
    <div class="mc-container">
        <div class="sec_6_contain">
            <div class="mc-custome-title">
                <div class="mc-main-title">
                     <?php echo get_field('title_sec_6'); ?>
                </div>
                <div class="mc-sub-title">
                    <?php echo get_field('sub_title_sec_6'); ?>
                </div>
            </div>
            <div class="list_post_6">
                <div class="mc-row mc-mg--15">
                    <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                        <?php $term = get_field('select_category_sec_6'); 
                            $count = 0;
                            $args = array(
                                'post_type' => 'post',
                                'post_status' => 'publish',
                                'posts_per_page' => 1,
                                'cat' => $term[0]
                            );
                            $list_posts = new WP_Query( $args );
                            if ( $list_posts->have_posts() ) :
                                while ( $list_posts->have_posts() ) : $list_posts->the_post();
                                $count ++;
                        ?>
                        <div class="thumb-item-left-6">
                            <a href="<?php the_permalink(); ?>" class="img-first-sec-6">
                                <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                            </a>
                            <div class="pare_cate_item_sec_left_6">
                                <a href="<?php echo get_category_link($term[0]); ?>" class="cate_item_sec_left_6">
                                    <?php echo get_cat_name( $term[0] ); ?>
                                </a>
                            </div>
                            
                        </div>
                        <a href="<?php the_permalink(); ?>" class="title-item-left-6">
                            <?php echo get_the_title(); ?>
                        </a>
                        <div class="author_date">
                            <span>BY</span><span class="author">Dansolo</span><span>|</span><span><?php echo get_the_date( 'D M j' ); ?></span>
                        </div>
                        <div class="excerpt-item-left-6">
                            <?php the_excerpt(); ?>
                        </div>
                        <?php 
                                endwhile;
                            endif;
                            
                            // Reset Post Data
                            wp_reset_postdata();
                        ?>
                    </div>
                    <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                        <div class="mc-row mc-mg--15">
                            <?php $term_2 = get_field('select_category_sec_6'); 
                                $count_2 = 0;
                                $args_2 = array(
                                    'post_type' => 'post',
                                    'post_status' => 'publish',
                                    'posts_per_page' => 3,
                                    'cat' => $term_2[0],
                                    'offset' => 1
                                );
                                $list_posts_2 = new WP_Query( $args_2 );
                                if ( $list_posts_2->have_posts() ) :
                                    while ( $list_posts_2->have_posts() ) : $list_posts_2->the_post();
                                    $count_2 ++;
                            ?>
                            <?php if($count_2 == 1): ?>
                            <div class="mc-col-12 mc-pdx-15">
                                <div class="item-first-post-6-right">
                                    <a href="<?php the_permalink(); ?>" class="img-first-sec-right-6">
                                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                    </a>
                                    <div class="posi-pare">
                                        <div class="pare_cate_item_first_sec_right_6">
                                            <a href="<?php echo get_category_link($term[0]); ?>" class="cate_item_first_sec_right_6">
                                                <?php echo get_cat_name( $term[0] ); ?>
                                            </a>
                                        </div>
                                        <a href="<?php the_permalink(); ?>" class="title-item-right-6">
                                            <?php echo get_the_title(); ?>
                                        </a>
                                        <div class="date">
                                            <?php echo get_the_date( 'D M j' ); ?>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <?php else: ?>
                            <div class="mc-col-6 mc-pdx-15">
                                <div class="thumb-item-right-6">
                                    <a href="<?php the_permalink(); ?>" class="img-tw-sec-6">
                                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                    </a>
                                    <div class="pare_cate_item_sec_tw_6">
                                        <a href="<?php echo get_category_link($term[0]); ?>" class="cate_item_sec_tw_6">
                                            <?php echo get_cat_name( $term[0] ); ?>
                                        </a>
                                    </div>
                                    
                                </div>
                                <a href="<?php the_permalink(); ?>" class="title-item-tw-6">
                                    <?php echo get_the_title(); ?>
                                </a>
                                <div class="date">
                                    <?php echo get_the_date( 'D M j' ); ?>
                                </div>
                            </div>
                            <?php endif; ?>
                            <?php 
                                    endwhile;
                                endif;
                                
                                // Reset Post Data
                                wp_reset_postdata();
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="line-3">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/line-3.png" alt="Line">
        </div>
    </div>
</section>