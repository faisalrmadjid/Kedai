<?php

/*
Plugin Name: Woo Tabbed Category Product Listing
Plugin URI: https://www.quantumcloud.com/products/
Description: WooCommerce addon to display Category based Product Listing in tab format on any page with a short code.
Author: QuantumCloud
Author URI: https://www.quantumcloud.com/
Version: 1.8.0
License: GPL2
*/


if (!defined('WPINC')) {
    die;
}

define('WOO_PRODUCT_TAB_VERSION', 2.2);

Class Woo_Tab_Product_Category_List
{

    private $id = 'woo-tab';
    private static $instance;

    public static function get_instance()
    {
        if (!self::$instance) {
            self::$instance = new self();
            self::$instance->init();
        }

    }


    public function admin_page()
    {
        $action = 'admin.php?page=woo-tab';

        ?>

        <form action="<?php echo esc_attr($action); ?>" method="POST" enctype="multipart/form-data">
            <div class="qc_woo_free_admin">

                <!--            <a class="up_pro" style="text-decoration: none;" target="_blank"
                           href="https://www.quantumcloud.com/products/woo-tabbed-category-product-listing/"><h3
                                    style="font-weight: bold; color: #22A7F0;">Upgrade to pro</h3></a>-->

                <h1>Woo Tabbed Category Product Listing Settings</h1>
                <div class="updated notice">
                    <p>Use the shortcode <code>[wtcpl-product-cat]</code> inside any WordPress post or page to show
                        category wise
                        WooCommerce product listing in tabbed format.</p>
                </div>
                <div class="qc_woo_free_admin_left">
                    <label for="product_number">Product in each category</label>
                    <input type="text" name="product_number" id="product_number"
                           value="<?php echo get_option('product_number'); ?>"/>
                    <br>
                    <p class="qc-opt-dcs-font">You can truncate category name by limiting number of letters to
                        display </p>
                    <input type="number" name="max_char_per_cat" value="<?php echo get_option('max_char_per_cat'); ?>">
                    <br>
                    <p>Number of column in each category</p>
                    <input type="text" name="column_number" id="product_number"
                           value="<?php echo get_option('column_number'); ?>"/>
                    <br>

                    <p>Sort products by</p>
                    <ul class="radio-list">
                        <li>
                            <input type="radio"
                                   name="order_product_by" <?php echo(get_option('order_product_by') == 'ASC' ? 'checked' : ''); ?>
                                   value="ASC">
                            Ascending
                        </li>
                        <li>
                            <input type="radio"
                                   name="order_product_by" <?php echo(get_option('order_product_by') == 'DESC' ? 'checked' : ''); ?>
                                   value="DESC">
                            Descending
                        </li>
                    </ul>
                    <br>
                    <p class="qc-opt-dcs-font">You can paste or write your custom css here.</p>
                    <textarea name="custom_global_css"
                              class="form-control custom-global-css"
                              cols=""
                              rows="15"><?php echo get_option('custom_global_css'); ?></textarea>
                    <br>
                    <?php wp_nonce_field('woo-tab'); ?>
                    <div class="admin_cus_btn1">
                        <input type="submit" class="btn btn-primary submit-button" name="submit"
                               id="submit" value="<?php _e('Save Settings', 'woo-tab'); ?>"/>
                    </div>
                </div>
                <div class="qc_woo_free_admin_right">
                    <h2>Upgrade to Pro</h2>
                    <ul>
                        <li>11 Modern Design Templates</li>
                        <li>AJAX Load More and Add to Cart</li>
                        <li>Collapsible Category Links Sidebar Widget</li>
                        <li>Category wise Sale/Featured Products Display</li>
                        <li>Tabbed, Accordion and Carousel modes!</li>
                        <li>Quick View product Details in Modal</li>
                        <li>Fixed Position Category Filters</li>
                        <li>Color Customization Options</li>
                        <li>Carousel Scroll or Stack Mode for Category Filters</li>
                        <li>Front End Sorting Drop Down</li>
   

                    </ul>
                    <a href="https://www.quantumcloud.com/products/woo-tabbed-category-product-listing/" target="_blank" class="upgrade_btn">Upgrade Now! </a>
                </div>


                <div class="qc_woo_free_admin_right copy_right_box">
                    Check Out Our <a href="https://www.quantumcloud.com/products/woocommerce-chatbot-woowbot/" target="_blank">ChatBot for WooCommerce! </a> <br> View More <a href="https://www.quantumcloud.com/products/" target="_blank">Innovative Products</a> from QuantumCloud. <br><br>
                </div>

                <div class="qc_woo_free_admin_right copy_right_box">

                    Woo Tabbed was developed by Web Design Company - <a href="https://www.quantumcloud.com/"
                    target="_blank">QuantumCloud</a>. We provide all kinds of <a href="https://www.quantumcloud.com/services/" target="_blank">Custom WordPress
                        Development services</a>.
                </div>



                <div class="clear" style="clear:both;"></div>
            </div>
        </form>
    <?php }


    public function admin_menu()
    {

        add_submenu_page('woocommerce',
            __('Woo Tabbed', 'woo-tab'),
            __('Woo Tabbed', 'woo-tab'),
            'manage_woocommerce',
            $this->id,
            array($this, 'admin_page'));

    }


    function woo_tab_save_options()
    {


        global $woocommerce;
        if (isset($_POST['_wpnonce']) && $_POST['_wpnonce']) {


            wp_verify_nonce($_POST['_wpnonce'], 'woo-tab');


            // Check if the form is submitted or not

            if (isset($_POST['submit'])) {
                $product_number = sanitize_text_field($_POST['product_number']);
                $max_char_per_cat = sanitize_text_field($_POST['max_char_per_cat']);
                $custom_global_css = $_POST['custom_global_css'];
                $column_number = $_POST['column_number'];
                $order_product_by = $_POST['order_product_by'];


                update_option('product_number', $product_number);
                update_option('max_char_per_cat', $max_char_per_cat);
                update_option('custom_global_css', $custom_global_css);
                update_option('column_number', $column_number);
                update_option('order_product_by', $order_product_by);

            }
        }
    }


    public function init()
    {

        include_once 'class-qc-free-plugin-upgrade-notice.php';

        add_action('admin_menu', array($this, 'admin_menu'));

        // Check if WooCommerce is active, and is required WooCommerce version.
        if (!class_exists('WooCommerce') || version_compare(get_option('woocommerce_db_version'), WOO_PRODUCT_TAB_VERSION, '<')) {
            add_action('admin_notices', array($this, 'woocommerce_inactive_notice'));
            return;
        }


        if ((!empty($_GET["page"])) && ($_GET["page"] == "woo-tab")) {
            add_action('admin_init', array($this, 'woo_tab_save_options'));
        }


    }


    /**
     * Display Notifications on specific criteria.
     *
     * @since    2.14
     */
    public static function woocommerce_inactive_notice()
    {
        if (current_user_can('activate_plugins')) :
            if (!class_exists('WooCommerce')) :
                deactivate_plugins(plugin_basename(__FILE__));
                //wp_die('You need to activate WooCommerce first.');
                ?>
                <style>
                    .updated {
                        display: none;
                    }
                </style>
                <div id="message" class="error">
                    <p>
                        <?php
                        printf(
                            __('%sWoo Tabbed Category Product Listing REQUIRES WooCommerce%s %sWooCommerce%s must be active for Woo Tabbed Category Product Listing to work. Please install & activate WooCommerce.', 'qcld_express_shop'),
                            '<strong>',
                            '</strong><br>',
                            '<a href="http://wordpress.org/extend/plugins/woocommerce/" target="_blank" >',
                            '</a>'
                        );
                        ?>
                    </p>
                </div>
                <?php
            elseif (version_compare(get_option('woocommerce_db_version'), WOO_PRODUCT_TAB_VERSION, '<')) :
                ?>
                <div id="message" class="error">
                    <p>
                        <?php
                        printf(
                            __('%sWoo Tabbed Category Product Listing is inactive%s This version of Woo Tabbed Category Product Listing requires WooCommerce %s or newer. For more information about our WooCommerce version support %sclick here%s.', 'qcld_express_shop'),
                            '<strong>',
                            '</strong><br>',
                            WOO_PRODUCT_TAB_VERSION
                        );
                        ?>
                    </p>
                    <div style="clear:both;"></div>
                </div>
                <?php
            endif;
        endif;
    }
}


