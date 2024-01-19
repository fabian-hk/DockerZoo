all:
	btrbk/build.sh
	btrbk-server/build.sh
	hd-idle/build.sh
	nextcloud/build.sh

btrbk:
	btrbk/build.sh --no-cache

btrbk-server:
	btrbk-server/build.sh --no-cache

hd-idle:
	hd-idle/build.sh --no-cache

# make -B nextcloud
nextcloud:
	nextcloud/build.sh --no-cache