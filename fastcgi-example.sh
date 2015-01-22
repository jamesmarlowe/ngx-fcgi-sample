  ## ABSOLUTE path to the spawn-fcgi binary
  SPAWNFCGI="spawn-fcgi" 

  ## ABSOLUTE path to the Example FCGI binary
  FCGIPROGRAM="/home/ubuntu/ngx-fcgi-sample/build/fcgi_example" 

  ## bind to tcp-port on localhost
  FCGIPORT="9000" 

  ## bind to unix domain socket
  # FCGISOCKET="/tmp/fcgi.sock" 
  ## number of example-fcgi children to spawn
  EXAMPLE_FCGI_CHILDREN=10

  ## number of request server by a single example-process until
  ## it will be restarted
  EXAMPLE_FCGI_MAX_REQUESTS=1000

  ## IP adresses where Example FCGI should access server connections
  FCGI_WEB_SERVER_ADDRS="127.0.0.1" 

  # allowed environment variables separated by spaces
  ALLOWED_ENV="PATH USER" 

  ## if this script is run as root switch to the following user
  USERID=www-example
  GROUPID=www-example

  exec $SPAWNFCGI -a $FCGI_WEB_SERVER_ADDRS -p $FCGIPORT -f $FCGIPROGRAM -u $USERID -g $GROUPID
  