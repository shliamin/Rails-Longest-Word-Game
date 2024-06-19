
# Rails Longest Word Game

This project is a web-based game where players try to create the longest word possible from a given set of letters.

## Features

- Random letter generation for each game.
- Validation of words based on dictionary API.
- Scoring system based on word length and complexity.
- User-friendly interface for playing the game.

## Getting Started

### Prerequisites

- Ruby (version 3.0.0 or later)
- Rails (version 6.1.3 or later)
- PostgreSQL (for database)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/shliamin/Rails-Longest-Word-Game.git
   cd Rails-Longest-Word-Game
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

### Running the Server

To start the Rails server, run:
```bash
rails server
```
Then, open your browser and navigate to `http://localhost:3000` to play the game.

## Usage

- Visit the homepage to start a new game.
- A set of random letters will be displayed.
- Enter the longest word you can form using the given letters.
- Submit the word to see your score.

