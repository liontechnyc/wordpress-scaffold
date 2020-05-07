# Wordpress Stack

> Rapidly launch **Wordpress** application runtime to develop *sites*, *themes* or *plugins*.

## Development

> You will need [Docker](https://www.docker.com/get-started) running on your machine.

First copy and configure environment variables: 

`cp template.env .env`

With your favorite text editor configure your `.env` file.

Start environment with Docker Compose:

`docker-compose up`

Stop the environment:

`docker-compose down`

## Important Notes

### Running in Windows

Docker on windows utilizes a [local virtual machine](https://docs.docker.com/machine/get-started/) for networking, this can make accessing exposed ports difficult. First, start the virtual host then locate the host's IP address:

`docker-machine start`

`echo %DOCKER_HOST% || echo ${DOCKER_HOST}`

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
