# dev-container
Repository of my commonly used dev-containers.

## How to use
Branches specify the type of dev container configuration/ how to use it.  Simply clone the desired branch into the .devcontainer file in vscode and rebuild the container

### Vercel nodejs container

```bash
# CAREFUL TO NOT REMOVE YOUR .devcontainer FILE IF YOU STILL WANT IT'S CONTENTS
cd ./.devcontainer && rm .devcontainer
# Clone vercel-nodejs branch into current directory
git clone https://github.com/acgriswold/dev-container.git --branch "vercel-nodejs" ./
```

## Troubleshooting..
Sometimes, dev containers will fail during the build, but don't worry! Before closing out of the "retry" window follow these steps to revive your container. Open up the volume that contains the .devcontainer file on another vscode window and edit the configuration to remove any errors. Press the "retry" button on the other window to rebuild the container.
