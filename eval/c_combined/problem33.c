#include <stdio.h>
#include <math.h>

double func0(const double *xs, int size) {
    double ans = 0.0;
    double value, driv, x_pow;
    int i;

    value = xs[0];
    for (i = 1; i < size; i++) {
        x_pow = 1.0;
        for (int j = 0; j < i; j++) {
            x_pow *= ans;
        }
        value += xs[i] * x_pow;
    }

    while (fabs(value) > 1e-6) {
        driv = 0.0;
        for (i = 1; i < size; i++) {
            x_pow = 1.0;
            for (int j = 1; j < i; j++) {
                x_pow *= ans;
            }
            driv += i * xs[i] * x_pow;
        }
        ans = ans - value / driv;

        value = xs[0];
        for (i = 1; i < size; i++) {
            x_pow = 1.0;
            for (int j = 0; j < i; j++) {
                x_pow *= ans;
            }
            value += xs[i] * x_pow;
        }
    }

    return ans;
}


#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <math.h>
double func0(const double *xs, int size);

double evaluate_polynomial(const double *coeffs, int size, double x) {
    double result = 0.0;
    double term = 1.0; 
    for (int i = 0; i < size; i++) {
        if (i > 0) {
            term *= x; 
        }
        result += coeffs[i] * term;
    }
    return result;
}

int main() {
    double solution;
    int ncoeff;
    
    for (int i = 0; i < 100; i++) {
        ncoeff = 2 * (1 + rand() % 4);
        double coeffs[ncoeff];
        for (int j = 0; j < ncoeff; j++) {
            double coeff = -10 + rand() % 21;
            if (coeff == 0) coeff = 1;
            coeffs[j] = coeff;
        }
        
        solution = func0(coeffs, ncoeff);

        assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
    }

    return 0;
}