if (!function_exists('init_woo_tab_cat_list')) {
    function init_woo_tab_cat_list()
    {

        global $woo_tab_cat_list;

        $woo_tab_cat_list = Woo_Tab_Product_Category_List::get_instance();
    }
}


add_action('plugins_loaded', 'init_woo_tab_cat_list');

/**
 * Register the shortcode
 */

add_shortcode('wtcpl-product-cat', 'wtcpl_load_products');


/**
 * Check first if WooCommerce is activated or not
 */

// Plugin Code Below

require_once(plugin_dir_path(__FILE__) . 'class-woo-tabbed-category-product-listing.php');

function woo_tabbed_category_start()
{
    $tabbed_category = new Woo_Tabbled_Categoty();
    $tabbed_category->initialize();
}

woo_tabbed_category_start();


/**
 * Loading the plugin specific javascript files.
 */

add_action('init', 'wtcpl_plugin_scripts');
add_action('init', 'wtcpl_scroll_to_scripts');
add_action('wp_enqueue_scripts', 'wtcpl_plugin_styles');


function wtcpl_plugin_scripts()
{
    wp_enqueue_script('wtcpl-product-cat-js', plugins_url('/js/wtcpl-scripts.js', __FILE__), array('jquery'));


}

function wtcpl_scroll_to_scripts()
{

    wp_enqueue_script('wtcpl-scroll-to-js', plugins_url('/js/jquery.scrollTo-1.4.3.1-min.js', __FILE__), array('jquery'));
}


