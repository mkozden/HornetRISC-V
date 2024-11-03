#define DEBUG_IF_ADDR 0x00008010
#include <math.h>
int main() {
    volatile float a = 7.3e8f / -21.3346f;  // division
    volatile float b = a + 10.06f;         // sum
    volatile float c = -21.3346f * 10.06f;  // multiplication
    volatile float d = sqrtf(10.06f);      // sqrt
    volatile int e = (int)d;              // float-to-int conversion
    volatile float f = (float)e;          // int-to-float conversion
    // Pointer to address for result reporting
    char *addr_ptr = (char*)DEBUG_IF_ADDR;
    if (a == -34216716.0f && b == -34216704.0f && c == -214.62608f &&
        d == 3.17175031f && e == 3 && f == 3.0f) {
        *addr_ptr = 1; // success
    }
    else if (a != -34216716.0f) {
        *addr_ptr = 'd'; // failure at division
    } 
    else if (b != -34216704.0f) {
        *addr_ptr = 's'; // failure at sum
    } 
    else if (c != -214.62608f) {
        *addr_ptr = 'm'; // failure at multiplication
    } 
    else if (d != 3.17175031f) {
        *addr_ptr = 'q'; // failure at sqrt
    } 
    else if (e != 3) {
        *addr_ptr = 'r'; // failure at float-int conversion
    } 
    else {
        *addr_ptr = 'c'; // failure at int-float conversion
    }
    return 0;
}