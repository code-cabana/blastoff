# Wordpress

Barebones WordPress instance that runs inside a Docker container

## Commands

```
npm run start - spin up a blank wordpress instance
npm run bootstrap - remove bloatware and apply themes/plugins defined in bootstrap.sh
npm run stop - destroy docker containers, but keep docker volumes
npm run destroy - destroy all docker servers and volumes, but keep database dump file
npm run db:export - generate a database dump file at /wp/db/db.sql
npm run db:purge - deletes the database dump file
```

## Usage guide

### Setup

1. Duplicate `.env.sample` -> `.env`
1. Adjust any variables inside `.env` as desired
1. `npm start`
1. Wait for MySQL database to initialize
1. `npm run bootstrap`
1. Navigate to http://localhost:4000/wp-admin/
1. Login using credentials defined inside `.env`

### Theme development

Rename & modify the `wp-content/my-theme` directory as needed, but remember to also update `src/bootstrap.sh` to reference the correct theme

[wphierarchy.com](https://wphierarchy.com/) is helpful for understanding which files are responsible for what in a wordpress theme

### Modifying content

To commit any changes you've made within the wordpress interface, run `npm run db:export` to generate a database dump file at `/wp/db/db.sql`. This file can be committed, and will be read during any future runs of the `bootstrap` command

### Start over

To destroy all resources and start from scratch, follow this process:

1. `npm run destroy`
1. `npm run db:purge`
1. `npm start`
1. `npm run bootstrap`

## References

- [How to Create a Custom WordPress Theme - Full Course](https://youtu.be/-h7gOJbIpmo)
