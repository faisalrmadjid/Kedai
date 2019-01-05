<?php
/**
 * Tyche functions and definitions.
 *
 * @link    https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Tyche
 */

/**
 * Start Tyche theme framework
 */
require_once 'inc/class-tyche-autoloader.php';
$tyche = new Tyche();
function wpb_catlist_desc(){
$args = array(
   'number'     => $number,
   'orderby'    => 'slug',
   'order'      => 'ASC',
   'hide_empty' => $hide_empty,
   'include'    => array(18,19,20),//array ganti jadi $Ids jika ingin semuanya
);
$product_categories = get_terms( 'product_cat', $args );
// Déterminer le nombre de catégories
$count = count($product_categories);
if ( $count > 0 ){ // S'il y a au moins une catégorie
echo '<style>
#buttonsaya {
  display: inline-block;
  border-radius: 4px;
  background-color: yellow;
  border: none;
  color: black;
  opacity:0.7;
  text-align: center;
  font-size: 15px;
  padding: 15px;

  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
#buttonsaya:hover {
opacity: 1;
}


</style> <div class="col-sm-12">';
$i=5;
    foreach ( $product_categories as $product_category ) {
        if($i%4==0){
	       
	        echo '<div class="row">';
	    
	    }
        // ambilthumbnail
        $thumbnail_id = get_woocommerce_term_meta( $product_category->term_id, 'thumbnail_id', true );
        // ambil thumbnl
        $thumbnail_url = wp_get_attachment_thumb_url( $thumbnail_id );
       	echo 
         '
                         <div class="col-sm-4" style="height:400px; text-align:center; background-color: #f2f2f2;" >
                           
                            
                             <div class="row" > 
                               <img src="'.$thumbnail_url.'" />
                             </div>
                             
                             <div class="row" > 
                               <h2><strong>' . $product_category->name . '</strong></h2>
                             </div>
                             
                             <div class="row" style="margin:2px;">   
                               <p>'.$product_category->description.'</p>  
                             </div>
                             
                             <div class="row" > 
                               <a id="buttonsaya"href="' . get_term_link( $product_category ) . '">Lihat Menu</a>'.$i.'
                             </div>
				            
				           
				        </div>';
    	
	        if($i%4==0){
	      echo '</div>';
	        }
	    
        $i++;
    }
    echo '</div>';
}
}
add_shortcode('wpb_categories', 'wpb_catlist_desc');