#!/usr/bin/env sh

yaml2json resume.yml > resume.json && npx resume-server -p 4000 -t elegant resume.json
