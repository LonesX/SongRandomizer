#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "../lib/FileIO.h"

/*This function does a number of things.
 * It opens the file that is specified with the path for reading

 * It will give an error if it can't find the file

 * It will then allow console inputted file creation if both files are not accessible.

 * It will then run my serialisation algorithm on the newly created / previously specified file.

 * My serialization algorithm checks if each line is an artist. If it is- it creates a new Album array

 * It will then copy the artist name into the Albums[x].name;

 * It then continues on and using tokenization slots each song and time into their corresponding array.

 * Finally, it will return the amount of albums created within this function
*/
int FileIO(Album *albums,char *filePath)
{

    const char delim[] = "***";
    char buffer[300];
    char *token;
    FILE *fp;
    int i = 0;
    int j;
    int k;
    int albumsAmounts = 0;

//Opens the input example we were given.
    fp = fopen(filePath, "r");

    //if first file cant open
    if (fp == NULL) {
        printf("Error: Couldn't find first file.\n");
        fclose(fp);
        fp = fopen("../inputFiles/artistes+songs.txt" , "r");

        //if second file cant open
        if (fp == NULL) {
            printf("Error: Couldn't find second file.\n");
            printf("\n\nPlease input how many lines you want to input into the new txt file:\n");
            scanf("%d", &k);
            fflush(stdin); // so that scanf doesnt mess with fgets.
            //calls my file creation function.
            FileWrite(fp,k);
            fp = fopen("../inputFiles/Input.txt", "r");
        }
    }

    //This is used as a buffer for each line.
    fgets(buffer, 300, fp);
    //while we arent at the end of the file
    while (!feof(fp))
    {
        //if album name :
        if (strstr(buffer, "***") == NULL && (strcmp(buffer,"\n") != 0))
        {
            i++; // count of albums
            j = 0; //song&time index
            albumsAmounts = albumsAmounts + 1; //count of artists
            Album *a = albums + i; // pointer to album array


            strcpy(a->name, buffer); // copies the name of artist to corresponding place
            a->name[strlen(a->name) - 1] = '\0'; // removes the trailing newline
            a->songAmount = 0;
            a->timesPlayed = 0;
            fgets(buffer, 300, fp); // go to the next line of the file
        }
        //if song :
        Album *a = albums + i;

        /* This is tokenization of each song line which separates each song and time and stores them in their
         places in the struct */
        token = strtok(buffer, delim);
        strcpy(a->songs[j], token);
        while (token != NULL)
        {
            token = strtok(NULL, delim); //printing each token
            strcpy(a->time[j], token);
            a->songAmount = a->songAmount + 1; // count of amount of songs
            break;
        }

        a->time[j][strlen(a->time[j]) - 1] = '\0';
        j++;
        fgets(buffer, 300, fp); // goes to next line in file after a if song:
    }
    fclose(fp);
    return albumsAmounts;
}


/* This function just goes through each struct album array and prints all the elements in each struct
 with the given format in the question */


void PrintAlbums(Album albums[], int amounts)
{
    int i;
    int j;
    for (i = 1; i < amounts + 1; i++)
    {
        printf("\n");
        printf("%s\n", albums[i].name);

        for (j = 0; j < albums[i].songAmount; j++)
        {
            printf("\t%s *** %s\n", albums[i].songs[j], albums[i].time[j]);
        }
    }
}
/* I made this function to write to a file with user inputed songs/artists and then to give back the point to the FILEIO
   function*/

void FileWrite(FILE* fp,int n){
    //since the fopen failed twice it will now go to write a file using the console
    char str[100];
    int k = n;
    int i;
    // creating file pointer to work with files
    // opening file in writing+ mode
    fp = fopen("../InputFiles/Input.txt", "w+");

    if (fp == NULL) {
        printf("Error couldn't create a new txt file!");
        exit(1);
    }

    printf("\n\n");
    printf("To input an artist: Write artist name\t\n");
    printf("To input a song: Write song name***time\t\n");
    printf("PLEASE ENSURE YOU DO NOT ADD ANY NEWLINE SPACES BETWEEN EACH ARTIST\n");
    printf("You may copy paste an entire list of artists/songs like the example input into the console but it MUST be in correct format\n");
    //writes in line by line.
    for(i = 0; i < k;i++)
    {
        fgets(str, sizeof str, stdin);
        fputs(str, fp);
    }

    fclose(fp);
}
