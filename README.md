# FAIGHT - Fundator Artificial IntelliGence Heritage Tournament

This repository contains all the information you need in order to join the Fundator Artifical IntelliGence Heritage Tournament (hereby known as FAIGHT). As the name suggests, FAIGHT is a competitive programming competition hosted by [Fundator](http://www.fundator.no). The competetion is open for **HVEM ER DEN ÅPEN FOR? :||**. 

FAIGHT is a re-hosting of the competition in Artificial Intelligence at The Gathering 2017. That competition was created and hosted by Martin Sandsmark. 

The goal of the competition is to write the AI for a bot that competes against another bot in a game of ghost-PACMAN. For further details and competition rules, see Martin's repository: [https://github.com/sandsmark/aicompo-tg17](https://github.com/sandsmark/aicompo-tg17)

**Todo:**
- Soft deadline (30min after meetup? should just be a "your github url points to our code structure" check)
- GitHub instructions

## Getting started
1. Start by reading the competition rules at  [Martin Sandsmark's repository](https://github.com/sandsmark/aicompo-tg17).
2. Download Ghostly, the competition host program
    * Windows: Either download the compiled Windows binary [ghostly-win32.zip](https://github.com/sandsmark/aicompo-tg17/releases) *(recommended)*, or [follow these instructions](https://github.com/sandsmark/aicompo-tg17#alternative).
    * Linux: [How to compile manually on Linux](https://github.com/sandsmark/aicompo-tg17#how-to-compile)
3. Select your language from the supported languages list.
4. *(Optional)* To hit the ground running, take a look at the supplied scaffolding/sample code for each supported language. The code contains basic client/server logic needed, as well as other boilerplate sections of code surrounding the actual AI. There are also a handfull of working "stupid-bots" you can work against as a MVP benchmark, or just look at some of their use of the utilities provided.
4. For pain free entry submissions, follow the guidelines below for the required file and folder conventions.
5. Happy coding!

### Supported languages
Competition entries can be written in either of the following languages:
* python
* NodeJS

### Important: File and folder structure for automated entry submittion
For both python and NodeJS the only *strictly* enforced requirement is the need for a main file that's named according to the pattern:
**entrypoint_NAME** where **NAME** also has to match the name in the socket connection code, and for NodeJS also in the script path. **MATS YOU THIS YES?**
That's it.
