# Tic-Tac-Toe Project
CS20

A Simpler Case Study: the maths of Tic Tak Toe
- Understanding choices and prediction, making a user experience of ethics (when to win given 32000 choices)

Student Exemplar: https://github.com/QEHS-SpecialProjects/Tic-Tak-Toe-Game

Super Tic Tac Toe: Tic-tak-toe but bigger
- From Mercer's Kitchen: https://github.com/MercersKitchen/Super-Tic-Tac-Toe
- From Intermediate CS: https://github.com/Intermediate-App-Dev-and-Deploy/Super-Tic-Tac-Toe-Exemplar
- From Intermediate CS: https://github.com/Intermediate-App-Dev-and-Deploy/Advanced-Super-Tic-Tac-Toe

---

# Note: Tic Tac Toe has two new pieces

1. Using the App Engine, write the least amount of code run the GUI
   - Use arrays & APPEND
   - Use FOR or WHILE to iterate through
   - Use an API to populate variables

2. Create an algorithm to make decisions about how to code a computer to play the game

---

Steps in Creating a Tic Tac Toe Processing-Java Game
- [] Play the Game, see Google, <a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project#play-the-game">Click Here</a>
   - - [] Design GUI & Data Structures on paper, See Mr. Mercer & <a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project#general-algorithm-from-mr-wildberger">Ideas from videos</a>
- [] Review some analysis videos of the game to get ideas about algorithms and code (grouping 32000 moves), <a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project#analysis-of-tic-tac-toe-guidance-with-videos">Click Here</a>
- [] Code a Two-player version or Super Tic Tac Toe using the App Engine work, <a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project/tree/main/2%20Player%20Version">Click Here</a>
- [] Develop a One Player Version, See Below for steps, <a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project/tree/main/1%20Player%20Version">Click Here</a>
  - One Player Development ends when all algorithms allow for either computer or human to go first
- [] Develop a Zero Player Version or Screen Saver, See Below for steps, <a href="">Click Here when available</a>
- [] Develop a Super Tic Tak Toe 2-Player Version, See Below for steps, <a href="">Click Here when available</a>
- [] Develop a Super Tic Tak Toe 1-Player Version, See Below for steps, <a href="">Click Here when available</a>

Two Player requirements, <a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project/tree/main/2%20Player%20Version#two-player-requirements">Click Here</a>

1-Player Requirements, <a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project/tree/main/1%20Player%20Version#1-player-mode">Click Here</a>

Computer Vs. Computer, <a href="">Click Here when available or see Pathway above</a>
- Note: "moves" will need to be slowed down a lot

Advanced Configuration
- Type names in to scoreboard, not just X's and O's
- Write and Read fileIO so game state can be saved and restarted (TAB-delineated .txt or json)

### Optional: use an API
- Develop a Tic Tac Toe Game from your App Engine
- Find an API for this game
- Read the Documentation and add the API into your game
- For Example:
  - send what the Tic Tac Toe board looks like to the server
  - receive the next move suggestion from the server
  - change the CANVAS and repeat

---

# Play the Game
- See Google Chrome: search Tic Tac Toe
- Use any other app or paper and pencil
- Notice,
  - 1 or 2 player modes
  - Levels for 1 Player
  - Restart Button
  - Scoreboard and method to show whose turn it is

## What will your game look like ... Time to Design

Creating Game Space and Laying out where buttons will be
- Includes hover-over, colours, menus, and any other special effects
- Example Special Effects: CATS Evaluation and TIE Score Counter
  - "Do you want to play again? (after max score reached)"
  - File IO: if game is quit before max score, option to pause and start again

### Example To Consider: GUI Design & Data Structure Design
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
       - Delay: humans register a computer's move better if a delay exists showing "the computer's turn", then "the actual move"
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
- Optional: game clock and total time clock, leads to digital health options

---

# Analysis of Tic Tac Toe: Guidance with Videos

## Develop an algorithm with these Videos
- Reminder: for each video, name the strategy to develop an algorithm to
- Video: Master Strategies, <a href="https://www.youtube.com/watch?v=5n2aQ3UQu9Y">Click Here</a>
  - Strategy: “3 corners” (one general pattern to ensure a win)
  - Discusses general probabilities based on corner moves and side moves
    - First Move, corner
      - Second Move, side adjacent to corner: will be a loss
      - Second Move, Center: two options
        - Tie: must choose side for a tie
        - Loss: choose any corner (then you choose any corner or center for the win)
