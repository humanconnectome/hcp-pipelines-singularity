.PHONY = update clean upload
UPLOAD_USER = HCPpipeline
SERVER = login02.chpc.wustl.edu


update:
	git pull --recurse-submodules

clean:
	echo "Removing previous container"
	rm *.sif

build: Singularity.def
	echo "Generating the singularity container"
	sudo singularity build hcp-pipelines-runner.sif Singularity.def

upload: hcp-pipelines-runner.sif
	echo "Uploading to ${SERVER}"
	scp -p hcp-pipelines-runner.sif ${UPLOAD_USER}@${SERVER}:/export/HCP/qunex-hcp/production_containers/hcp-pipelines-runner.sif
