//
//  DoubleTheArray.c
//  DoubleTheArrayLibrary
//
//  Created by Lokesh Bhansali on 31/03/23.
//

#include "DoubleTheArray.h"

float* doubleArray(const float* array, unsigned int count) {
    float* result = malloc(sizeof(float) * count);
    for (unsigned int i = 0; i < count; i++) {
        result[i] = array[i] * 2;
    }
    return result;
}
