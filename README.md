# ngx-fcgi-sample
Example fcgi application and nginx configured to forward to it

Requisites
----------
This requires the FastCGI Developer's Kit (http://www.fastcgi.com/) and spawn-fcgi
```
sudo apt-get install libfcgi-dev spawn-fcgi
```

Building
--------
```
cd ngx-fcgi-sample
mkdir build
cd build
cmake ..
make
```

Running
-------
```
bash fastcgi-example.sh
bash restart.sh
```

Trying
------
simply curl localhost/ to see the response from the fcgi example
```
curl localhost/
```
Which should give you
```
<title>FastCGI Hello!</title><h1>FastCGI Hello!</h1>Request number 1
```

Notes
-----
* fcgi docs available at http://www.fastcgi.com/
* To return an HTTP status other than 200, add a 'Status:' header in your fcgi file

