#!/bin/bash

# Test 1: Basic movement and exit in ValidMaze1.txt
echo "Test 1 (ValidMaze1): Basic movement & exit"
# Commands assumed to guide the player from S to E
echo -e "D\nD\nS\nS\nM\nQ" | ./maze_game "ValidMaze1.txt" > output1.txt
echo "Expected: Maze is displayed and exit reached with congratulatory message."

# Test 2: Multiple maze displays in ValidMaze1.txt
echo "Test 2 (ValidMaze1): Multiple maze displays"
echo -e "M\nM\nM\nQ" | ./maze_game "ValidMaze1.txt" > output2.txt
echo "Expected: Maze is shown three times before quitting."

# Test 3: Basic movement in ValidMaze2.txt
echo "Test 3 (ValidMaze2): Basic movement in complex maze"
echo -e "D\nS\nD\nD\nS\nM\nQ" | ./maze_game "ValidMaze2.txt" > output3.txt
echo "Expected: Player navigates a valid path with correct maze display."

# Test 4: Mixed valid and invalid commands in ValidMaze2.txt
echo "Test 4 (ValidMaze2): Mixed commands"
echo -e "D\nX\nS\n#\nM\nQ" | ./maze_game "ValidMaze2.txt" > output4.txt
echo "Expected: Valid commands are executed; invalid commands produce warnings."

# Test 5: Basic movement and exit in ValidMaze3.txt
echo "Test 5 (ValidMaze3): Basic movement & exit"
echo -e "D\nD\nS\nD\nM\nQ" | ./maze_game "ValidMaze3.txt" > output5.txt
echo "Expected: Player navigates to exit and game ends with a congratulatory message."

# Test 6: Extended navigation in ValidMaze3.txt
echo "Test 6 (ValidMaze3): Extended navigation"
echo -e "D\nD\nS\nS\nA\nW\nD\nS\nM\nQ" | ./maze_game "ValidMaze3.txt" > output6.txt
echo "Expected: Maze updates reflect a series of moves; exit is reached if path exists."

# Test 7: Maze load failure for InvalidMaze1.txt (missing start point)
echo "Test 7 (InvalidMaze1): Maze missing start point"
./maze_game "InvalidMaze1.txt" > output7.txt
echo "Expected: Error message regarding missing starting point."

# Test 8: Commands on maze with missing start in InvalidMaze1.txt
echo "Test 8 (InvalidMaze1): Commands on maze with missing start"
echo -e "D\nS\nQ" | ./maze_game "InvalidMaze1.txt" > output8.txt
echo "Expected: Maze load failure prevents navigation; error output is expected."

# Test 9: Maze load failure for InvalidMaze2.txt (non-rectangular maze)
echo "Test 9 (InvalidMaze2): Non-rectangular maze load"
./maze_game "InvalidMaze2.txt" > output9.txt
echo "Expected: Error message regarding maze format inconsistency."

# Test 10: Commands on non-rectangular maze InvalidMaze2.txt
echo "Test 10 (InvalidMaze2): Commands on non-rectangular maze"
echo -e "D\nM\nQ" | ./maze_game "InvalidMaze2.txt" > output10.txt
echo "Expected: Maze load error prevents command processing; error message output."

# Test 11: Basic movement in unsolvable maze InvalidMaze3.txt
echo "Test 11 (InvalidMaze3): Basic movement in unsolvable maze"
echo -e "D\nS\nM\nQ" | ./maze_game "InvalidMaze3.txt" > output11.txt
echo "Expected: Maze loads but the path to exit is blocked; program indicates unsolvability or shows an error."

# Test 12: Immediate quit in unsolvable maze InvalidMaze3.txt
echo "Test 12 (InvalidMaze3): Immediate quit in unsolvable maze"
echo -e "Q" | ./maze_game "InvalidMaze3.txt" > output12.txt
echo "Expected: Game exits gracefully; unsolvable maze error may be logged."