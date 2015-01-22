  ## ABSOLUTE path to the spawn-fcgi binary
  SPAWNFCGI="spawn-fcgi" 

  ## ABSOLUTE path to the Example FCGI binary
  FCGIPROGRAM="/home/ubuntu/ngx-fcgi-sample/build/fcgi_example" 

  ## bind to tcp-port on localhost (use -p)
  FCGIPORT="9000" 

  ## bind to unix domain socket (use -s)
  # FCGISOCKET="/tmp/fcgi.sock" 
  
  ## number of example-fcgi children to spawn
  EXAMPLE_FCGI_CHILDREN=10

  ## IP adresses where Example FCGI should access server connections
  FCGI_WEB_SERVER_ADDRS="127.0.0.1" 

  # allowed environment variables separated by spaces
  ALLOWED_ENV="PATH USER" 

  ## if this script is run as root switch to the following user
  USERID=www-example
  GROUPID=www-example

  exec $SPAWNFCGI -a $FCGI_WEB_SERVER_ADDRS -p $FCGIPORT -F $EXAMPLE_FCGI_CHILDREN -f $FCGIPROGRAM -u $USERID -g $GROUPID
  