#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    
    if(argc > 1){
        char *output;
        long levels = strtol(argv[1], &output, 10);
        printf("Tree level %d\n", levels);

        printf("\n");

        int spaces = levels - 1;
        int asterisks = 1;

        for(int i=0;i<levels; i++){

            // print spaces inverse proportinally to the tree level
            for(int j =0;j<spaces; j++){
                printf(" ");
            }

            // print asterisks
            for(int j = 0; j < asterisks; j++){
                printf("*");
            }
            printf("\n");

            spaces--;
            asterisks = asterisks + 2;
        }
        
        spaces = levels - 1;
        // print spaces again up to the middle
        for(int j =0;j<spaces; j++){
            printf(" ");
        }
        printf("|\n");
    }
    return 0;
}