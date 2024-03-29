# 1 Player Mode
More Advanced Algorithms for Human as X, Computer as O

CAUTION: All Algorithms from 2-Player Mode are used
<a href="https://github.com/Intermediate-App-Dev-and-Deploy/Tic-Tac-Toe-Project/tree/main/2%20Player%20Version#2-player-mode">
here</a>

End-goal is 1-Player algorithms to be used by both 1-Player Mode and Computer vs. Computer Mode
- Computer could go first or second and scoreboard will indicate this (note: this changes all the algorithms for computer going second)

Summary List of 1-Player Algorithms

---

# 1-Player Requirements (not in any order, developer must order these)
- 1-Player Button now works
- Computer goes second and scoreboard will indicate this
- Easy - Medium - Difficult - Impossible Modes Button works
- Mode Button Picks through a hierarchy which algorithms are available

Algorithms that should be solved here (suggested order)
- 1-Player Algorithm: Computer Randomly picks where to put a token first token, or any tokens
- 1-Player Algorithm: Computer "randomly" picks the worst space (open all "double threats")
- 1-Player Algorithm: Computer "randomly" picks the best space (block all "double threats", create double threat)
- 1-Player Algorithm: Computer "randomly" picks a medium first move space (block least number of "double threats", create least number double threat, or some combination)
- 1-Player Algorithm: Computer "randomly" picks a second move to create and/or block double threats
- 1-Player Algorithm: Computer recognizes two in a row for a win
- 1-Player Algorithm: Computer recognizes two in a row for a block (need to differentiate X's and O's)

Advanced Configuration
- Type names in to scoreboard, not just X's and O's
- Write and Read fileIO so game state can be saved and restarted (TAB-delineated .txt or json)

---

# Reminder, Analysis of Tic Tac Toe: Guidance with Videos

#### Develop an algorithm with these Videos
- Reminder: for each video, name the strategy to develop an algorithm to
- Video: Master Strategies, <a href="https://www.youtube.com/watch?v=5n2aQ3UQu9Y">Click Here</a>
  - Strategy: “3 corners” (one general pattern to ensure a win)
  - Discusses general probabilities based on corner moves and side moves
- Video: Secrets and Strategies, <a href="https://drive.google.com/drive/folders/1o_ch0JKFywTH2Z8Spqf49T5vMOO7Q-Y5">Click Here to see the Google Drive Video</a>
  - Strategy: “3 Corners”, “2-types of triangles”
  - Discusses different strategies but allows students to reflect on what is happening
  - Note: no sound on this
- Video: ElemMath 13.mp4, <a href="https://www.youtube.com/watch?v=_pJI5FJVbfQ">Click Here for YouTube Video</a>
  - <a href="https://drive.google.com/drive/folders/1o_ch0JKFywTH2Z8Spqf49T5vMOO7Q-Y5">Click Here to see the Google Drive Video</a>
  - Strategy: Separates an Algorithm into different sections
    - 4:45 – 7:30: 3 in a row: discusses examples of how simple mistakes might be made, watch how he makes example 3 (general pattern) and example 4 (almost a general pattern)
    - 9:30 - ?? (about 13:00): Discusses two rules: when there is 2 in a row, try to make three or try to block
      - Code this with random() until the algorithm is able to be played
    - 14:00 - 15:30 (can stop about): Double Threats; discusses some advanced planning to set up a double threat
    - 20:00 - 23:30: Discusses how to setup and prevent double threats
    - 24:00 - 31:10 : Discusses how to setup a double threat

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
   1. <a href="https://www.quora.com/What-is-the-probability-of-the-first-player-winning-in-Tic-Tac-Toe-as-well-as-the-second-one-winning">Click Here</a>
   2. <a href="http://mathforum.org/kb/thread.jspa?forumID=13&threadID=1164858&messageID=3821102">Click Here</a>
   3. <a href="https://math.stackexchange.com/questions/452031/chance-of-winning-in-tic-tac-toe">Click Here</a>
   4. <a href="https://www.youtube.com/watch?v=YUpUkQmpp0s">Student Presentation for Tik Tac Toe</a> with detailed mathematics about the probability of winning
   5. <a href="https://www.youtube.com/watch?v=YUpUkQmpp0s">Student Presentation for Tik Tac Toe</a>
   6. <a href="https://www.youtube.com/watch?v=weC1pAeh2Do">Ulitmate Tik Tack Toe Video to test your algorithm on</a>

---

# To Include

Review of Videos and Introduction to Tic Tac Toe Algorithms
- Shapes of Double Threats
- Relative Positions of 3-in-a-row, 2-in-a-row
- Blocking: what does it mean
- Coding: how to pick an Algorithm and use it to inform choices
- First Algorithm: randomly placing a token anywhere

**Reminder**: Super Tic Tac Toe
- 1-Player in Tic Tac Toe can be difficult to plan and code
- Creating a Super Tic Tac Toe game with Quit-Button and "Do you want to play again? YES-No"
- Super Tic Tac Toe has game play rules that need to be followed in 2-player (this will be were algorithms are)

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

Coding: Algorithms Prototyping

Coding: Assembling the full game
