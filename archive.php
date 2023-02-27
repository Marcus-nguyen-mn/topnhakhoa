<?php
get_header();
?>
<section class="mc_category">
    <div class="mc-container">
        <div class="mc-cate-contain">
            <div class="cat-grid">
                <?php $count=1; if (have_posts()) : while(have_posts()) : the_post(); ?>
                    <?php if($count <= 5) : ?>
                    <div class="cat-first-item">
                        <a href="<?php the_permalink(); ?>" class="thumb-cat-first">
                            <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt=" <?php echo get_the_title(); ?>">
                        </a>
                        <div class="st-group-cate-info">
                            <?php
                                $category_detail=get_the_category(get_the_ID());
                                $count_cat = 0;
                                foreach($category_detail as $cd){ $count_cat++;
                                if($count_cat <= 1){
                                ?>
                            <a href="<?php echo get_category_link( $cd->term_id ); ?>" class="cat-name">
                                <?php echo $cd->name; ?>
                            </a>
                            <?php 
                                }
                            }
                            ?>
                            <a href="<?php the_permalink(); ?>" class="title-post-sec-cat"><?php the_title(); ?></a>
                            <div class="author_date">
                                <span>BY</span><a href="<?php echo get_author_posts_url(get_the_author_meta( 'ID' ) ); ?>" class="author"><?php echo esc_attr( get_the_author() ); ?></a><span>|</span><span><?php echo get_the_date( 'D M j' ); ?></span>
                            </div>
                        </div>
                        
                    </div>
                    <?php endif; ?>
                <?php $count++;endwhile; endif; ?>
            </div>
            <div class="text-center-cat">
                You can read everything you want in this page !
            </div>
            <div class="mc-custome-title">
                <div class="mc-main-title">
                    <?php echo single_cat_title(); ?>
                </div>
                <div class="mc-sub-title">
                    Latest Blog
                </div>
            </div>
            <div class="mc-row mc-mg--15">
            <?php $count_2=1; if (have_posts()) : while(have_posts()) : the_post(); ?>
                    <?php if($count_2 > 5) : ?>
                <div class="mc-col-6 mc-pdx-15 mc-col-md-12">
                    <div class="item-sec-cat">
                        <div class="mc-row mc-mg--15">
                            <div class="mc-col-7 oder-2 mc-col-sm-12 mc-pdx-15">
                                <div class="mc-list-sec-cat">
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
                                <a href="<?php the_permalink(); ?>" class="title_item_sec_cat">
                                    <?php echo get_the_title(); ?>
                                </a>
                                <div class="excerpt-cat-sec">
                                    <?php the_excerpt(); ?>
                                </div>
                                <div class="author_date">
                                    <span>BY</span><a href="<?php echo get_author_posts_url(get_the_author_meta( 'ID' ) ); ?>" class="author"><?php echo esc_attr( get_the_author() ); ?></a><span>|</span><span><?php echo get_the_date( 'D M j' ); ?></span>
                                </div>
                            </div>
                            <div class="mc-col-5 oder-1 mc-col-sm-12 mc-pdx-15">
                                <a href="<?php the_permalink(); ?>" class="img-cat-sec-2">
                                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
            <?php $count_2++;endwhile; endif; ?>
            </div>  
        </div>
        <div class="mc-panigation">
            <?php
                the_posts_pagination( array(
                'prev_text' => __( 'Trước', 'textdomain' ),
                'next_text' => __( 'Sau', 'textdomain' ),
                ) );
            ?>          
        </div>
        
    </div>
    
</section>

<?php get_footer();?>
