# Pong Game in Assembly

This project is a classic Pong game implemented in Assembly language, designed to run in a web browser. The game features two paddles, a ball, and a scoring system, providing an engaging experience reminiscent of the original Pong arcade game.

## Project Structure

The project consists of the following files:

- **src/main.asm**: Entry point of the game. Initializes the game loop and handles the main game logic.
- **src/utils.asm**: Contains utility functions for drawing to the screen and handling input.
- **src/game/paddle.asm**: Defines the logic for paddle movement and collision detection with the ball.
- **src/game/ball.asm**: Manages the ball's movement, collision detection with paddles and walls, and scoring.
- **src/game/score.asm**: Handles the scoring system, tracking player scores and updating the display.
- **index.html**: Main HTML file that sets up the canvas for the game and includes necessary scripts.
- **package.json**: Configuration file for npm, listing dependencies and scripts.
- **vercel.json**: Configuration for deploying the project on Vercel, specifying build settings and environment variables.

## How to Run the Game

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Install the necessary dependencies using npm:
   ```
   npm install
   ```
4. Open `index.html` in a web browser to start playing the game.

## Deployment

To deploy the game on Vercel, ensure that the `vercel.json` file is correctly configured with your build settings. You can then use the Vercel CLI to deploy your project.

Enjoy playing Pong!