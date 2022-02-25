#include "../lib/randomiser.h"
#include "../lib/sort.h"
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* This function does some useful things like :
 * First, it finds a random number between 1 and album amounts to choose which album to start with

 * Second, it checks if last random number was the same as the new one. If so then 2 same albums were played in a row.

 * If there is no match for consecutiveArtist then the count resets back to 0 in a row.

 * If there are more than 2 same artists in a row it will pick another random number until it is a diff artist.

 * Thirdly, it will random number for the song choice too. Once a song is picked it will change it to "0" to ensure
   that it isn't picked again (checked using strcmp).

 * Fourth, it will add 1 to the timesPlayed count to measure how many times an artist has been played. If it is played
   more than 3 times then it will remove the artist entirely from the random choice pool for artist at start (i).

 * Fifth, it will print out the name of artist, song and time for each song added to playlist.

 * Finally, it uses tokenization to separate the minutes and seconds for each time and it will convert it all
   to seconds and then it will convert the overall sum of seconds of time each song is and it will convert it to
   hours, minutes and seconds. This allows us to see the total duration of the songs at the end.
 */
void randomize(Album albums[], int amount){
    printf("\nRandomised Playlist : \n");
    srand(time(NULL));
    int hours, minutes, seconds;
    int sumMin, sumSec = 0;
    int upperLimit = amount;
    int i, j , tmp;
    int consecutiveArtist = 0;
    char *token;
    char tmpTime[10];

    hours = 0;
        while(hours <= 0)  {
            i = (rand() % (upperLimit - 1 + 1)) + 1; // ensures from 1 to amount of albums

            if(tmp == i){
                consecutiveArtist++; // adds 1 to count how many times an artist has been played in a row
            }
            if(tmp != i){
                consecutiveArtist = 0; // if not in a row then it resets count
            }

            //it says one but it is actually 2 because 0,1 = 2 songs
            if(consecutiveArtist > 1){
                continue; // makes it so that it will keep re-picking (i) until it isn't 2 in a row anymore.
            }

            j = rand() % albums[i].songAmount;

            if(strcmp(albums[i].songs[j], "0") == 0)
            {
                continue; // so that the same song cannot appear twice in the playlist
            }

            if(albums[i].timesPlayed == 3){
                swapStruct(&albums[i], &albums[upperLimit]); // puts the unwanted artist at the end of the struct array
                upperLimit--; //removes the last artist at the end of the pool
                continue;
            }


            strcpy(tmpTime, albums[i].time[j]);
            token = strtok(tmpTime , ":"); // gets the minutes
            sumMin = atoi(token) * 60; // this converts the minutes to seconds.Atoi makes a string into int.

            while (token != NULL)
            {
                token = strtok(NULL, ":"); //gets the seconds
                sumSec += atoi(token); // this adds all the seconds up. Atoi makes a string into int.
                break;
            }
            sumSec += sumMin; // adds the minutes (in seconds) and seconds
            hours = (sumSec / 3600); // calculates how many hours the total seconds is

            printf("%s: \"%s\" (%s)\n", albums[i].name, albums[i].songs[j],albums[i].time[j]);
            albums[i].timesPlayed++; // adds 1 everytime a song from each artist is played individually

            strcpy(albums[i].songs[j], "0"); // to ensure that the same song doesnt reappear after printing
            tmp = i;
        }

        minutes = (sumSec - hours*3600)/60; // calculates how many minutes
        seconds = sumSec - hours*3600 - minutes*60; //calculates how many seconds
        minutes += 60; // adds the left over 1 hour after it terminated the while loop because it hit 1 hour
        printf("\nTotal Duration : %d:%02d", minutes , seconds);

    }