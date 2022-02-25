//
// Created by Lones on 22/02/2021.
//

#ifndef PROJECT_1_FILEIO_H
#define PROJECT_1_FILEIO_H
#include <stdio.h>
typedef struct Album Album;
int FileIO(Album *albums, char* filePath);

/* This is my structure to hold each artist's information.
 * Throughout the program I use this structure and fill it.*/
typedef struct Album {
    char name[100];  // indexing begins at 1 instead of 0 because of file scan algorithm.
    char songs[10][30]; // indexing begins at 0.
    char time[10][10];
    int songAmount;
    int timesPlayed;
} Album;

/* prototype for my print function to print out the information. */
void PrintAlbums(Album albums[], int amounts);
void FileWrite(FILE* fp,int n);




#endif //PROJECT_1_FILEIO_H
