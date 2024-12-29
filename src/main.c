#include <stdio.h>

/**
 * https://www.lucavall.in/blog/how-to-structure-c-projects-my-experience-best-practices
 */
typedef struct
{
    char *buffer;
    size_t buffer_length;
    ssize_t input_length;
} InputBuffer;
int main()
{
    printf("Hello c programming language\n");
    return 0;
}