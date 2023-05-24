# run-automatic1111-stable-diffusion-web-ui-macos-docker
Starting point repo that allows you to open your repo as a Dockerfile

This repo assumes you know how to run a Docker container in a macOS M-series chip and use Visual Studio Code's (VSC) Docker and Dev Container extensions.

If you want detailed instructions, go to [this Gist](https://gist.github.com/BillRaymond/74b82f703239480518af1fa67a240d96).

## Pre-requisites
### Software/setup
Before you run this code, make sure you have the following:

1. macOS M-series chip with Ventura (minimum)
2. A [Docker](https://docker.com) account and the Apple Chip Docker desktop installed locally
3. Visual Studio Code for Apple Silicon
4. At minimum, a free [GitHub](https://github.com) account

### Docker configuration
While [this Gist](https://gist.github.com/BillRaymond/74b82f703239480518af1fa67a240d96) will give you more information, I suggest you run the Docker Desktop, go to ⚙ `Settings->Resources` and pump up the resources. You can lower them later.

### VSC configuation
1. Install the `Docker` extension from Microsoft
2. Install the `Dev Container` extension from Microsoft

## Clone this repo
1. Run VSC, clone the repo locally and open the folder
2. Type COMMMAND+SHIFT+P and select the `Dev Containers: Open folder in container...` option. Select `Dockerfile` and select `Ok` without selecting any additional options
3. Run a 