DEFAULT_GOAL := help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z0-9_-]+:.*?##/ { printf "  \033[36m%-27s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: mongo
mongo: ## Mongo
	docker build -t guyaltd/python:mongo -f python3.8.2-slim-mongo/Dockerfile python3.8.2-slim-mongo/

.PHONY: slim
slim: ## Slim
	docker build -t guyaltd/python:slim -f python3.8.2-slim/Dockerfile python3.8.2-slim/

.PHONY: pyjwt
pyjwt: ## Pyjwt
	docker build -t guyaltd/python:pyjwt -f python3.8.2-pyjwt/Dockerfile python3.8.2-pyjwt/

.PHONY: ml
ml: ## Machine learning python packages
	docker build -t guyaltd/python:ml -f python3.8.2-ml/Dockerfile python3.8.2-ml/

.PHONY: schedule
schedule: ## Schedule
	docker build -t guyaltd/python:schedule -f python3.8.2-schedule/Dockerfile python3.8.2-schedule/

.PHONY: all
all: mongo slim pyjwt ml schedule ## Build all images