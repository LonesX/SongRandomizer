#include "../lib/FileIO.h"
#include "../lib/sort.h"
#include <string.h>

/* This function does a few things
 * The function uses insertion sort to sort each song for each album(artist)
 * The function swaps each corresponding time as well so that it stays with the correct song.
 * The function also insertion sort to sort each artist name.
 * Sorts it by swapping the position of each album structure in the album array if it isn't in the correct spot
 */
void songSort (Album albums[], int n) {
    char timeTemp[10];
    int k;
    int j;
    int i;
    int sizeSongs;
    char tmp[30];

    /*My insertion sort implementation k = the index of the albums: and then i and j are used for song and time indexing
    for insertion sort algorithm.*/
    for (k = 1; k < n + 1; k++) {
        sizeSongs = albums[k].songAmount;
        for (i = 1; i < sizeSongs; i++) {
            j = i;

                while (j > 0 && (strcmp(albums[k].songs[j - 1], albums[k].songs[j]) > 0)) {
                    strcpy(tmp, albums[k].songs[j - 1]);
                    strcpy(timeTemp, albums[k].time[j - 1]);

                    strcpy(albums[k].songs[j - 1], albums[k].songs[j]);
                    strcpy(albums[k].time[j - 1], albums[k].time[j]);

                    strcpy(albums[k].songs[j], tmp);
                    strcpy(albums[k].time[j], timeTemp);

                    --j;
                }
            }
        }



    //Insertion sort to sort the artist names now.
    for (i = 1; i < n + 1; i++) {
        j = i;

        while (j > 0 && strcmp(albums[j-1].name, albums[j].name) > 0) {
            swapStruct(&albums[j-1], &albums[j]); //swaps the position of 2 structs

            --j;
        }
    }
}



/* This function swaps the position of two structures in an array using pointers */
    void swapStruct(Album *album, Album *album2)
{
    Album temp;
    temp = *album;
    *album = *album2;
    *album2 = temp;
}



