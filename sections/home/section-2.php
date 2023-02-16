<section class="section_2">
    <div class="mc-container">
        <div class="section_2_contain">
            <div class="sec_2_post_list">
                <div class="mc-row mc-mg--15">
                    <?php 
                        $post_sec_2 = get_field('select_post_sec_2');
                        
                        if( $post_sec_2 ):
                            foreach( $post_sec_2 as $post ):
                                $permalink = get_permalink( $post->ID );
                                $title = get_the_title( $post->ID );
                                $one_cate = '';
                                $link_one_cate = '';
                                $categories = get_the_category($post->ID);
                                foreach( $categories as $category ) {
                                    $one_cate = $category->name;
                                    $link_one_cate = get_category_link( $category->term_id );
                                }
                    ?>
                    <div class="mc-col-4 mc-col-sm-12 mc-pdx-15 mgb-sm-10">
                        <div class="item_sec_2">
                            <div class="mc-col-sm-8">
                                <a href="<?php echo $link_one_cate; ?>" class="cate_item_sec_2">
                                    <?php echo $one_cate; ?>
                                </a>
                                <a href="<?php echo $permalink; ?>" class="title_item_sec_2">
                                    <?php echo $title; ?>
                                </a>
                                <div class="line-2">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/line-2.png" alt="Line">
                                </div>
                                <div class="date_item_sec_2">
                                    <?php echo get_the_date( 'D M j', $post->ID ); ?>
                                </div>
                            </div>
                            <div class="mc-col-sm-4">
                                <a href="<?php echo $permalink; ?>" class="thumb_sec_2">
                                    <img src='<?php echo get_the_post_thumbnail_url( $post->ID ) ?>' alt='<?php echo get_the_post_thumbnail_url( $post->ID ) ?>' />
                                </a>
                            </div>
                            
                            
                        </div>
                    </div>
                    <?php 
                            endforeach;
                            wp_reset_postdata();
                        endif;
                    ?>
                </div>
            </div>
            <div class="line-3">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/line-3.png" alt="Line">
            </div>
            <div class="sec_2_cat_list">
                <div class="mc-row mc-mg--5">
                    <div class="mc-col-2 mc-col-lg-12 mc-col-sm-12 mc-pdx-5">
                        <div class="title_list_cate">
                            <div class="small_title_cate">
                                <?php echo get_field('title_left_small_sec_2'); ?>
                            </div>  
                            <div class="big_title_cate">
                                <?php echo get_field('title_left_big_sec_2'); ?>
                            </div>
                        </div>
                    </div>
                    <?php 
                        $list_categories = get_categories( array(
                            'orderby' => 'name',
                            'parent'  => 0
                        ) );
                        
                        foreach ( $list_categories as $category ) {
                    ?>
                    <div class="mc-col-2 mc-col-cs-size-20 mc-col-sm-12 mc-pdx-5">
                        <a href="<?php echo get_category_link( $category->term_id ) ?>" class="item_cate">
                            <img src="<?php echo get_field('thumb_category',$category); ?>" alt="<?php echo get_field('thumb_category',$category); ?>" />
                            <div class="item_name_cate">
                                <?php echo $category->name; ?>
                            </div>
                        </a>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>