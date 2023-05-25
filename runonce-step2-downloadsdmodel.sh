# Download a Stable Diffusion model
cd stable-diffusion-webui
git config --global --add safe.directory "*"
cd models/Stable-diffusion
echo "About to download a >3GB Stable diffusion model."
echo "This will take a long time."
echo "Type CONTROL+C if you need to quit"
curl -LJO "https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
