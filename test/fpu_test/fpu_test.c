#define DEBUG_IF_ADDR 0x00002010
#include <math.h>
int main()
{
    volatile float a = 7.3e8;
    volatile float b = -21.3346;
    volatile float c = a/b;
    volatile float d = 10.06;
    volatile float e = c+d;
    volatile float f = b*d;
    volatile float g = d;
    volatile float h = sqrtf(g);
    volatile int i = (int)h;
    volatile float j = (float)i;
    int *addr_ptr = DEBUG_IF_ADDR;
    if(c == -34216716.0f)
    {
        if(e == -34216704.0f){
            if(f == -214.62608f){
                if(h == 3.17175031f){
                    if(i == 3){
                        if(j == 3.0f){
                            *addr_ptr = 1; // success
                        }
                        else
                        {
                            //failure at int-float conversion
                            *addr_ptr = -6;
                        }
                    }
                    else
                    {
                        //failure at float-int conversion
                        *addr_ptr = -5;
                    }
                }
                else{
                    //failure at sqrt
                    *addr_ptr = -4;
                }
            }
            else{
                //failure at multiplication
                *addr_ptr = -3;
            }
        }
        else
        {
            //failure at sum
            *addr_ptr = -2;
        }
    }
    else
    {
        //failure at division
        *addr_ptr = -1;
    }

    return 0;
}
