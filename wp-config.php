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
define( 'DB_NAME', 'dc_diacritica' );

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
define( 'AUTH_KEY',         '8PuC*gCvXrVRymbT4@3go,+$Llw/gytJB1@,95/Po|M!fi+(g[D8JH2 D =dlpYT' );
define( 'SECURE_AUTH_KEY',  '`|;dsg>OUo02*tjM;ip_f^*n:qq6M(W|=a<WdGE0h_O:?cZL`fXVspb+zI+.rE*{' );
define( 'LOGGED_IN_KEY',    'vNx$YAIX@K>axb)#[w`GZ3mjwxi@G<Rm0tPkj`P_Ey<QM{]5=F%dh;3OJ|~JTJu`' );
define( 'NONCE_KEY',        'S!a$ZdDeJ33,K;&nB*TcWE8T*~CeD!0/|.W86<+k{!Pc@y8/H5/SvlJlP@r^$0lF' );
define( 'AUTH_SALT',        '@_wBZ,H=B#U]7`|-#)MBPrvpE+x3S&(I%XtG(U!L-BK)b:L#{?E.xtJeYm%?V*5!' );
define( 'SECURE_AUTH_SALT', '~6H1Zv-#`T`-yPLr0ChRM$?}e3e;!^{LF$7)w9_Qir5&a;E|,)AgJ1sx!c6h:ofL' );
define( 'LOGGED_IN_SALT',   '(MUfy1V8)>+V<o|Bss7^85y1~,N[1FF=uZVyupoU@uq:*+$~O.|g&oyOph+pTc h' );
define( 'NONCE_SALT',       'T}}fjl{@bV)BGl74.eoC-<bI:dH+M(KLIRq-CsmJ@qxk%PHvivNfx}erRrYno_F/' );

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