- Video: Secrets and Strategies, <a href="https://drive.google.com/drive/folders/1o_ch0JKFywTH2Z8Spqf49T5vMOO7Q-Y5">Click Here to see the Google Drive Video</a>
  - Strategy: “3 Corners”, “2-types of triangles”
  - Discusses different strategies but allows students to reflect on what is happening
  - Note: no sound on this
    - Isosceles Triangle, center occupied
    - Right Triangle, triangle does not need to be made first (overall shape is important)
- Video: ElemMath 13.mp4, <a href="https://www.youtube.com/watch?v=_pJI5FJVbfQ">Click Here for YouTube Video</a>
  - <a href="https://drive.google.com/drive/folders/1o_ch0JKFywTH2Z8Spqf49T5vMOO7Q-Y5">Click Here to see the Google Drive Video</a>
  - Strategy: Separates an Algorithm into different sections
    - 4:45 – 7:30: 3 in a row: discusses examples of how simple mistakes might be made, watch how he makes example 3 (general pattern) and example 4 (almost a general pattern)
    - 9:30 - 13:50 (about 13:00): Discusses two rules: when there is 2 in a row, try to make three or try to block
      - Code this with random() until the algorithm is able to be played
    - 14:00 - 15:30 or ~17 minutes (can stop about): Double Threats; discusses some advanced planning to set up a double threat
    - 20:00 - 23:30: Discusses how to setup and prevent double threats
    - 24:00 - 31:10 : Discusses how to setup a double threat from two pieces on the board

#### Review of Videos and Introduction to Tic Tac Toe Algorithms
- Shapes of Double Threats
- Relative Positions of 3-in-a-row, 2-in-a-row
- Blocking: what does it mean
- Coding: how to pick an Algorithm and use it to inform choices
- First Algorithm: randomly placing a token anywhere

#### General Algorithm From Mr. Wildberger

Notice: we start at the end of the game first, then get more specific to prediction (same with learning, if you know the goal ...)

Level 1
  - Rule 1: If you can make three, do so
  - Rule 2: If your opponent can make three next turn, prevent it

Level 2
  - Rule 3: If you can make a double threat, do so
  - Rule 4: If your opponent can make a double threat next turn, prevent it

Level 3
  - Rule 5: If you can set up a double threat next turn, do so
  - Rule 6: If you can prevent your opponent from setting up a double threat, do so

#### Generalize your algorithm with these readings
   1. <a href="https://www.quora.com/What-is-the-probability-of-the-first-player-winning-in-Tic-Tac-Toe-as-well-as-the-second-one-winning">Click Here for Reading #1: Probability of the First Person winning compared to the Second Person</a>
   2. <a href="http://mathforum.org/kb/thread.jspa?forumID=13&threadID=1164858&messageID=3821102">Click Here for the link that might be broken</a>
   3. <a href="https://math.stackexchange.com/questions/452031/chance-of-winning-in-tic-tac-toe">Click Here for Reading #3: Chance of Winning in Tic Tac Toe</a>
   4. <a href="https://www.youtube.com/watch?v=YUpUkQmpp0s">Student Presentation for Tik Tac Toe</a> with detailed mathematics about the probability of winning
   5. <a href="https://www.youtube.com/watch?v=YUpUkQmpp0s">Student Presentation for Tik Tac Toe</a>

---

# To Include

Algorithms to increase board to 4x4, 5x5, etc.
- odd has center piece
- Daniel Siftman does gaming videos

---

Progressions to take a step back and look at what computational thinking looks like
- Create board
- computationally define the spaces on the board so you and the computer know
- Create and list the buttons
- Create scoreboard and what a celebration looks like
- Create export button to save the game state, score, and other variables
- Create procedure to draw X and O, void draw
- Create booleans activated in mousePressed to draw X & O
- Extra Grades for using arrays, reading-writing using FOR-Each
- Create 2-person game
  - does not write into space already clicked
  - WASD grid and number grid works
  - mousePressed based on this
- 1-person: randomly choose number, output to console
- 1-person: number is used instead of number pad, saved into primitive data or array
- 1-person: game ends when all squares are chosen
- 1-person: game ends when 3-in-a-row recognized
- SEE ABOVE ALGORITHMS for more progressions

Note: if using arrays, use APPEND()

---