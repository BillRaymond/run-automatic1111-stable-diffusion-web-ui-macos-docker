# run-automatic1111-stable-diffusion-web-ui-macos-docker

👉 Want to run Stable Diffusion on macOS with Apple Silicon (M-series), but do not want to install all the code on your local machine? 


| ![](https://user-images.githubusercontent.com/15895828/240464635-34d1aaab-deae-494d-8209-c6c1cb58574a.png) |
|:--:|
| Stable Diffusion Prompt: `A beautifully colored cat sitting in the clouds with a rainbow in the background, in the style of Andy Warhol` |

This repo contains a Dockerfile and scripts that will allow you to run the [Stable Diffusion Web UI (SDWUI)](https://github.com/AUTOMATIC1111/stable-diffusion-webui) from [AUTOMATIC1111](https://github.com/AUTOMATIC1111) on your machine using Docker and Visual Studio Code. This means you do not have to install things like Python and all the other required dependencies directly on your computer.

If you know what you are doing with Docker and Visual Studio code, then continue on with the instructions below, but please read the FAQ and Docker details in this [Gist](https://gist.github.com/BillRaymond/74b82f703239480518af1fa67a240d96).

If you do not know what you are doing, ignore this repo and follow the instructions in my [Gist](https://gist.github.com/BillRaymond/74b82f703239480518af1fa67a240d96) instead.

## ✅ Pre-requisites
### ⚙️ Software/setup
Before you run this code, make sure you have the following:

1. An Apple Mac running Apple Silicon with macOS Ventura (minimum)
2. A [Docker](https://docker.com) account and the Apple Chip Docker desktop installed locally
3. Visual Studio Code for Apple Silicon
4. At minimum, a free [GitHub](https://github.com) account

### 🚢 Docker configuration
While [this Gist](https://gist.github.com/BillRaymond/74b82f703239480518af1fa67a240d96) will give you more information, I suggest you run the Docker Desktop, go to ⚙ `Settings->Resources` and pump up the resources. You can lower them later.

### 🧑‍💻 VSC configuation
1. Install the `Docker` extension from Microsoft
2. Install the `Dev Container` extension from Microsoft

## 🖇️ Fork, Clone, or Download this repo
For purposes of this README, you will clone the repo, but feel free to download and extract the file, fork it, or get the code any way you like. Just make sure you enable Git and do an initial commit before the first-time setup.

1. Run VSC, clone this repo locally and open the folder
```
https://github.com/BillRaymond/run-automatic1111-stable-diffusion-web-ui-macos-docker
```
2. Type `COMMMAND+SHIFT+P` and select the `Dev Containers: Open folder in container...` option
3. Select `Dockerfile` and if prompted to install additional items, do not select them and select `Ok`

## 1️⃣ First-time setup
Run these steps immediately after building the Docker container from the Dockerfile.

You do not need to run the code again. Later, you might want to pull an even newer version of AUTOMATIC1111/stable-diffusion-web-ui code from GitHub, but that is something you will have to do manually.

1. In VSC, open a terminal window
2. To clone the AUTOMATIC1111/stable-diffusion-web-ui code, type the following in the terminal window:
```
sh runonce-step1-clone-sdwui.sh
```
2. Stable diffusion cannot run without a model. You can download a model yourself and put it in the correct `stable-diffusion-web-ui/models` folder. Or, you can run the following command in the terminal and it will download the file for you.
```
sh runonce-step2-downloadsdmodel.sh
```
3. You will need to edit some code in the `stable-diffusion-web-ui` folder. Run the following command in a terminal window for instructions:
```
sh runonce-step3-instructions.sh
```

## 1️⃣ Run once _OR_ any time you ↪️ rebuild the Docker container
To run SDWUI, you need a non-root user. This script will create that user. If you attempt to run this again, you could encounter an error. However, if you re-build the Docker container, you will have to run this again.


1. Run the following script in terminal to crate a non-root user (by default it will be named `sdwui`):
```
sh runonce-step4-addnonrootuser.sh
```
2. ⚠️ Make sure you `kill` the terminal window (a 🗑️ trash can icon) **or** `COMMAND+SHIFT+P` and `Terminal: Kill all terminals`

## 🎉 Run SDWUI
Now that you followed all the first-time setup options, you can run SDWUI!

1. Open a new terminal window and run the following command:
```
sh runsdwui.sh
```
2. At some time in the process, a URL will appear in the terminal window, like this: `http://127.0.0.1:7860`. Locate the url and `COMMAND+CLICK` to open SDWUI in the browser. 

> **⚠️ Beware!**: The URL may show, but the model(s) may still be loading, so watch the terminal window before attempting to use SDWUI.

3. Once the models are built, you can use SDWUI in the browser! As always, remember it will be slow and may crash. This is still a Docker container running Linux on top of macOS.

## 😱 Having trouble? See an ominous 🔪 `Killed.` message? 
Visit this [Gist](https://gist.github.com/BillRaymond/74b82f703239480518af1fa67a240d96) and check out the FAQ and Docker sections.
