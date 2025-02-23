# Network Security Lab Template

This is a generic template for generating a lab assignment. Everything needed
to get a lab off the ground is included here. These files are:

1. `gen_env_file.sh`: No need to change this file. It will generate the uid and
   gid and save them in an `.env` file that docker compose can read.

2. `docker-compose.yml`: A generic docker compose file with three containers:
   `client`, `server`, `firewall`, and `honeypot`.

   These containers will use the latest version of the netsos container. All
   three are on the same subnet on 10.10.0.0/24

3. `volumes/`: The shared volumes directory with the containers. Contains
   sanity checking scripts and `vim` config files.

---

<!--
CHANGELOG:

- 2025-2-20 v0.2: File created and default options included.

-->
