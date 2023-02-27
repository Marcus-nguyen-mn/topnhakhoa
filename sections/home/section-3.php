<section class="section_3">
<div class="shape shape-top"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none"> <path class="shape-fill" d="M421.9,6.5c22.6-2.5,51.5,0.4,75.5,5.3c23.6,4.9,70.9,23.5,100.5,35.7c75.8,32.2,133.7,44.5,192.6,49.7
 c23.6,2.1,48.7,3.5,103.4-2.5c54.7-6,106.2-25.6,106.2-25.6V0H0v30.3c0,0,72,32.6,158.4,30.5c39.2-0.7,92.8-6.7,134-22.4
 c21.2-8.1,52.2-18.2,79.7-24.2C399.3,7.9,411.6,7.5,421.9,6.5z"></path> </svg></div>
    <div class="mc-container-big">
        <div class="sec3_contain">
            <div class="heading-inner">
                <h2 class="heading-title"><?php echo get_field('title_sec3'); ?></h2>
                <div class="heading-tagline h6">
                    <?php echo get_field('sub_title_sec3'); ?>
                </div>
            </div>
            <div class="slider_post_sec_3">
                <?php 
                    $post_sec_3 = get_field('select_posts_section_3');
                    
                    if( $post_sec_3 ):
                        foreach( $post_sec_3 as $post ):
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
                <div class="slide_sec_3_item">
                    <a href="<?php echo $permalink; ?>" class="thumb_post_sec_3">
                        <img src='<?php echo get_the_post_thumbnail_url( $post->ID ) ?>' alt='<?php echo get_the_post_thumbnail_url( $post->ID ) ?>' />
                    </a>
                    <a href="<?php echo $link_one_cate; ?>" class="cate_post_sec3">
                        <?php echo $one_cate; ?>
                    </a>
                    <a href="<?php echo $permalink; ?>" class="title_post_sec_3">
                        <?php echo $title; ?>
                    </a>
                    <div class="line_sec_3">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/line-2.png" alt="Line">
                    </div>
                    <div class="author_date">
                        <span>BY</span><a href="<?php echo get_author_posts_url(get_the_author_meta( 'ID' ) ); ?>" class="author"><?php echo esc_attr( get_the_author() ); ?></a><span>|</span><span><?php echo get_the_date( 'D M j', $post->ID ); ?></span>
                    </div>
                    <div class="descp_post_sec_3">
                        <?php echo get_the_excerpt($post->ID); ?>
                    </div>
                </div>
                <?php 
                        endforeach;
                        wp_reset_postdata();
                    endif;
                    ?>
            </div>
        </div>
    </div>
    <div class="shape shape-bottom"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none"> <path class="shape-fill" d="M421.9,6.5c22.6-2.5,51.5,0.4,75.5,5.3c23.6,4.9,70.9,23.5,100.5,35.7c75.8,32.2,133.7,44.5,192.6,49.7
 c23.6,2.1,48.7,3.5,103.4-2.5c54.7-6,106.2-25.6,106.2-25.6V0H0v30.3c0,0,72,32.6,158.4,30.5c39.2-0.7,92.8-6.7,134-22.4
 c21.2-8.1,52.2-18.2,79.7-24.2C399.3,7.9,411.6,7.5,421.9,6.5z"></path> </svg></div>
</section>