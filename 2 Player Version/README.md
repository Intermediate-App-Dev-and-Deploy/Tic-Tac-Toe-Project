# 2 Player Mode
Basic Game and Algorithms

UNDER CONSTRUCTION

# Two Player requirements
- Symmetry and Ratios of GUI are symmetrical
  - must identify square in rectangle display
  - where does score board and buttons go
- Quit Button Works
- Reset or Play again button works
- Mode Button: Easy, Medium, Difficult (and/or Impossible) {Developer chooses what each of these mean}
- 2-Player button works (1-Player Button displays but does not work)
- Scoreboard works and indicates whose turn it is, and if move belongs to X or O
  - advanced: personalize the scoreboard
  - advanced: personalize who goes first
- After starting a game, first click places an X and locks that space from more tokens
- Second click places an O and locks that space
- Alternate X & O Tokens, but these are independent of players (i.e. each player could be X or O)
- Recognize Three-in-a-Row and will celebrate, also change the score (different from match score)
- Match Score is configurable: first to 3, first to 5, first to 10, most wins in 10 minutes ... OR ...
  - Something more creative like "most number of wins after CATS"
- Pseudocode Suggestions
  - Layout the 3-3 Matrix
  - Buttons in artsy symmetrical way (even a logical is artsy)
  - Scoreboard with behavioral descriptions
  - How tokens used and data structure behind mathematics
- Optional: game clock and total time clock, leads to digital health options and reminders to get outside or "go to sleep" (i.e. what is the weather outside stating what place you are in)
- Optional: save the scoreboard, when the game starts again, begin at the same score
- Optional: export personalization 
- Optional: screen-saver mode that randomly places a token anywhere on the board 9 times, then restarts

# Example Data Structures
- Primitive Booleans
- Single Line IFs
- 9 Squares represented in an array
- X & O Tokens recognized as integers (+'ve or -'ve) computed by logical operators (>0, <0)
- X & O Tokens recognized as odd or even numbers (computed as 1 or 0 by modulus)

# Algorithms to work on
- First Algorithm: randomly placing a token anywhere
- Second Algorithm: recognize all positions of 3 in a row

---

# To Include

Review of Videos and Introduction to Tic Tac Toe Algorithms

Relative Positions of 3-in-a-row, 2-in-a-row

GUI Design & Data Structure Design
- Ratios and Symmetry (paper folding and generalizing 1/3 to percepts when populating variables based on display geometry)
- Restart Button: clear specific variables, clear playing board
- Scoreboard (X & O)
  - Traditionally, X goes first but this is not always Player One (if names are not entered)
  - Requires some though into how a two-play game will be controlled and scored
- Quit Button
- 2-Player and 1-Player Button
- If 1-Player chosen, levels are mandatory
  - Levels: must code first 2 to earn 50% here, other levels increase grade
  - Note: these levels create an
    1. Random: randomly put O-Token anywhere that is not filled
      - Note: traditionally computer is O-Token
      - Optional: computer goes first but correct score is still tracked
    2. Easy: multiple options
      - Strict Random: first move is always random
      - Loose Random: some tokens will have choice of locations but not all locations will lead to 3-in-a-row
      - 3-in-a-row random: pick a location "randomly" planning 3 in a row
      - first move in always in side-location
      - first move is usually in side-location
    3. Medium: definitions here are up to developer, options include
      - blocking 3-in-a-row
      - blocking 2-in-a-row (note: this is different, no consideration if 3-in-a-row is possible)
      - first move is never in side-location (very small percentage of winning)
      - first move is always center or corner, then other algorithms take over
    4. Hard or Impossible: developer defines what these mean
      - Blocking "double threat" setup
      - Blocking "double threat" setup while setting up own double threat
- Quit Button
- Optional: game clock and total time clock
  - leads to digital health options

Coding: Creating Game Space and Laying out where buttons will be
- Includes hover-over, colours, menus, and any other special effects
- Example Special Effects: CATS Evaluation and TIE Score Counter
  - "Do you want to play again? (after max score reached)"
  - File IO: if game is quit before max score, option to pause and start again

Coding: Create a 2-Player Version
- CAUTION: this version needs to have 1 player available to be taken over

---

Note: all two player algorithms are used
- 2 player
- 1 player
- Or Computer vs Computer

---

start with images that can change based on points
- send parameters for image function

create function for drawing x, send parameters of beginning function
