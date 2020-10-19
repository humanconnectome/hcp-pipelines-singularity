# hcp-pipelines-singularity
The definition files for creating singularity containers that can run in the WashU HPC

## Cloning with Submodules
Don't forget to pull down the submodules as well
```
git clone https://github.com/mobalt/hcp-pipelines-singularity --recursive
```

## Building the Singularity Container
```
sudo singularity build pipelines.sif Singularity.def
```
