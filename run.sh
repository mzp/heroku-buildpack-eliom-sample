export LD_PRELOAD="/app/vendor/pcre/lib/libpcre.so.1 /app/vendor/gdbm/lib/libgdbm_compat.so.4"

sed "s/HEROKU_PORT/$PORT/" heroku.conf > ./tmp/heroku.conf
/app/vendor/opam-lib/system/bin/ocsigenserver.opt -c ./tmp/heroku.conf -v
