<?php
/**
 * The template for displaying search results pages
 *
 */

get_header();
?>
<section class="mc-search-page">
    <div class="mc-search-page-contain">
        <div class="search-page-head">
            <div class="bg-head-search">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/city-bg.png" class="search-head" alt="Search Header">
                <div class="content-on-search-head">
                    <div class="title-search-head">
                        <?php 
                            $allsearch =new WP_Query("s=$s&showposts=-1");
                            printf( __( 'Search Results For: %s'), '<span>' . esc_html( get_search_query() ));
                        ?>
                        
                    </div>
                    <div class="number-result-search">
                            <?php echo "Showing ". $allsearch ->found_posts. " results for your search"; ?>
                        </div>
                    <div class="form-search">
                        <form role="search" method="get" class="search_form" action="<?php echo esc_url( home_url( '/' ) ); ?>">                                 		
                            <div class="search_form_page_wrap">
                                <div class="parents-search-inp">
                                    <div class="icon-search"><i class="fa-solid fa-magnifying-glass"></i></div>
                                    <input type="text" id="search_field_2" class="search-field search_field_form_page search_field_form_page_search_page_only" placeholder="Điền từ khóa" value="<?php echo get_search_query(); ?>" name="s" />
                                    <button type="submit" class="search_submit_page search_submit_page_search_page">Search</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="mc-container">
            <div class="search-page-results">
                <?php if ( have_posts() ) : ?>
                    <div class="mc-row mc-mg--15">
                        <?php while(have_posts()) : the_post(); 
                        if (get_post_type() === 'post'):
                            $one_cate = '';
                            $link_one_cate = '';
                            $categories = get_the_category(get_the_ID());
                            foreach( $categories as $category ) {
                                $one_cate = $category->name;
                                $link_one_cate = get_category_link( $category->term_id );
                            }
                        ?>
                        <div class="mc-col-3 mc-col-sm-12 mc-pdx-15">
                            <div class="item-search">
                                <div class="item-search-bot">
                                    <div class="thumb-item-search">
                                        <a href="<?php the_permalink(); ?>" class="thumb-bt-item-search">
                                            <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php echo get_the_post_thumbnail_url(); ?>" />
                                        </a>
                                        <div class="item-search-custom-cate">
                                            <a href="<?php echo $link_one_cate; ?>" class="cate_item_bt_item_search">
                                                <?php echo $one_cate; ?>
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <a href="<?php the_permalink(); ?>" class="title-item-search">
                                        <?php echo get_the_title(); ?>
                                    </a>
                                    <div class="date">
                                        <?php echo get_the_date( 'D M j' ); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endif;endwhile; ?>
                    </div>
                    <div class="mc-panigation">
                        <?php
                            the_posts_pagination( array(
                            'prev_text' => __( 'Trước', 'textdomain' ),
                            'next_text' => __( 'Sau', 'textdomain' ),
                            ) );
                            ?>
                    </div>
                <?php else: ?>
                    <div class="not-found-search">
                        <?php echo "Không có kết quả cho từ khóa bạn tìm kiếm" ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>

<?php
get_footer();
 ?>