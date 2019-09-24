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
define( 'DB_NAME', 'wordpress' );

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
define( 'AUTH_KEY',         'tQ`.6I-Fj:<um]nZ>jonnItASpyqFL[=u88]V0*)O9~gS~wT28[Hr1=tZ9Y4N~C!' );
define( 'SECURE_AUTH_KEY',  ';3.bLi$Y]NBS1vW-@^gsfg{]&TV3R/{Wa(i|^zJjfw %NC,moI$hymi[*Qu(*^d+' );
define( 'LOGGED_IN_KEY',    '*Nrp3;/Va&s0V dsHJ/1H$8(.x)!3 O lDK]e#W{}y2{7|,D=BNuOvjL)z^m^oka' );
define( 'NONCE_KEY',        'TJ*j]cd9LMh+dw%9:ImeyI1J2,p<3.s&r [K%kpc P8q6[?`0?LKfaH_`_?jR)NC' );
define( 'AUTH_SALT',        'u{J15ipYz5wawfr}Z+Hj1mS=^Is]hEBo@NTHfP~)[>mHY|fvyk =>J58@%$jjr,$' );
define( 'SECURE_AUTH_SALT', '_qv^aZIEC>~2=Q_Q_N`tP%+=jyr;(%.&) QC]/%!+}f4<}bKTZ)gU}OhDp2^.:Co' );
define( 'LOGGED_IN_SALT',   '(N0n=#$o7<;K^> B5,tQU/D[T@a0_wQZ/,,p[:G-#nl$Ri=@0sXkWuu&.do~>Qo2' );
define( 'NONCE_SALT',       '%Xq4-@6bkwc?~SJ(I6FI7=8?Qq(3:w?bit c@CUCta,!vSwlt2r$#e{M$@yW1PXe' );

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
