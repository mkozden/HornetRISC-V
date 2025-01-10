#include <string.h>
#include <math.h>
#define DEBUG_IF_ADDR 0x00008010

char *addr_ptr = (char*)DEBUG_IF_ADDR;

void div() 
{
    volatile float div_res[9];
    const volatile float a[9] = {1.0f,-1.0f,0.0f,INFINITY,0.0f,INFINITY,NAN,1.0f,NAN};
    const volatile float b[9] = {0.0f,0.0f,0.0f,INFINITY,INFINITY,0.0f,0.0f,NAN,NAN};
    const volatile float c[9] = {INFINITY,-INFINITY,NAN,NAN,0.0f,INFINITY,NAN,NAN,NAN};

    for (int i = 0; i < 9; i++)
    {
        div_res[i] = a[i] / b[i];
    }

    for (int i = 0; i < 9; i++)
    {
        if(memcmp(&div_res[i],&c[i],4) == 0) //Let's iteratively check each value, and see where it fails
        {
            //success
            *addr_ptr = 1;
        }
        else
        {
            //failure
            *addr_ptr = 0;
        }      
    }
    return;
}

void mul() 
{
    volatile float mul_res[7];
    const volatile float a[7] = {0.0f,INFINITY,1.0f,NAN,NAN,3.0f,9.0f};
    const volatile float b[7] = {INFINITY,0.0f,NAN,0.0f,NAN,9.0f,3.0f};
    const volatile float c[7] = {NAN,NAN,NAN,NAN,NAN,27.0f,27.0f};

    for (int i = 0; i < 7; i++)
    {
        mul_res[i] = a[i] * b[i];
    }
    
    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    for (int i = 0; i < 7; i++)
    {
        if(memcmp(&mul_res[i],&c[i],4) == 0) //Let's iteratively check each value, and see where it fails
        {
            //success
            *addr_ptr = 1;
        }
        else
        {
            //failure
            *addr_ptr = 0;
        }      
    }
    return;
}
void sub() 
{
    volatile float sub_res[9];
    const volatile float a[9] = {INFINITY,-INFINITY,-0.0f,NAN,0.0f,NAN,1.5f,1.0000048f,1.0f};
    const volatile float b[9] = {INFINITY,-INFINITY,-0.0f,1.0f,NAN,NAN,1.25f,1.0000024f,0.00003051758f};
    const volatile float c[9] = {NAN,NAN,+0.0f,NAN,NAN,NAN,0.25f,2.3841858E-6f,0.9999695f};

    for (int i = 0; i < 9; i++)
    {
        sub_res[i] = a[i] - b[i];
    }
    
    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    for (int i = 0; i < 9; i++)
    {
        if(memcmp(&sub_res[i],&c[i],4) == 0) //Let's iteratively check each value, and see where it fails
        {
            //success
            *addr_ptr = 1;
        }
        else
        {
            //failure
            *addr_ptr = 0;
        }      
    }
    return;
}
void add() 
{
    volatile float add_res[9];
    const volatile float a[9] = {INFINITY,-INFINITY,-0.0f,0.0f,0.0f,NAN,NAN,1.0f,2.0f};
    const volatile float b[9] = {-INFINITY,INFINITY,0.0f,-0.0f,NAN,1.0f,NAN,1.0f,1.0f};
    const volatile float c[9] = {NAN,NAN,+0.0f,0.0f,NAN,NAN,NAN,2.0f,3.0f};

    for (int i = 0; i < 9; i++)
    {
        add_res[i] = a[i] + b[i];
    }
    
    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    for (int i = 0; i < 9; i++)
    {
        if(memcmp(&add_res[i],&c[i],4) == 0) //Let's iteratively check each value, and see where it fails
        {
            //success
            *addr_ptr = 1;
        }
        else
        {
            //failure
            *addr_ptr = 0;
        }      
    }
    return;
}

void sq() 
{
    volatile float sq_res[4];
    const volatile float a[4] = {-0.0f,-2.0f,NAN,INFINITY};
    const volatile float b[4] = {-0.0f,NAN,NAN,INFINITY};
    for (int i = 0; i < 4; i++)
    {
        sq_res[i] = sqrtf(a[i]);
    }
    
    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    for (int i = 0; i < 4; i++)
    {
        if(memcmp(&sq_res[i],&b[i],4) == 0) //Let's iteratively check each value, and see where it fails
        {
            //success
            *addr_ptr = 1;
        }
        else
        {
            //failure
            *addr_ptr = 0;
        }      
    }
    return;
}

void lt() //Less than
{
    volatile int lt_res[5];
    const volatile float a[5] = {INFINITY,-INFINITY,-0.0f,0.0f,-INFINITY};
    const volatile float b[5] = {INFINITY,-INFINITY,0.0f,-0.0f,INFINITY};
    const volatile int c[5] = {0,0,0,0,1};

    for (int i = 0; i < 5; i++)
    {
        lt_res[i] = (a[i] < b[i]);
    }
    
    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    for (int i = 0; i < 5; i++)
    {
        if(memcmp(&lt_res[i],&c[i],4) == 0) //Let's iteratively check each value, and see where it fails
        {
            //success
            *addr_ptr = 1;
        }
        else
        {
            //failure
            *addr_ptr = 0;
        }      
    }
    return;
}

void lte() //Less than or equal
{
    volatile int lt_res[4];
    const volatile float a[4] = {INFINITY,-INFINITY,-0.0f,0.0f};
    const volatile float b[4] = {INFINITY,-INFINITY,0.0f,-0.0f};
    const volatile int c[4] = {1,1,1,1};

    for (int i = 0; i < 4; i++)
    {
        lt_res[i] = (a[i] <= b[i]);
    }
    
    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    for (int i = 0; i < 4; i++)
    {
        if(memcmp(&lt_res[i],&c[i],4) == 0) //Let's iteratively check each value, and see where it fails
        {
            //success
            *addr_ptr = 1;
        }
        else
        {
            //failure
            *addr_ptr = 0;
        }      
    }
    return;
}

int main(){
    *addr_ptr = 'A';
    *addr_ptr = '\n';
    add();
    *addr_ptr = 'S';
    *addr_ptr = '\n';
    sub();
    *addr_ptr = 'D';
    *addr_ptr = '\n';
    div();
    *addr_ptr = 'M';
    *addr_ptr = '\n';
    mul();
    *addr_ptr = 'Q';
    *addr_ptr = '\n';
    sq();
    *addr_ptr = 'L';
    *addr_ptr = '\n';
    lt();
    *addr_ptr = 'K';
    *addr_ptr = '\n';
    lte();
    return 0;
}