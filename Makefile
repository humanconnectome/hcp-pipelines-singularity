.PHONY = update clean upload
SERVER = login2


update:
	git pull --recurse-submodules

clean:
	echo "Removing previous container"
	rm *.sif

upload: pipelines.sif
	echo "Uploading to ${SERVER}"
	scp pipelines.sif ${SERVER}:/export/HCP/qunex-hcp/production_containers/pipelines.sif

pipelines.sif: Singularity.def
	echo "Generating the singularity container"
	sudo singularity build pipelines.sif Singularity.def
