#!/bin/bash

# raise error if this script is not executed in this directory
if [ ${0} != "setup.sh" ]; then
  echo -e "Fatal error: this script must be executed in bin directory."
  echo -e "You need to change directories so you can execure this script by"
  echo -e "typing the following command.\n"
  echo -e "$ sh setup.sh\n"
  echo -e "Aborted."
  exit 1
fi

function link_directory() {
  # if the filename that is about to link is
  # already exists and is a file
  # or a directory but not a link directory
  # or a link directory but another directory linking, then
  if [ -f ${2} ] || [ -d ${2} ] && [ ! -L ${2} ] || [ -L ${2} ] && [ "`readlink ${2}`" != "${1}" ]; then
    echo -e "${2} already exists. You need to rename or move ${2} to another filename or directory.\n"
    echo -e "Aborted."
    exit 1
  # else if the filename is not created,
  # so this script has not been executed yet or
  # unlink these directories, then
  elif [ ! -e ${2} ]; then
    ln -s ${1} ${2}
  fi
}

link_directory ${PWD}/src $HOME/.bin

echo -e "Set up successfully.\n"
echo -e "You need to set a path so you can run the commands without absolute path."
echo -e "You can download a path setup script from\n"
echo -e "https://github.com/noraworld/dotfiles/blob/master/bash/bin.bash\n"
echo -e "Then load it by running the following command.\n"
echo -e "$ source path/to/bin.bash\n"
echo -e "The command above should be written in bashrc to be run as you log in a shell."

exit 0
