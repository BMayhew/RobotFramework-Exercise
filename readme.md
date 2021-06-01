# Robot Framework Demo Repo

## Dependencies

You should have python 3.8 and pip installed. The below command will install all dependencies.

``` bash
pip install -r requirements.txt
```

## To Run Locally

``` bash
robot api.robot
```

## Run in Docker

Build the Docker Container

``` bash
docker build -t robot-test .
```

Run the Robot script within docker container (note: this will work without having python installed on your computer)

``` bash
docker run --rm -t robot-test
```

## Contributing

If a new dependencies is added please be sure ot update the requirements.txt file properly.
