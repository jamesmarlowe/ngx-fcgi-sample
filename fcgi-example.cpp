#include "fcgi_stdio.h"
#include <stdlib.h>

int main(int argc, char* argv[])
{
    int count = 0;
    while(FCGI_Accept() >= 0)
    {
        printf("Content-type: text/html\r\n"
               "\r\n"

               "<title>FastCGI Hello!</title>"
               "<h1>FastCGI Hello!</h1>"
               "Request number %d \n",
                ++count);
    }
    return 0;
}
