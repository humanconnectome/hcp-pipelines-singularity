# Singularity Definitions for HCP Pipelines
The definition files for creating singularity containers for the XNAT pipelines
wrapper code so that it can run in the WashU HPC.

## Cloning with Submodules
Don't forget to pull down the submodules as well, with the `--recursive` flag.
```
git clone https://github.com/humanconnectome/hcp-pipelines-singularity --recursive
```

## Development

| Command              | Task                                                 |
| -------------        | ------------------------                             |
| `make clean`         | Remove previous container image.                     |
| `make update`        | Update all the git submodule repos.                  |
| `make upload`        | Upload the container to correct location in the HPC. |
| `make pipelines.sif` | Generate a container image from .def file            |
