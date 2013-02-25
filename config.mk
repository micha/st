# st version
VERSION = 0.3

# Customize below to fit your system

# paths
PREFIX = /home/micha/.local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# includes and libs
INCS = -I. -I/usr/include -I${X11INC} \
       $(shell pkg-config --cflags fontconfig) \
       $(shell pkg-config --cflags freetype2)
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 -lutil -lXext -lXft \
       $(shell pkg-config --libs fontconfig)  \
       $(shell pkg-config --libs freetype2)

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
CFLAGS += -g -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS += -g ${LIBS}

# compiler and linker
CC ?= cc

