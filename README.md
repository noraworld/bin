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

3. Make them executable when sudo mode (Optional)

```sh
$ sudo visudo
```

```diff
# Add `/home/username/.bin` path to the end of line of `secure_path`. Replace `username` with your own username.
- Defaults    secure_path = /usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
+ Defaults    secure_path = /usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/home/username/.bin
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
