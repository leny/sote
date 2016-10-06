# sote

> Shell favorites paths, for faster `cd`.

---

**sote** is like a perpetual `pushd` : he stores your favorites system paths, so you can jump to it by typing `sote <name>`.

> **Note:** the current repo is a _fork_ to rewrite sote with `golang`.

## Installation

_TODO_

## Usage

```bash
sote [options] <name>

    Name:

        *                      Jumps to the path corresponding to the given name.

    Options:

        -h, --help                   Output usage information
        -v, --version                Output the version number
        -l, --list                   Lists the paths stored by sote.
        -s, --show <name>            Shows the path corresponding to the given name.
        -a, --add <name> [path]      Add the path to the store with the given name. If no path is given, use current path.
        -r, --remove <name>          Remove the path stored by sote at the given name.
        -c, --clear                  Clear all the paths stored by sote. Ask for confirmation before acting.
```

### Example

An explicit video is better than thousands words, so :

[![sote demo](https://asciinema.org/a/an6t4njn5tse2t227i843zgsa.png)](https://asciinema.org/a/an6t4njn5tse2t227i843zgsa?autoplay=1)

## Contributing

In lieu of a formal styleguide, take care to maintain the existing coding style.

## Release History

* **0.1.4**: Remove style from `show` command to use in `$()`.
* **0.1.3**: Bugfix embeds install procedure, transert ownership to [krkn](https://github.com/krkn) (*09/09/14*)
* **0.1.2**: Add an embeds install procedure (*31/07/14*)
* **0.1.1**: Bugfixes (*31/07/14*)
* **0.1.0**: Rewrite in bash, first release (*17/07/14*)
* **0.0.1**: Starting project (*19/06/14*)

## License

Copyright (c) 2014 krkn, forked in 2016 by leny  
Licensed under the MIT license.
