#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ROWS 100
#define MAX_COLS 100

int loadMaze(Game *game, const char *filename); // Load maze from file
void displayMaze(const Game *game);             // Display the entire maze
void displayMazeWithPlayer(const Game *game);   // Display maze with player's current position (marked as 'X')
int movePlayer(Game *game, char direction);     // Move the player in the given direction
int isGameFinished(const Game *game);           // Check if the player has reached the exit
void printInstructions(void);                   // Print game instructions

// Player structure representing the player's position in the maze.
typedef struct
{
    int row;
    int col;
} Player;

// Game structure holding the maze data, dimensions, and player.
typedef struct
{
    char maze[MAX_ROWS][MAX_COLS];
    int rows;
    int cols;
    Player player;
} Game;

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s <maze_file>\n", argv[0]);
        return EXIT_FAILURE;
    }
    Game game;

    // Load the maze from the provided file.
    if (!loadMaze(&game, argv[1]))
    {
        fprintf(stderr, "Error: Failed to load maze.\n");
        return EXIT_FAILURE;
    }

    printInstructions();
    displayMazeWithPlayer(&game);

    char input;
    while (1)
    {
        printf("Enter command (W/A/S/D to move, M to show maze, Q to quit): ");
        if (scanf(" %c", &input) != 1)
        {
            fprintf(stderr, "Input error. Exiting.\n");
            break;
        }

        if (input == 'Q' || input == 'q')
        {
            printf("Game exited.\n");
            break;
        }
    }
    return EXIT_SUCCESS;
}
