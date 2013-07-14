#include <stdio.h>

#define LIMIT 2000000L
int i[LIMIT];

int main()
{
	unsigned long int n = 0, k;
	unsigned long long sum = 0L;
    for(n = 0; n < LIMIT; n++)
        i[n] = 1;
    i[0] = 0;
    i[1] = 0;

    unsigned long int p = 2L;

    while (p*p < LIMIT)
    {
        k = 2L;
        while (p*k < LIMIT)
        {
            i[p*k] = 0;
            k++;
        }
        p++;
    }

    for(n = 0; n < LIMIT; n++)
        if (i[n] == 1)
        {
            sum += n;
        }
    printf("%llu\n",sum);

    return 0;
}