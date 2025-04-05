# Test 1: Basic movement in a valid maze.
echo "Test 1: Basic movement"
echo -e "D\nD\nS\nS\nM\nQ" | ./maze_game maze1.txt > output1.txt
echo "Expected: Player moves correctly and exits the game."

# Test 2: Invalid commands handling.
echo "Test 2: Invalid input commands"
echo -e "X\nY\nZ\nQ" | ./maze_game maze1.txt > output2.txt
echo "Expected: Program should prompt error messages for invalid inputs."

# Test 3: Collision with wall.
echo "Test 3: Collision with a wall"
echo -e "W\nQ" | ./maze_game maze1.txt > output3.txt
echo "Expected: Program should notify the user when trying to move into a wall."

# Additional tests can be added here following the same format.
