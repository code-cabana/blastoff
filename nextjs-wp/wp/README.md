# NextJS + Wordpress CMS

## Prerequisites

- Docker
- NodeJS

## Usage

### Getting started

1. Duplicate `.env.sample` -> `.env`
1. Adjust any variables inside `.env` as desired
1. `npm start`
1. Wait for MySQL database to initialize
1. `npm run bootstrap`
1. Navigate to http://localhost:4000/wp-admin/
1. Login using credentials defined inside `.env`

## Commands

```
npm run start - spins up wordpress server
npm run stop - destroys wordpress server containers but preserves database volume
npm run destroy - destroys all related servers and volumes
```

## References

- https://github.com/vercel/next.js/tree/canary/examples/cms-wordpress
- https://davidyeiser.com/tutorials/docker-wordpress-theme-setup
- http://www.discoversdk.com/blog/wp-cli-with-docker
- https://github.com/WordPress/gutenberg/tree/HEAD/packages/env#readme
- https://aschmelyun.com/blog/build-a-solid-wordpress-dev-environment-with-docker/
- https://www.youtube.com/watch?v=kIqWxjDj4IU&ab_channel=AndrewSchmelyun
- https://github.com/conetix/docker-wordpress-wp-cli
