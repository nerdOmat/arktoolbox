/* Name of package */
#cmakedefine PACKAGE "${APPLICATION_NAME}"

/* Version number of package */
#cmakedefine VERSION "${APPLICATION_VERSION}"

#cmakedefine LOCALEDIR "${LOCALE_INSTALL_DIR}"
#cmakedefine DATADIR "${DATADIR}"
#cmakedefine LIBDIR "${LIBDIR}"
#cmakedefine PLUGINDIR "${PLUGINDIR}"
#cmakedefine SYSCONFDIR "${SYSCONFDIR}"
#cmakedefine BINARYDIR "${BINARYDIR}"
#cmakedefine SOURCEDIR "${SOURCEDIR}"
#cmakedefine JSBSIM_DATA_DIR "${JSBSIM_DATA_DIR}"
#cmakedefine ARKMATH_DATA_DIR "${ARKMATH_DATA_DIR}"
#cmakedefine ARKOSG_DATA_DIR "${ARKOSG_DATA_DIR}"
#cmakedefine ARKHANGAR_DATA_DIR "${ARKHANGAR_DATA_DIR}"

/************************** HEADER FILES *************************/


/* Define to 1 if you have the <termios.h> header file. */
#cmakedefine HAVE_TERMIOS_H 1

/* Define to 1 if you have the <pthread.h> header file. */
#cmakedefine HAVE_PTHREAD_H 1


/*************************** FUNCTIONS ***************************/

/* Define to 1 if you have the `snprintf' function. */
#cmakedefine HAVE_SNPRINTF 1

/*************************** LIBRARIES ***************************/

/* Define to 1 if you have the `pthread' library (-lpthread). */
#cmakedefine HAVE_PTHREAD 1


/**************************** OPTIONS ****************************/

#cmakedefine WITH_ARKOSG "${WITH_ARKOSG}"
#cmakedefine WITH_LAPACK "${WITH_LAPACK}"

/*************************** ENDIAN *****************************/

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#cmakedefine WORDS_BIGENDIAN 1
