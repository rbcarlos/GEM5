#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char* argv[]) {
    // set the limit of the primes
    u_int64_t number = 10000000;
    bool *primes = (bool *)malloc(number * sizeof(bool));
    //memset(primes, true, sizeof(primes));

    primes[0] = primes[1] = false;

    for (int i = 2; i < number; i++) {
        primes[i] = true;
    }

    for (u_int64_t i = 2; i * i < number; i++) {
        if (primes[i]) {
            for (u_int64_t j = i*i; j < number; j+=i) {
                primes[j] = false;
            }
        }
    }

    free(primes);

    return 0;
}
