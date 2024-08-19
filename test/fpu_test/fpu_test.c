#define DEBUG_IF_ADDR 0x00002010
int main()
{
    volatile float a = 7.3e8;
    volatile float b = -21.3346;
    volatile float c = a/b;
    volatile float d = 10.06;
    volatile float e = c+d;
    volatile float f = b*d;

    int *addr_ptr = DEBUG_IF_ADDR;
    if(c == -34216716.0f)
    {
        if(e == -34216704.0f){
            if(f == -214.62608f){
                *addr_ptr = 1; // success
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
