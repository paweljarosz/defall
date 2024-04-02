# DefALL

DefALL is an imaginative module for any Lua project with special example in the Defold game engine, that utilizes the Powerful Lua Large Language Ultimate Model (PLLLUM) that writes ALL code for you based on what you meant to write. Or generate unprecedented game ideas. Perfect for developers seeking inspiration with a touch of humor.

DISCL4IM3R: T|-\iS /\/\0|)U1e |S /=0r |-|U/\/|()r pVr|*0sEs ()|\|ly /=()r /\pR|1 /=o0l's |)4y.

Ehm, some glitch. Please, ignore it.

## Features

- ~~Utilises powerful AI solutions for breathtaking new solutions.~~
- ~~Simulates the real life like process of thinking and processing thoughts for added dramatic effect.~~
- Encourages taking coffee breaks with prompts when the system encounters a glitch.
- Generates unique game ideas by combining different elements of game design. This is an actual useful feature. For real.

## Online version

Online version of the generator is available here: [https://paweljarosz.itch.io/defall](https://paweljarosz.itch.io/defall)

## Contributing

Feel the creative spark? Contributions (especially with new game ideas) are welcome! If you have ideas for new game descriptions or enhancements, please open an issue or submit a pull request.

## Installation

You can use DefALL in your own Defold project by adding this project as a Defold library dependency. Open your `game.project` file and in the dependencies field under `Project` add:

    `https://github.com/paweljarosz/defall/archive/master.zip`

Or point to specific release.

Once added, you must require the main Lua module in your scripts via

```lua
    local log = require("log.log")
```

---

## API

### defall.init()

Initializes the DefAll module, seeds the random number generator, and starts the interactive thought-reading process.

### defall.get_game_ideas()

Returns a unique game idea composed of four parts: a first idea, a genre, a middle idea, and a last idea. Each part is selected randomly from a predefined list. Actually useful.

---

## Example

Here's how you can use DefAll to inspire your next game project:

```lua
    local defall = require "defall"

    function init(self)
        defall.init()
    end
```
After initialization, the module will guide you through an amusing sequence that reads your thoughts and generates a game idea, displayed piece by piece.

---

## AUE (Actual Useful Example)

Here's how you can use DefAll to inspire your next game project:

```lua
    local defall = require "defall"

    function init(self)
        local first, genre, middle, last = defall.get_game_ideas()
        print("Your next game idea is: "..first..genre..middle..last)
    end
```

---

This project was created from the "empty" project template on April 1st, 2024 so YOU KNOW NOW.

The settings in ["game.project"](defold://open?path=/game.project) are all the default. A bootstrap empty ["main.collection"](defold://open?path=/main/main.collection) is included.

If you run into trouble, help is available in [our forum](https://forum.defold.com).

Happy Defolding!

---

## License

DefALL is released under the MIT License.

## Disclaimer

Remember, DefALL is an April Fool's joke and not intended for serious use (maybe except game ideas generation). It's designed to bring a smile to your face and maybe even inspire you with its randomly generated game ideas.