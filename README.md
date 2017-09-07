# FAIGHT - Fundator's Artificial IntelliGence Heritage Tournament

This repository contains all the information you need in order to participate in the Fundator Artifical IntelliGence Heritage Tournament (hereby known as FAIGHT). 

FAIGHT is a competitive programming competition hosted by [Fundator](http://www.fundator.no).

## Index
- ***Overview of the competition***
High-level explanation of the competition, tournament structure, prizes and dispute settlement.
- ***Game rules***
Overview of the game rules, win-lose conditions, how you score (or lose) points.
- ***How to get started***
Walks you through the steps required to setup a local bot development environment.
- ***How to submit code***
All tournament submissions are done through GitHub. This section explains how. 
- ***Sample bot: API documentation***
Fundator provides a boilerplate bot written in Python. The sample code handles client/server connectivity, message parsing, automation compliance with regards to files/folder structure  etc. You just need to replace the (very) simple AI with your own!
- ***Sample bot: Pseudo-code edition&trade;***
A walkthrough of the sample bot in pseudo-code form.

***Note***: For automation purposes, please make sure you follow the guidelines for file/folder structure in ***How to submit code***.

<div style="page-break-after: always;"></div>

## Overview of the competition
FAIGHT is a game similar to PAC-MAN, only you are one of the ghosts. 

You create an AI that controls a ghost. Initially you can't pass through other ghosts, so watch out for getting blocked in. You gain points by eating pellets, and by eating a super pellet you can eat other ghosts. The round is over when either the last pellet is gone or there is only one player left.

The competition is hosted as a [double elimination](https://en.wikipedia.org/wiki/Double-elimination_tournament) style tournament where bots face each other one-on-one in three-round matches. The first bot to win two rounds wins the match.

Any disputes are resolved solely at the discretion of Fundator Judges&trade;.

### Prizes: TODO
- 1st place: **Heder**
- 2nd place: **Ære**
- 3rd place: **$$$**

<div style="page-break-after: always;"></div>

# Game rules
* You can move up, down, left or right each game tick. A game tick lasts ~100 ms.
* You only move one square per game tick.
* If you don't send a new command until the new game tick starts your bot doesn't move.
* Each game tick the latest command sent by all players is handled in a randomized order (randomized for each gametick).
* If you try to move into a square that is already occupied by another bot the move fails.
* You win by having the most points at the end of the round.
* The round is over when there are either no pellets left, or only one player left.
* If you eat a superpellet (the big pellets) you gain the ability to eat other players for 100 game ticks (i. e. 100 moves).
* If you eat another player (i. e. collide with it when you have the superpellet powerup) the player dies and you get all their points.
* If two players collide and both have eaten a superpellet the superpellet is ignored and it is handled like a normal collision.
* If a game isn't over after 600 game ticks have elapsed, sudden death mode is activated.
* In sudden death mode a monster is activated (the yellow thing).
* The monster tries to eat all pellets as quickly as possible.
* If you collide with the monster you die but don't lose your points.
* The tournament will be held on the ghostly map called "default.txt". (ghostly is covered further down.)

<div style="page-break-after: always;"></div>

# How to get started
For this competition, Fundator only supports Windows as the platform and python as the programming language. Fundator provides a Powershell script to get Windows users going as fast as possible. You *can* use Linux, but then there's a bit more manual labor getting things up and running.

Regardless of platform, all participants need a GitHub account and a repository for the bot code.

- If you do not have GitHub account, go [here](https://github.com/join?source=header-home) to create one.
- Create a new, empty GitHub repository for your bot code. Do NOT add a README file or .gitignore file at this stage - leave it empty.
![](https://i.imgur.com/983EMnf.png)


<div style="page-break-after: always;"></div>

# Getting started: Windows users
Fundator provides a Powershell script to get you going as fast as possible. Before running the script, you need to make sure of a couple of things.

### Pre-requisites before running Powershell script

1. Make sure you have *python* installed. If not, a late version of *WinPython* should work. *(download: [32bit](https://sourceforge.net/projects/winpython/files/WinPython_3.5/3.5.4.0/WinPython-32bit-3.5.4.0Qt5.exe/download) / [64bit](https://sourceforge.net/projects/winpython/files/WinPython_3.5/3.5.4.0/WinPython-64bit-3.5.4.0Qt5.exe/download))*
1. Make sure you have the python executable added to the Windows environment variables (PATH). You can test this by opening a command prompt and write the following command:
![](https://i.imgur.com/PslXo1L.png)

    If instead of the python version you get the error "'python' is not recognized as an internal or external command ...", open the Environment Variables dialog and edit the "path" variable:
![](https://i.imgur.com/k7ek4Y4.png)
1. Make sure you have *Git for Windows* (https://git-scm.com/download/win) installed and added to the Windows environment variables (PATH). The test procedure and remedies are exactly the same as for *python*, only with the following command:
![](https://i.imgur.com/LqZcuGt.png)

1. Make sure Windows allows running Powershell scripts. To test this, open a Powershell prompt as Administrator:
![](https://i.imgur.com/kDNVZPh.png)

    Type in the following command:
![](https://i.imgur.com/f2Iqi4R.png)

    If your policy is set to RemoteSigned, Unrestricted or Bypass, you should be fine. If the policy is set to Restricted or AllSigned, Windows won't allow you to run the Powershell script. To enable running of scripts, run the following command:
![](https://i.imgur.com/KhqiwSr.png)

    Confirm the prompt, and you should be good to go. You might want to reset the policy settings back to the old value when you're done, but that's up to you.

### Running the Powershell script
If all the pre-requisites above are met, read through the [script found
here](https://raw.githubusercontent.com/Fundator/ait-2017/master/OneClickFaight.ps1?token=AIVAgM4t68FvAUuJ3tSYC2YTXWrxw8YDks5Zs9BnwA%3D%3D).

The script downloads a bunch of files, so make sure to place it in a suitable folder to contain it all. Right-click and save the content to a file with a ***.ps1** extension:

![](https://i.imgur.com/NJR1LFW.png)

To run the script, simply right-click it and select "Run with PowerShell":
![](https://i.imgur.com/UbWAJfA.png)

<div style="page-break-after: always;"></div>

# Getting started: Linux users
To get going on Linux, you need to do the following:

### Register your bot for automatic retrieval
In order to automatically collect all bot submissions, participants need to register their bots in a Google Sheet. The sheet can be found here:
http://bit.ly/2iOHugN

The first column contains your bot name. Please adhere to the following regex: \^[a-zA-Z0-9]{4,10}$. That is, only A-Z or numbers, minimum length 4 characters, maximum length 10 characters.

The second column contains the GitHub repository URL for your bot's code. The URL **must** be in SSH format, *not* HTTPS:
![](https://i.imgur.com/DoWF5jA.png)

### Download ghostly
Ghostly is a PAC-MAN clone server application (the bots are the clients). To make ghostly run on Linux, you need to compile it manually:

- Check out the code found here: http://bit.ly/2iRvWJs
- Install the development packages for qt5 declarative and qt5 graphicaleffects
- Run `qmake && make`

### Download the sample bot
The sample bot can be found here: http://bit.ly/2eOJH7u

<div style="page-break-after: always;"></div>

# Sample bot

Fundator supplies a sample bot which you can use as a template for your own bot. The bot is automatically downloaded for Windows users running the PowerShell script. The sample bot repository can be found here: http://bit.ly/2eOJH7u

**NB**: If you choose to base your bot on the sample bot, please remember to update the part of the code that sets your bot's name.

# How to test your bot
To test your bot, you need ghostly. Windows will download ghostly automatically when running the Powershell script. Linux users need to download ghostly manually.

- Start ghostly.exe
- Start your bot (python your-bot-entrypoint.py)

There needs to be at least two players connected to ghostly before a game can start. Either add "Local user" in ghostly, or start a new instance of your bot. 

<div style="page-break-after: always;"></div>

# How to submit your bot
Participants must submit their bots through GitHub. Take a look at the "All users" section under "How to get started" for details on how to set up a GitHub account and an empty bot repository.

Once you have an empty repository on GitHub, it's time to initialize your local repository. Navigate to the directory where your bot code resides. If you want to start off using the sample bot, that would be in the *somewhere-on-your-drive\FAIGHTbots\python_boilerplate*.

Open a command prompt in this directory.

- Run `git init` to initialize a local repository
- Run `git add --all` to add all files and folders in the directory to source control
- Run `git commit -m "First commit"` to commit the added files and folders
- Run `git remote add origin your-repository-url-in-ssh-format` to connect your local repository to your (empty) GitHub repository.
    <sub>*example:`git remote add origin git@github.com:Fundator/FAIGHTbots.git`*</sub>
- Run `git push` to push your first commit to GitHub

It's generally good practice to push changes to GitHub often as you work.

**Important 0:**
The tournament application does not like weird characters in file/directory names. Please stick to [a-zA-Z_], no whitespace.

**Important 1:**
Your bot code needs a file name ***entrypoint_your-bot-name.py***. Note the underscore between *entrypoint* and *bot name* This is the file that will be fed as an argument to the *python* executable during the tournament.

**Make sure the bot name in the entrypoint filename matches the name sent when connecting to ghostly. In the sample bot code, the name is specified inside the entrypoint file.**

**Important 2:** 
The automatic bot loading script only fetches/clones from the *master* branch of your repository. Make sure your final bot code is merged to *master* if you end up using experimental branches etc.

<div style="page-break-after: always;"></div>

# Sample bot: API documentation
### Information that is statically available:
#### Map info
* A "Descriptor" holds named variables for all the characters that appears on the map:
    * open (empty floor tile)
    * closed (walled tile)
    * pellet
    * super_pellet
* A set of all "game_positions", all Positions that are not walls
*  A "map_neighbours" dictionary where the keys are all the "game_positions", which link to a list each of the reachable neighbouring Positions from that Position.
#### AI info
##### Default configuration for some basic "Values":
* How much a pellet is worth.
* How much a super pellet is worth.
* When you consider a dangerous enemy to be too close.
* When you consider the monster to be too close.

<div style="page-break-after: always;"></div>

### The information available after every state update:
#### Map info
* Full double array game map representation.
* Number of pellets left on the map.
* A set of all "pellet_positions".
* Number of super pellets left.
* A set of all "super_pellet_positions".
#### Player info
* Your position.
* Your score.
* If you are dangerous (still under the influence of the super pellet).
* Enemy position.
* Enemy score.
* If enemy is dangerous.
#### AI info
* Possible moves from your current Position.
* Game ticks left until the Monster shows up.
##### Basic state info:
These are based on the ticks left of both ghosts being dangerous. Say both ghosts eats a super pellet each at the same time, they're both dangerous, but until their ticks of being dangerous runs out they're equal and so "no-one is dangerous" just like if no-one had eaten any super pellets to begin with.
* If no-one is dangerous.
* If you are the one who knocks.
* If the enemy is dangerous.
* Is Monster on map.

<div style="page-break-after: always;"></div>

### Main Functions of Concern.
#### AI.py
##### get_move(), returns: int(range(0,4))
This function contains _all_ the structural bot code. The if this and that tree and what to do under which conditions.
##### astar_heuristic()
This function needs to be implemented if you want the path search to be based on A* instead of breadth first.
##### astar_move_cost()
Same.

#### Map.py
##### get_neighbours_of(Position) returns: Set<Position>
##### get_move_from(from_Pos,to_Pos) returns: int(range(0,4))
##### get_manhattan_dist(from_Pos,to_Pos) returns: int
##### get_euclidean_dist(from_Pos,to_Pos) returns: float
##### get_bf_path(start_Pos,(goal_Pos or goal_map_character)) returns: list<Position>
##### get_astar_path(start_Pos,(goal_Pos) returns: list<Position>

<div style="page-break-after: always;"></div>

## Sample bot: Pseudo-code edition&trade;
### The main AI structure function: get_move()
##### Line for line what the handed out code is doing:

    def get_move(self):
        if no-one on the map is dangerous
            find the way to the closest piece of treasure
            and then figure out your first step to take on this great adventure!
            Now take that step!
        but what if you are the one who Knocks?
            track the path to your prey!
            and figure out how to first approach the walking dead ghost
            Now start the hunt!
        But wait! the prey is actually the predator??
            and he is close by!? D:
                have a stress-induced mental breakdown and run around in panic!
            phew, he was actually far away!
                Just go hunting for treasure like it is aaall good times.

        can’t decide on what to do?
            don’t move.
