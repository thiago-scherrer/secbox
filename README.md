# secbox

Another tool for pentest :)

## Requirements

- docker-compose >= 1.25.4
- docker >= 19.03.8
- internet (build only)

## How to use

Go to the root of the project and execute:

```sh
docker-compose build
```

After the build, run (maybe a few hours later):

```sh
docker-compose run secbox bash
```

All the software below is available for use:

- exploitdb
- exploitdb-bin-sploits
- gdb
- gobuster
- golismero
- hashcat
- hydra
- metasploit-framework
- minicom
- nasm
- nikto
- nmap
- sqlmap
- sslscan
- tor
- wordlists
- wpscan
