/*
#define DEBUG_IF_ADDR 0x00008010

int main() {
    // Variables for integer addition
    int a = 0;
    int b = 1;
    int c = 2;
    int d = 3;
    int e = 4;
    int result1 = 0;
    int result2 = 0;
    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    // Variables for floating-point fused multiply-add
    float f1 = 1.5f;
    float f2 = 2.0f;
    float f3 = 3.0f;
    float fmadd_result = 0.0f;

    // Perform 5 integer additions
    asm volatile (
        "add %0, %1, %2\n" // result1 = a + b
        "add %0, %0, %3\n" // result1 = result1 + c
        "add %0, %0, %4\n" // result1 = result1 + d
        "add %0, %0, %5\n" // result1 = result1 + e
        : "=r" (result1) // Output operand
        : "r" (a), "r" (b), "r" (c), "r" (d), "r" (e) // Input operands
    );


    // Perform single floating-point fmadd.s operation
    asm volatile (
        "fmadd.s %0, %1, %2, %3\n"
        : "=f" (fmadd_result) // Output operand
        : "f" (f1), "f" (f2), "f" (f3) // Input operands
    );
    *addr_ptr = 1;
    // Perform another 5 integer additions
    asm volatile (
        "add %0, %1, %2\n" // result2 = e + d
        "add %0, %0, %3\n" // result2 = result2 + c
        "add %0, %0, %4\n" // result2 = result2 + b
        "add %0, %0, %5\n" // result2 = result2 + a
        : "=r" (result2) // Output operand
        : "r" (e), "r" (d), "r" (c), "r" (b), "r" (a) // Input operands
    );

    return 0;
}
*/
#include "math.h"
#define DEBUG_IF_ADDR 0x00008010

int main() {
        //filter coefficients
    volatile float a0 = 1.363f;
    volatile float a2 = 2.543f;
    volatile float b1 = 0.0f;
    volatile float b2 = 1.0f;
    volatile float a1 = 0.73f;

    //initial values
    volatile float x1 = 0.23f;
    volatile float x2 = -0.1324f;
    volatile float y_1 = 0.452f;
    volatile float y2 = 0.7435f;

    //inputs

    const float inputSignal[23] = {0.52f, 0.56f, -0.5f, 0.36f, -0.543222344f, 0.5f, -0.5f, 0.34521f,
     -0.5f, 0.67324f, 0.0f, 0.124252f, 0.6254234f, 0.12562345f, 0.0f, 0.0f, 0.0f, -0.785675646f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    volatile float x = 0.0f;
    volatile float y = 0.0f;

    char *addr_ptr = (char*)DEBUG_IF_ADDR;

    for (int i = 0; i < 23; i++) {
        x = inputSignal[i];
        
        y = a0 * x + a1 * x1 + a2 * x2 - b1 * y_1 - b2 * y2;
        y = x * a2 * y;

        if(fabs(y - (-0.269144f)) < 1e-4f){
            *addr_ptr = 'a';
        }
        else if (fabs(y - (1.816798f)) < 1e-4f){
            *addr_ptr = 'b';
        }
        else if (fabs(y - (-1.676859f)) < 1e-4f){
            *addr_ptr = 'c';
        }
        else if (fabs(y - (-0.244468f)) < 1e-4f){
            *addr_ptr = 'd';
        }
        else if (fabs(y - (0.099811f)) < 1e-4f){
            *addr_ptr = 'e';
        }
        else if (fabs(y - 1.837185f) < 1e-4f){
            *addr_ptr = 'f';
        }
        else if (fabs(y - (2.285808f)) < 1e-4f){
            *addr_ptr = 'g';
        }
        else if (fabs(y - (-0.403964f)) < 1e-4f){
            *addr_ptr = 'h';
        }
        else if (fabs(y - (5.069222f)) < 1e-4f){
            *addr_ptr = 'i';
        }
        else if (fabs(y - (3.140684f)) < 1e-4f){
            *addr_ptr = 'j';
        }
        else if (fabs(y - (-0.000000f)) < 1e-4f){
            *addr_ptr = 'k';
        }
        else if (fabs(y - (-0.397898f)) < 1e-4f){
            *addr_ptr = 'l';
        }
        else if (fabs(y - (1.500044f)) < 1e-4f){
            *addr_ptr = 'm';
        }
        else if (fabs(y - (0.428606f)) < 1e-4f){
            *addr_ptr = 'n';
        }
        else if (fabs(y - (2.139581f)) < 1e-4f){
            *addr_ptr = 'o';
        }
        else if (fabs(y - (0.000000f)) < 1e-4f){
            *addr_ptr = 'p';
        }
        else if (fabs(y - (-1.348073f)) < 1e-4f){
            *addr_ptr = 'q';
        }
        else if (fabs(y - (2.390810f)) < 1e-4f){
            *addr_ptr = 'r';
        }
        else if (fabs(y - (-0.649900f)) < 1e-4f){
            *addr_ptr = 's';
        }
        else if (fabs(y - (-2.390810f)) < 1e-4f){
            *addr_ptr = 't';
        }
        else if (fabs(y - (0.649900f)) < 1e-4f){
            *addr_ptr = 'u';
        }
        else if (fabs(y - (2.390810f)) < 1e-4f){
            *addr_ptr = 'v';
        }
        else{
            *addr_ptr = 'X';
        }

        x2 = x1;
        x1 = x;
        y2 = y_1;
        y_1 = y;
    }

    return 0;
}
/*

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
*/