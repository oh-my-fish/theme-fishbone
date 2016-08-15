<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

# fishbone
A clean theme for [fish shell](https://fishshell.com) managed by [Oh my fish](https://github.com/oh-my-fish/oh-my-fish)

<br />
<br />

## Example

<img src="https://github.com/pantuza/fishbone/raw/animation/fishbone.gif" align="center" />

## Installation

```fish
omf install fishbone
```
> omf (Oh my fish) is a package manager for fish shell. Just like pip is for Python and gem is for Ruby

## Features

* Only displays an abbreviatted path on left side;
* Displays the current time at right;
* On git repositories shows its current branch and modifications on right side;
* Colon at left side becames red if last command fails;
* At start up, shows user name, date, uptime, informations about OS, CPU, memory and network;
 
## Project structure

We have two branches:

* master: Where the necessary files for theme is;
* animation: There is two adicional files (animation.cxf, fishbone.gif) that is used for theme example at README.md file.

The theme files are separated as follows:

* fish_prompt.fish: Has the function to print the prompt line;
* fish_right_prompt.fish: Prints the right side of the shell prompt;
* fish_greeting.fish: Prints the welcome message at shell session start up;


## Contributing

We are not stringent with contributions.
Just fork the project, do some modifications and send us a Pull request : )
Bugs and improvements can be reported/suggested as [issues](https://github.com/oh-my-fish/theme-fishbone/issues).


# License

[MIT][mit] © [pantuza][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/pantuza
[contributors]:   https://github.com/pantuza/fishbone/graphs/contributors
