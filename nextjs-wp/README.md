# NextJS + Wordpress

This stack combines NextJS with a headless wordpress instance

Refer to the README.md files in each subdirectory for more details

## Prerequisites

- Docker
- NodeJS

## First time setup

Wordpress instance needs to be installed and boostrapped before the frontend can connect to it

1. `npm run wp:start`
1. `npm run wp:bootstrap`

## Get started

Run `npm run dev` to launch wordpress instance and NextJS frontend simultaneously

# To Do

- Calendar links still point to localhost:4000 instead of 3000. Need to tell wordpress to change all links to 3000 somehow
