PROJECT ?= example-project


.PHONY: build
build: 
	gcloud builds submit --project $(PROJECT) -t gcr.io/$(PROJECT)/liquidctl-docker:latest -t gcr.io/$(PROJECT)/liquidctl-docker:$(shell date +%s)
