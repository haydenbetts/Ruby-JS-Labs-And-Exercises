#include <stdio.h>
#include <cs50.h>
#include <stdlib.h>

int main(void)
{
    int height;

    do
    {
        printf("Height: \n");
        height = get_int();

        for (int current_line = 1; current_line <= height; current_line++) {
            // print spaces in the left pyramid
            for (int left_spaces = 1; left_spaces <= (height - current_line); left_spaces++) {
                printf(" ");
            }

            for (int left_hashes = 1; left_hashes <= current_line; left_hashes++) {
                printf("#");
            }

            printf("  ");

            for (int right_hashes = 1; right_hashes <= current_line; right_hashes++) {
                printf("#");
            }

            // for (int right_spaces = 1; right_spaces <= (height - current_line); right_spaces++) {
            //     printf(" ");
            // }

            printf("\n");
        }
    }
    while (height < 0 || height > 23);
}