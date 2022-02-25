#include "../lib/FileIO.h"
#include "../lib/sort.h"
#include "../lib/randomiser.h"

/*To start the program (put the txt in the inputFiles folder first) then:
 * second you must set the arguments to the main file before running the project
 * You do that in clion by clicking the dropdown menu to the left of the run button then
 * you click edit configuration, then you put in the filepath into program arguments
 * for example I put ../inputFiles/inputFileExample.txt into the program arguments and it works
 */

int main(int argc, char *argv[]) {
    /*This uses my Structure called Album which creates a struct to hold the info of an artist's name,
     songs, times, amount of songs and finally how many times it is in the playlist */

    /*IMPORTANT CHANGE THE ALBUM ARRAY NUMBER IF THERE IS MORE THAN 15 ARTISTS OR IT WONT WORK */
    Album albums[15];
    int amounts;
    char *filePath = argv[1];//This takes the argument in
    /*This returns the amount of albums there are in the input file.*/
    amounts = FileIO(albums, filePath);

    /*This sorts all of the songs and artists*/
    songSort(albums, amounts);

    /*This prints every artist and song in the right format*/
    PrintAlbums(albums,amounts);


    /*This makes a random playlist to the rules and prints it out*/
    randomize(albums,amounts);

    return 0;
}


