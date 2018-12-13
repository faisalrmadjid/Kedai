<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'kedai');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ',4V_%goVjtL+$G:`%PWjb3As)|0c#4%Xy,E!o<CMkSKZl67?2l[6/;G]gy6^*v6P');
define('SECURE_AUTH_KEY',  '4ae36a$rn^ds1{J3IPfvgw3QqqA!NWEo#zpUG2h~f%,08e7&P&1u,LBQl[nr5N0m');
define('LOGGED_IN_KEY',    'pe9>D>LxcbcsQ6v$czL(Fu4x~ M)b^E8Pbqp)9oG!2db_;T7E!)+:},`wn(1,`hu');
define('NONCE_KEY',        'Ai+v#K-N8M 8%k~0vp-qmMG#c/(7SOn|| #gVa~*X+@~;Vr<zb/5 @6P|0FM3us$');
define('AUTH_SALT',        's~!%Y!5fgv$<j!YY^`R~)a`@i6Fn1EMUS}D4nxt-^`UgNFh@F}bLi%zGPuh@4z`|');
define('SECURE_AUTH_SALT', ':d~o8N}P>|[UCE_KZ<oT)E_G=`cG*GAD~Ky,5-ZiJi&k@4b2%ZSj=83wz_q}-M`e');
define('LOGGED_IN_SALT',   '!$^mFq5/>q%&i7LVgcYf-A2]rTe1=X}^o]BEOr3AsiLOBe0BWO6OVPR<t[(-K$6u');
define('NONCE_SALT',       'BN=TV09wKI~sd|Be3T]5%M?BT[vkgA=?8IYn3G(TXU+jJChNfR,P++wHTX0Kd {&');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'Jawi_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
