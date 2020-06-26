#!/bin/bash
case "$1" in
    "--restart" )
        docker-compose stop && docker-compose rm -f && docker-compose up -d && ./firstrun.sh && docker-compose ps;;
    "--restart-remove" )
        docker-compose stop && docker-compose rm -f && docker-compose up -d && ./firstrun.sh && docker-compose ps;;
    "--stop-remove" )
        docker-compose stop && docker-compose rm -f && docker-compose ps;;            
    "--stop" )
        docker-compose stop && docker-compose ps;;            
esac
