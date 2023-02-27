<?php
get_header();
?>
<?php $author_id = get_the_author_meta('ID'); ?>
<section class="mc_author">
    <div class="mc_header_author">
        <div class="mc-container">
            <div class="mc_author_contain">
                <div class="mc-row mc-align-center">
                    <div class="left-thumb-author">
                        <?php echo get_avatar( get_the_author_meta( 'ID' ), 100 ); ?>
                    </div>
                    <div class="rg-detail-author">
                        <div class="name_author">
                            <?php echo esc_attr( get_the_author() ); ?>
                        </div>
                        <div class="desc_author">
                            <?php echo nl2br(get_the_author_meta('description')); ?>
                        </div>
                        <?php if(have_rows('list_social_of_author','user_'. $author_id)) : ?>
                        <div class="social-author">
                            <div class="mc-row">
                                <div class="txt-follow">
                                    Follow:
                                </div>
                                <?php while( have_rows('list_social_of_author','user_'. $author_id) ) : the_row(); ?>
                                <a href="<?php echo get_sub_field('link_social_author','user_'. $author_id); ?>" class="item-soc">
                                    <?php echo get_sub_field('icon_author_social','user_'. $author_id); ?>
                                </a>
                                <?php endwhile; ?>
                            </div>
                        </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <div class="mc-author-post">
        <div class="mc-container">
            <?php if (have_posts()) :  ?>
            <div class="mc-row">
                <?php while(have_posts()) : the_post();
                    $one_cate = '';
                    $link_one_cate = '';
                    $categories = get_the_category(get_the_ID());
                    foreach( $categories as $category ) {
                        $one_cate = $category->name;
                        $link_one_cate = get_category_link( $category->term_id );
                    }
                ?>
                <div class="mc-col-4 mc-col-sm-12 mc-pdx-15">
                    <div class="item-post-author">
                        <div class="item-post-author-bot">
                            <div class="thumb-item-post-author">
                                <a href="<?php the_permalink(); ?>" class="thumb-bt-item-post-author">
                                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                </a>
                                <div class="item-post-author-custom-cate">
                                    <a href="<?php echo $link_one_cate; ?>" class="cate_item_bt_item_post_author">
                                        <?php echo $one_cate; ?>
                                    </a>
                                </div>
                                
                            </div>
                            <a href="<?php the_permalink(); ?>" class="title-item-post-author">
                                <?php echo get_the_title(); ?>
                            </a>
                            <div class="the-excerpt-post-author">
                                <?php echo wp_trim_words( get_the_excerpt(), 20, '...' ); ?>
                            </div>
                            <div class="date">
                                <?php echo get_the_date( 'D M j' ); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endwhile; ?>
            </div>
            <?php else: ?>
                <div class="no_result">
                    Tác giả chưa có bài viết nào
                </div>

            <?php endif; ?>
            <div class="mc-panigation">
                <?php
                    the_posts_pagination( array(
                    'prev_text' => __( 'Trước', 'textdomain' ),
                    'next_text' => __( 'Sau', 'textdomain' ),
                    ) );
                ?>          
            </div>
        </div>
    </div>
</section>

<?php get_footer();?>