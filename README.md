# Tutorial 4 - Level 2 Implementation

## Features Implemented

-   **New Tile Map**: Used a different spritesheet for the tilemap than the first level, also with different tileset shape. But the whole functionality is still basically the same (acting as a platform)
-   **Obstacle Spawner**: Introduced an obstacle spawner that generates fireballs across the screen.
-   **Environmental Hazards**:
    -   **Patrolling bee**: Added a bee that flies back and forth between a certain area.
-   **Additional Enhancements**:
    -   **Patrolling bee**: Any additional creative elements added to make the level more engaging.

## Implementation

1.  Create a new Node2D scene with the name of "Level2".
2.  Add the "Player" scene, which I just copy and paste from the previous level.
3.  Create a new TileMapLayer and set the TileSet. Choose a spritesheet from the asset as the texture of the TileSet. To set the collision shape of the TileSet, I choose the "Physics Layer 0" as the paint property and then individually create the collision shape for each of the sprite blocks. After each block's collision shape has been set, I can then paint the platform directly on the screen.
4.  Create the objective of the level which is to reach the star (same as the previous level), so I just copy and paste the node and move its position.
5.  Add the "LoseScene" scene on the level and modify the position and shape as I see fit (on the bottom where players would lose if they fall).
6.  Add a spawner that connects to a PackedScene of another scene I've made (Fireball), which essentially had identical functionality as the Fish from the previous level.
7.  Create a "Bee" scene and implement the script so that the bee would fly back and forth in a designated area and the player would lose if the they crash with the bee.

## References

-   [CSUI Gamedev Website - Tutorial 4](https://csui-game-development.github.io/tutorials/tutorial-4/).
