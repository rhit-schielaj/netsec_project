# Network Security Lab Project

Everything needed to get a lab off the ground is included here. These files are:

1. `gen_env_file.sh`: No need to change this file. It will generate the uid and
   gid and save them in an `.env` file that docker compose can read.

2. `docker-compose.yml`: A generic docker compose file with three containers:
   `client`, `server`, `firewall`, and `honeypot`.

   Client, server, and firewall all run a netsos:fw image
   honeypot runs a python:3.12 image and is meant to have a file directory
      for setting up cowrie honeypot.

3. `volumes/`: The shared volumes directory with the main 3 containers. Contains
   sanity checking scripts, `vim` config files, and ssh and telnet configuration.

---

<!--
CHANGELOG:

- 2025-2-23 v0.2: File created and default options included.

-->