/**
 * Loading the plugin specific stylesheet files.
 */

function wtcpl_plugin_styles()
{
    wp_register_style('wtcpl_plugin_style', plugin_dir_url(__FILE__) . 'css/wtcpl-styles.css');
    wp_enqueue_style('wtcpl_plugin_style');

}


/**
 * The wtcpl_load_products() body
 */

function wtcpl_load_products()
{

    if (!is_admin()) {
        ob_start();
        $product_number = get_option('product_number');
        $column_number = get_option('column_number');
        ?>
        <div class="wtcpl_container">
            <div id="nav-holder">
                <div class="wtcpl_category_nav" id="wtcpl_tabs">
                    <?php
                    $args = array(
                        'number' => '',
                        'hide_empty' => 1,
                        'include'    => array(18,19,20), //array id category
                    );

                    $product_categories = get_terms('product_cat', $args); ?>
                    <ul>
                        <?php
                        $i = 0;
                        foreach ($product_categories as $cat) {
                        // ambilthumbnail
        $thumbnail_id = get_woocommerce_term_meta( $cat->term_id, 'thumbnail_id', true );
        // ambil thumbnl
        $thumbnail_url = wp_get_attachment_thumb_url( $thumbnail_id );    ?>
                            <li><a id="<?php echo $cat->slug; ?>"
                                   class="product-<?php echo $cat->slug; ?><?php if ($i == 0) {
                                       echo " active";
                                   } ?>"
                                                    
                             
                                   data-name="<?php echo $cat->name; ?>"
                                   href="#">
                            <img src=<?= $thumbnail_url; ?> />
                            <br>
                            
                            <?php echo substr($cat->name, 0, get_option('max_char_per_cat')); ?></a>
                            </li>
                            <?php
                            $i++;
                        }
                        ?>
                    </ul>
                    <!--   <div class="clear"></div>-->
                </div>
            </div>
            <div class="product_content" id="wtcpl_tabs_container">
                <?php
                $i = 0;
                foreach ($product_categories as $cat) {
                    ?>
                    <div class="each_cat<?php if ($i == 0) {
                        echo " active";
                    } ?>" id="product-<?php echo $cat->slug; ?>">
                    <center>   
                        <p><?=$cat->description;?></p>  
                    </center>
                  
                        <?php
                        echo do_shortcode('[product_category category="' . $cat->slug . '" per_page=' . $product_number . '  columns=' . $column_number . ' orderby="price" order="' . get_option('order_product_by') . '"]');
                        ?>
                    </div>
                    <?php $i++;
                }

                return ob_get_clean();

                ?>
            </div>
        </div>
        <?php
    }
}


function plugin_settings_page()
{
    ?>
    <?php
}


add_action('wp_footer', 'woo_tab_load_footer_html');


// Override Global Stylesheet from admin settings.

function woo_tab_load_footer_html()
{
    ?>
    <style>
        <?php if(get_option('custom_global_css')!=''){echo get_option('custom_global_css');}?>
    </style>
<?php }


register_activation_hook(__FILE__, 'woo_tab_demo_content');
function woo_tab_demo_content()
{

    update_option('product_number', 20);
    update_option('max_char_per_cat', 20);
    update_option('column_number', 4);
    update_option('order_product_by', 'ASC');


}

























