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
define( 'DB_NAME', 'orlandowebdb' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '!_Ew?xqfFSYO5I([_JEMePV*[`AijkS`$Fj%ip*HBZO#U=)o;x#L*5a0]:%IpYuc' );
define( 'SECURE_AUTH_KEY',  'UIE -kQ *.Z=:e:o4o$k1P{aDD%@C<^mI[<F6F+bU<XdOU>BS$Fzpwxp b^ETV]A' );
define( 'LOGGED_IN_KEY',    'BRHSgxI;rM;9N-U)ay(cs>Mdl&%R:yrt+lN$z;25IwN67Mv:?0tF I.o/6eq=nVG' );
define( 'NONCE_KEY',        'rh$^U.OiWwB@)`(|;a`+1&iv-6vYh,*.y7|G}!O,y?HO0p$VW6-9xW<c.<CtAn}c' );
define( 'AUTH_SALT',        'O f`9-yy[=<!!+f9I?1:#9*)J$+fRJ:11prf#9EGaXms=o!$sy9v%shNP47_Kr&-' );
define( 'SECURE_AUTH_SALT', 'f{04>[h=u[79}@Ol1cfTJ+3`M[@L9|(Pq=}(AN)]9o-;Lfruw@>IJoylscNy.0cT' );
define( 'LOGGED_IN_SALT',   'mzq#~Z9ST80&T|2t%jph!80~b91n&(]b[rbg5Lx^4]9V5:gz^&wWh.]h{C(<c)fE' );
define( 'NONCE_SALT',       '_p7;a<=(t%(YNlhMLrL~MR&Q>nfVf`xdv(P{(Ip!%T7_IRu<>!K8t6#k#7%r5r]1' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
