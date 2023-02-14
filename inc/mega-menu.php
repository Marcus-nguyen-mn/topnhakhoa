<?php
add_filter('walker_nav_menu_start_el', 'append_da_damn_hover_popup', 15, 2);
function append_da_damn_hover_popup($item_output, $item) {
    $check_mega_1 = get_field('mega_1', $item);
    $check_mega_2 = get_field('mega_2', $item);
    if($check_mega_1 == true){
        // if there's no content, just return the <a> directly
        $list_posts = get_field('select_post_show_in_menu', $item);
        if (! get_field('select_post_show_in_menu', $item)) {
            return $item_output;
        }
        if( $list_posts ): 
            $mega = '<div class="mega-popup mc-fade-in-bottom">';
            $mega .= '<div class="mega-name-pop-and-show-more">';
            if (get_field('name_menu_item', $item)) {
                $mega .= '<div class="mega-name-pop">';
                $mega .= get_field('name_menu_item', $item);
                $mega .= '</div>';
            }
            if (get_field('name_menu_item', $item)) {
                $mega .= '<a href='.get_field('link_show_more', $item).' class="mega-show-more">';
                $mega .= 'Show more';
                $mega .= '</a>';
            }
            $mega .= '</div>';
            $mega .= '<div class="mega-row">';
            foreach( $list_posts as $featured_post ): 
                $permalink = get_permalink( $featured_post->ID );
                $title = get_the_title( $featured_post->ID );
                $url_thumb_post = get_the_post_thumbnail_url( $featured_post->ID );
                $date_post = get_the_date( 'D M j', $featured_post->ID, );
                
                if( $title ) {
                    $mega .= '<a href='. $permalink.' class="mega-item">';
                    $mega .= '<div class="mega-item-thumb">';
                    $mega .= '<img src='. $url_thumb_post.' alt='. $url_thumb_post.' />';
                    $mega .= '</div>';
                    $mega .= '<div class="mega-item-title">';
                    $mega .= $title;
                    $mega .= '</div>';
                    $mega .= '<div class="mega-item-date">';
                    $mega .= $date_post;
                    $mega .= '</div>';
                    $mega .= '</a>';
                }
            endforeach;
            $mega .= '</div>';
            $mega .= '</div>';
        endif;  
        return $item_output.$mega;
    }
    return $item_output;
    
}