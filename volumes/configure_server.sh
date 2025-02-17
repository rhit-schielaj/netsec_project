#!/bin/bash

# configure_workstation.sh v1.0
#
# Create a working sshd service running.
#
# Author: Mohammad Noureddine <mohammad.noureddine4@gmail.com>
# Late modified: Sun 31 Dec 2023
#

VERSION_NUMBER="1.0"
VERSION_DATE="December 2023"

# config variables

# color variables
RED='\033[1;31m'    # red
YELLOW='\033[1;33m' # yellow GREEN='\033[1;32m'  # green
RESET='\033[0m'     # no color

# Print a warning for the user.
#
# @param First argument is the warning message to print to the user.
#
print_warning() {
  echo -n -e "$YELLOW"
  echo -e "[WARNING] $1"
  echo -n -e "$RESET"
}

# Print an error message for the user
#
# @param First argument is the error message to print to the user.
#
print_error() {
  echo -n -e "$RED"
  echo -e "[ERROR] $1"
  echo -n -e "$RESET"
}

# Print a log for the user.
#
# @param First argument is the log message to print to the user.
#
print_log() {
  echo -n -e "$GREEN"
  echo -e "$1"
  echo -n -e "$RESET"
}

# Print the usage description for this program, usually program exits after
# this.
#
print_usage() {
  echo -e "usage: $0 [-h] [-V]"
  echo -e ''
  echo -e 'Setup telnetd for working with tcp labs.'
  echo -e ''
  echo -e 'options:'
  echo -e '-h       Show this help message and exit.'
  echo -e '-V       Print version number and exit.'
}

# Print the version of this program, usually program exits after this.
print_version() {
  echo -e "$0 version $VERSION_NUMBER of $VERSION_DATE"
}

# parse command line arguments
while getopts ":hV" arg; do
  case $arg in
    V)
      print_version
      exit 0
      ;;
    h | *)
      print_usage
      exit 0
      ;;
  esac
done
shift $((OPTIND-1))

print_log "Changing root password for fun and profit"
chpasswd<<<"root:netsec"

print_log "Configuring workstation..."
# print_log "Start the sshd service"
# service ssh start
# echo -n -e "Step 1: "
# apt update > /dev/null 2>&1 && apt install -y curl wget lynx > /dev/null 2>&1
# echo -e "Ok."

echo -n -e "Step 2: "
service ssh stop > /dev/null 2>&1
echo -e "Ok."

echo -n -e "Step 3: "
cp /volumes/ssh/ssh_config /etc/ssh/sshd_config
echo -e "Ok."

echo -n -e "Step 4: "
service ssh start > /dev/null 2>&1
echo -e "Ok."

print_log "Done and goobye..."