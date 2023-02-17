<section class="section_4">
    <div class="mc-container">
        <div class="sec4_contain">
            <div class="mc-custome-title">
                <div class="mc-main-title">
                     Vietnam   
                </div>
                <div class="mc-sub-title">
                    Explore
                </div>
            </div>
            <div class="list-post-sec4">
                <div class="mc-row">
                    <?php $term = get_field('select_post_sec_4'); 
                        $count = 0;
                        $args = array(
                            'post_type' => 'post',
                            'post_status' => 'publish',
                            'posts_per_page' => 4,
                            'cat' => $term[0]
                        );
                        $list_posts = new WP_Query( $args );
                        if ( $list_posts->have_posts() ) :
                            while ( $list_posts->have_posts() ) : $list_posts->the_post();
                            $count ++;
                    ?>
                    <?php 
                        if($count == 1) : 
                    ?>
                    <div class="mc-col-12">
                        <div class="item-first-4">
                            <div class="mc-row mc-align-center">
                                <a href="<?php the_permalink(); ?>" class="mc-col-5 mc-col-sm-12">
                                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                </a>
                                <div class="mc-col-7 mc-col-sm-12">
                                    <a href="<?php echo get_category_link($term[0]); ?>" class="cate_item_sec_4">
                                        <?php echo get_cat_name( $term[0] ); ?>
                                    </a>
                                    <a href="<?php the_permalink(); ?>" class="title_item_sec_4">
                                        <?php echo get_the_title(); ?>
                                    </a>
                                    <div class="descp_post_sec_4">
                                        <?php echo get_the_excerpt($post->ID); ?>
                                    </div>
                                    <div class="author_date">
                                        <span>BY</span><span class="author">Dansolo</span><span>|</span><span><?php echo get_the_date( 'D M j' ); ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php else: ?>
                    <div class="mc-col-4 mc-col-sm-12">
                        <div class="item-second-4">
                            <div class="mc-row mc-align-center mc-dis-align">
                                <a href="<?php the_permalink(); ?>" class="mc-col-5">
                                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                </a>
                                <div class="mc-col-7">
                                    <div class="right-post-sec-4">
                                        <a href="<?php the_permalink(); ?>" class="title_item_sec_4">
                                            <?php echo get_the_title(); ?>
                                        </a>
                                        <div class="date_sec_4">
                                            <?php echo get_the_date( 'D M j' ); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
    
</section>