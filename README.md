# title

Welcome to your new dbt project!

### Using the starter project

- Update the .env file as per your configuration
- Update the profiles.yml file in dbt/ folder as per your configuration
- Copy the dbt/profiles.yml to .dbt/ 
- Copy .env file to dbt/
- Remore all contentes from dbt/ folder except Dockerfile, profiles.yml, .env and requirements.txt
- Copy your dbt application into dbt/ folder.
- `docker-compose up --build`
- you can run any command by `docker-compose run dbt test`
- or simply `docker-compose start` or other command

### to run as Docker standalone container

- go to /dbt folder
- compile with `docker build --tag demo-dbt-docker .`
- to docker run copy following command as it is and paste into command line after replacing <dbt run or any other dbt command> with say `dbt run`
- docker run --rm -it \
    -v $PWD:/dbt \
    -v profiles.yml:/root/.dbt/profiles.yml \
    demo-dbt-docker <dbt run or any other dbt command>

### Resources

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
