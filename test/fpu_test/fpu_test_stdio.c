#include <stdio.h>

// Filter coefficients
float a0 = 1.0f;
float a1 = 0.7f;
float a2 = 2.0f;
float b1 = 0.0f;
float b2 = 1.0f;

// Initial values
float x1 = 0.0f;
float x2 = 0.0f;
float y_1 = 0.0f;
float y2 = 0.0f;

// Inputs
const float inputSignal[23] = {0.5f, 0.5f, -0.5f, 0.5f, -0.5f, 0.5f, -0.5f, 0.5f, -0.5f, 
                               0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 
                               0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
float x = 0.0f;
float y = 0.0f;

int main() {
    // Process the input signal
    for (int i = 0; i < 23; i++) {
        x = inputSignal[i];

        // Calculate the output
        y = a0 * x + a1 * x1 + a2 * x2 - b1 * y_1 - b2 * y2;

        // Print the result to the terminal
        if (y == 0.35000002f) {
            printf("Output for input %d: y = %.8f, state = 'c'\n", i, y);
        } 
        else if (y == 0.5f){
            printf("Output for input %d: y = %.8f, state = 'd'\n", i, y);
        }
        else{
            printf("Output for input %d: y = %.8f, state = 'e'\n", i, y);
        }

        // Update the states
        x2 = x1;
        x1 = x;
        y2 = y_1;
        y_1 = y;
    }

    return 0;
}
