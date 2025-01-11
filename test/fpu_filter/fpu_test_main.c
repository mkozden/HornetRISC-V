#include "math.h"
#include "stdio.h"

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
    char deneme;
    char *addr_ptr = &deneme;

    for (int i = 0; i < 23; i++) {
        x = inputSignal[i];
        
        y = a0 * x + a1 * x1 + a2 * x2 - b1 * y_1 - b2 * y2;
        y = x * a2 * y;

        if(fabs(y - (-0.203533f)) < 1e-4f){
            *addr_ptr = 'a';
        }
        else if (fabs(y - (1.275770f)) < 1e-4f){
            *addr_ptr = 'b';
        }
        else if (fabs(y - (1.253193f)) < 1e-4f){
            *addr_ptr = 'c';
        }
        else if (fabs(y - (-3.002305f)) < 1e-4f){
            *addr_ptr = 'd';
        }
        else if (fabs(y - (0.926438f)) < 1e-4f){
            *addr_ptr = 'e';
        }
        else if (fabs(y - 1.304391f) < 1e-4f){
            *addr_ptr = 'f';
        }
        else if (fabs(y - (0.450584f)) < 1e-4f){
            *addr_ptr = 'g';
        }
        else if (fabs(y - (-3.005388f)) < 1e-4f){
            *addr_ptr = 'h';
        }
        else if (fabs(y - (0.979912f)) < 1e-4f){
            *addr_ptr = 'i';
        }
        else if (fabs(y - (2.225353f)) < 1e-4f){
            *addr_ptr = 'j';
        }
        else if (fabs(y - (0.901493f)) < 1e-4f){
            *addr_ptr = 'k';
        }
        else if (fabs(y - (-1.282197f)) < 1e-4f){
            *addr_ptr = 'l';
        }
        else if (fabs(y - (0.042263f)) < 1e-4f){
            *addr_ptr = 'm';
        }
        else if (fabs(y - (2.964354f)) < 1e-4f){
            *addr_ptr = 'n';
        }
        else if (fabs(y - (0.277197f)) < 1e-4f){
            *addr_ptr = 'o';
        }
        else if (fabs(y - (-2.964354f)) < 1e-4f){
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
        printf("%.10f %c", y, deneme);
        x2 = x1;
        x1 = x;
        y2 = y_1;
        y_1 = y;
    }

    return 0;
}