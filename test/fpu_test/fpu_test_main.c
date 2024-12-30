#include "math.h"
#include "stdio.h"

int main() {
    //filter coefficients
    float a0 = 1.363f;
    float a1 = 0.73f;
    float a2 = 2.543f;
    float b1 = 0.0f;
    float b2 = 1.0f;

    //initial values
    float x1 = 0.23f;
    float x2 = -0.1324f;
    float y_1 = 0.452f;
    float y2 = 0.7435f;

    //inputs
    const float inputSignal[23] = {0.52f, 0.56f, -0.5f, 0.36f, -0.543222344f, 0.5f, -0.5f, 0.34521f,
     -0.5f, 0.67324f, 0.0f, 0.124252f, 0.6254234f, 0.12562345f, 0.0f, 0.0f, 0.0f, -0.785675646f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    float x = 0.0f;
    float y = 0.0f;


    for (int i = 0; i < 23; i++) {
        x = inputSignal[i];

        y = a0 * x + a1 * x1 + a2 * x2 - b1 * y_1 - b2 * y2;
        printf("%8f", y);


        if(fabs(y - 0.5638f) < 1e-4f){
            printf("%c", 'a');
        }
        else if (fabs(y - (-0.5638f)) < 1e-4f){
            printf("%c", 'b');
        }
        else if (fabs(y - (-0.3196f)) < 1e-4f){
            printf("%c", 'c');
        }
        else if (fabs(y - 0.5200f) < 1e-4f){
            printf("%c", 'd');
        }
        else if (fabs(y - (0.9396f)) < 1e-4f){
            printf("%c", 'e');
        }
        else if (fabs(y - 0.4288f) < 1e-4f){
            printf("%c", 'f');
        }
        else if (fabs(y - (-1.5638f)) < 1e-4f){
            printf("%c", 'g');
        }
        else if (fabs(y - (0.3154f)) < 1e-4f){
            printf("%c", 'h');
        }
        else if (fabs(y - (0.8196f)) < 1e-4f){
            printf("%c", 'i');
        }
        else if (fabs(y - (0.3196f)) < 1e-4f){
            printf("%c", 'j');
        }
        else if (fabs(y - (-1.5638f)) < 1e-4f){
            printf("%c", 'k');
        }
        else if (fabs(y - (-1.5638f)) < 1e-4f){
            printf("%c", 'l');
        }
        else if (fabs(y - (-1.5638f)) < 1e-4f){
            printf("%c", 'm');
        }
        else{
            printf("%c", 'n');
        }


        x2 = x1;
        x1 = x;
        y2 = y_1;
        y_1 = y;
    }

    return 0;
}