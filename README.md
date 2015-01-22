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
