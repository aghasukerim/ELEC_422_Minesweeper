
<div id="top"></div>



<!-- PROJECT SHIELDS -->
[![MIT License][license-shield]][license-url]



<h3 align="center">Minesweeper ASIC Chip</h3>

  <p align="center">
        VLSI design of an ASIC chip for the Minesweeper game.
    <br />
    <br />
    ![test](https://github.com/aghasukerim/ELEC_422_Minesweeper/blob/main/docs/final_layout.png?raw=true)
  </p>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#project-structure">Project Structure</a></li>
    <li><a href="#testing">Testing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Our project is a VLSI chip implementation of the traditional Minesweeper computer puzzle game over a 5x5 board with three levels of difficulty (up to 3 mines).


<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* Magic 8.3
* Innovus 22.14


### Compatibility
The project was successfully run and tested on Red Hat 8 (CLEAR server).

## Project Structure

```
├── Density (density checks + final design CIF and GDS files)
├── docs (layouts and testbenches pics)
├── Innovus
├── Irsim 
├── pin_directions.txt (mapping between I/O and 64 pin Padframe)
├── Questa 
├── Questa_post_DC
├── README.md (includes the description of the test functions)
├── Synthesis 
└── Wiring (contains wired chip and testbenches for padframe)
```

## Testing

### Lose scenario
In the lose scenario, we complete one game (where we lose) at level 3 (i.e. 3 mines in the 5x5 board) and start a new game at level 2 (i.e. 2 mines).  

The purpose of this scenario is to test that we detect correctly when a mine is detonated, that we compute correctly the `n_nearby_mines` value (mines in a square around the cell we just cleared) and that we can start a new game without issue. We also verify that the random number generator works properly with the right number of mines.

For the lose scenario, there are three steps:

1. We initialize the FSM (red box)
2. RNG chooses the mines positions at index 6, 17 and 23 (purple box)
3. The user clears several cells successively (cells 12 and 17) (blue box). As cell 17 has a mine, it triggers the gameover (`out_gameover`). 
4. We start a new game by generating new mines (index 6 and 23) for level 2 (yellow box)

### Win scenario
In the win scenario, we complete one game at level 3 by clearing all the cells but those containing the mines (all but cells 6, 17 and 23). The purpose of this scenario is to check that once we have cleared all the mines, the variable `out_win` is triggered, that we can properly start a new game and that the score is increased.


The win scenario is similar:

1. we initialize the FSM (red box)
2. RNG chooses the mines positions at index 6, 17 and 23 (purple box)
3. The user clears all the  cells successively (except for 6, 17 and 23) (blue box)
3. The user wins the game (`out_win`) and the global score is increased to 1 (yellow box)



<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONTACT -->
## Contact
Alexis Le Glaunec - alexis.leglaunec@rice.edu
<p align="right">(<a href="#top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[license-shield]: https://img.shields.io/github/license/alexis51151/SAT-DPLL.svg?style=for-the-badge
[license-url]: https://github.com/alexis51151/SAT-DPLL/blob/master/LICENSE.md
