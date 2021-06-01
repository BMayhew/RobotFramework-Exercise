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

## Running in Gitlab (Local)

Included .gitlab-ci.yml file which can be run from a local machine by [Installing](https://docs.gitlab.com/runner/install/) the correct version, and [Registering](https://docs.gitlab.com/runner/commands/#gitlab-runner-register) the runner on your local machine. Once properly configured you should be able to run `gitlab-runner --version` and see a version number. Once complete the below command can be run to execute simulating a gitlab-runner container in the cloud.

``` bash
gitlab-runner exec docker robot-gitlab-test
```

## Contributing

If a new dependencies is added please be sure ot update the requirements.txt file properly.
