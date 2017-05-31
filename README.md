# bin
A set of the self-making commands.

## How to setup
1. Cloning this repository and run the setup script

```sh
$ git clone https://github.com/noraworld/bin
$ cd bin
$ sh setup.sh
```

2. Download a path setup script and run it

```sh
$ git clone https://github.com/noraworld/dotfiles/blob/master/bash/bin.bash
$ source dotfiles/bash/bin.bash
```

### Recommendation
`source` command above should be written in `~/.bashrc` so `bin.bash` will be loaded as you log in a shell.

Add the following to `~/.bashrc`

```sh
if [ -e path/to/bin.bash ]; then
  . path/to/bin.bash
fi
```

**Tips:** If you use my [dotfiles](https://github.com/noraworld/dotfiles), the second step and the recommendation step can be done automatically, so you don't need to do manually :)
