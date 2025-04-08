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