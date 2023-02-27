<?php
get_header();
?>
<section class="default_single_post">
    <div class="mc-container">
        <div class="single_contain">
            <div class="mc-row mc-mg--15">
                <div class="mc-col-9 mc-pdx-15 mc-col-md-12 mc-col-sm-12">
                <?php 
                    if(have_posts()):
                        while(have_posts()) : the_post();
                    ?>
                    <div class="detail_post">
                        <div class="title_sg_post"><?php the_title(); ?></div>
                        <div class="excerpt_sg_post"><?php the_excerpt(); ?></div>
                        <div class="mc-row mc-align-center mgb-25">
                            <a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>" class="thumb-auth">
                                <?php echo get_avatar( get_the_author_meta( 'ID' ), 60 ); ?>
                            </a>
                            <div class="rg-author">
                                <div class="rg-auth-1">
                                    <a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>"><?php echo esc_attr( get_the_author() ); ?></a>
                                </div>
                                <div class="rg-auth-2">
                                    POSTED: <?php echo get_the_date(); ?>
                                </div>
                            </div>
                        </div>
                        <div class="post_thumb">
                            <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt=" <?php echo get_the_title(); ?>">
                        </div>
                    </div>
                    <?php 
                    endwhile;
                        endif;
                    ?>
                    <?php 
                        if(have_posts()):
                            while(have_posts()) : the_post();
                        ?>
                        <div class="content-single">
                            <?php the_content(); ?>
                        </div>
                       <?php 
                    endwhile;
                        endif;
                    ?> 
                </div>
                <div class="mc-col-3 mc-pdx-15 mc-col-md-12 mc-col-sm-12">
                    <div class="banner_qc_news_1">
                        <div class="stk-banenr">
                            <div class="title-post-new-mc">
                                <?php echo "Bài viết mới nhất" ?>
                            </div>
                            <?php 
                                $args = array( 
                                    'post_type'=>  'post',
                                    'post_status' => 'publish',
                                    'posts_per_page' => 1,
                                );
                                $post_one_1 = new WP_Query( $args );
                                if ( $post_one_1->have_posts() ) :
                                while ( $post_one_1->have_posts() ) : $post_one_1->the_post();
                            ?>
                            <a href="<?php the_permalink(); ?>" class="ns-first-post-c2">
                                <div class="ns-thumb-post-c2">
                                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt=" <?php echo get_the_title(); ?>">
                                </div>
                                <div class="ns-title-post-c2">
                                    <?php echo get_the_title(); ?>
                                </div>
                            </a>
                            <?php 
                                endwhile;
                                endif;
                                wp_reset_postdata();
                            ?>
                            <div class="nc-list-before-first-c2">
                                <?php 
                                    $args = array( 
                                        'post_type'=>  'post',
                                        'post_status' => 'publish',
                                        'offset' => 1, 
                                        'posts_per_page' => 4,
                                    );
                                    $post_one_1 = new WP_Query( $args );
                                    if ( $post_one_1->have_posts() ) :
                                    while ( $post_one_1->have_posts() ) : $post_one_1->the_post();
                                ?>
                                <a href="<?php the_permalink(); ?>" class="mc-row mc-mg--10">
                                    <div class="ns-thumb-post-horizontal-c2 mc-col-6 mc-pdx-10">
                                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt=" <?php echo get_the_title(); ?>">
                                    </div>
                                    <div class="ns-title-post-horizontal-c2 mc-col-6 mc-pdx-10">
                                        <?php echo wp_trim_words( get_the_title(), 14, '...' ); ?>
                                    </div>
                                </a>
                                <?php 
                                    endwhile;
                                    endif;
                                    wp_reset_postdata();
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php get_footer();?>