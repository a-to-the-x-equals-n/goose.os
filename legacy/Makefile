
# ---- HEART ----
SHELL := /bin/bash
SHELLFLAGS := -eu -o pipefail -c

.ONESHELL:
.PHONY: demo-banner tree pip docker-up docker-down docker-build docker-logs pack-data seed

# ---- LOCAL CONFIG ----
.SILENT:
.PHONY: install host dev-host client sql sql-status sql-stop

# ---- LOCAL VARS ----
FE = frontend
BE = api
DB = br_web

# ---- GLOBAL VARS ----
PY = python
DEPTH = 5

# COLORS
BU = 94
YW = 93
GR = 92
MG = 35
PR = 38;5;129

# TERMINAL TEXT DISPLAYS
I = $(shell printf '\033[1;$(PR)m')   # entry (magenta)
O = $(shell printf '\033[1;$(BU)m')   # exit (purple)
R = $(shell printf '\033[0m')         # reset

# ---- BANNERS ----
define banner-i
	@PHRASE="$(1)"; \
	WIDTH=$$(tput cols); \
	PHRASE_LEN=$${#PHRASE}; \
	PAD=$$(( (WIDTH - PHRASE_LEN - 2) / 2 )); \
	LEFT=$$(printf "%*s" "$$PAD" ""); \
	RIGHT=$$(printf "%*s" "$$PAD" ""); \
	LINE="$${LEFT// /=} $$PHRASE $${RIGHT// /=}"; \
	LINE=$${LINE:3:$$(( $${#LINE} - 4 ))}; \
	echo "$(I)$${LINE}$(R)"
endef

define banner-o
	@PHRASE="$(1)"; \
	WIDTH=$$(tput cols); \
	PHRASE_LEN=$${#PHRASE}; \
	PAD=$$(( (WIDTH - PHRASE_LEN - 2) / 2 )); \
	LEFT=$$(printf "%*s" "$$PAD" ""); \
	RIGHT=$$(printf "%*s" "$$PAD" ""); \
	LINE="$${LEFT// /=} $$PHRASE $${RIGHT// /=}"; \
	LINE=$${LINE:3:$$(( $${#LINE} - 4 ))}; \
	echo "$(O)$${LINE}$(R)"
endef

# ---- LOCAL TARGETS ----

# install python dependencies from api/requirements.txt
install:
	$(call banner-i,INSTALLING DEPENDENCIES)
	@pip install -r $(BE)/requirements.txt
	$(call banner-o,DEPENDENCIES INSTALLED)

# start the flask backend in production mode
host:
	$(call banner-i,WAKING HOST SERVER)
	@$(PY) $(BE)/run.py
	$(call banner-o,HOST ENDED)

# serve the frontend via python's built-in http server on port 8002
client:
	@cd $(FE)
	$(call banner-i,WAKING CLIENT SERVER)
	@$(PY) -m http.server 8002
	$(call banner-o,CLIENT ENDED)

# start the flask backend in dev + verbose mode (debug on, extra logging)
dev-host:
	$(call banner-i,WAKING HOST SERVER)
	@$(PY) $(BE)/run.py -D -V
	$(call banner-o,HOST ENDED)

# start the flask backend with verbose logging only (no debug mode)
vb-host:
	$(call banner-i,WAKING HOST SERVER)
	@$(PY) $(BE)/run.py -V
	$(call banner-o,HOST ENDED)

# ---- TEST ENDPOINTS ----

# test image upload endpoint with a sample image
test-upload:
	curl -X POST http://localhost:8003/upload -F "image=@api/test/test-image.png" -F "description=A very fine goose"

# fetch all images from the api
test-download:
	curl -S GET http://localhost:8003/images

# ping the api to check if it's alive
ping:
	curl http://localhost:8003/ping

# ---- SQL TARGETS ----

# start mysql and open an interactive session for the br_web database
sql:
	$(call banner-i,WAKING UP MYSQL)
	@sudo service mysql start
	$(call banner-o,SQL RUNNING)
	$(call banner-i,LOGGING IN)
	@mysql -u dev -p $(DB)

# check whether mysql is currently running
sql-status:
	@sudo service mysql status

# stop the mysql service
sql-stop:
	$(call banner-i,EXITING MYSQL)
	@sudo service mysql stop
	$(call banner-o,EXITED)

# ---- DOCKER TARGETS ----

# build images and start all containers (db, api, frontend) in the background
docker-up:
	$(call banner-i,STARTING CONTAINERS)
	@docker compose up -d --build
	$(call banner-o,CONTAINERS RUNNING — frontend :8002  api :8003  db :3306)

# stop and remove all running containers
docker-down:
	$(call banner-i,STOPPING CONTAINERS)
	@docker compose down
	$(call banner-o,CONTAINERS STOPPED)

# rebuild docker images without starting containers
docker-build:
	$(call banner-i,BUILDING IMAGES)
	@docker compose build
	$(call banner-o,BUILD COMPLETE)

# stream live logs from all containers
docker-logs:
	@docker compose logs -f

# ---- DATA TARGETS ----

# (owners only) copy live webp files and json export into data/ so they can be committed
# run this whenever the image set changes, then git commit data/
pack-data:
	$(call banner-i,PACKING SEED DATA)
	@mkdir -p data/assets/gooses
	@cp api/app/models/assets/gooses/*.webp data/assets/gooses/ 2>/dev/null && echo 'copied webp files' || echo 'no webp files found in api/app/models/assets/gooses/'
	@cp hide/goose_images.json data/goose_images.json 2>/dev/null && echo 'copied goose_images.json' || echo 'no json found in hide/'
	$(call banner-o,DATA PACKED — commit data/ to share with contributors)

# seed the local mysql database from data/init.sql (requires mysql running and br_web to exist)
seed:
	$(call banner-i,SEEDING DATABASE)
	@mysql -u $(shell grep DB_USER api/app/.env | cut -d= -f2 | tr -d '"') \
	       -p$(shell grep PASSWORD api/app/.env | cut -d= -f2 | tr -d '"') \
	       < data/init.sql
	$(call banner-o,DATABASE SEEDED)

# ---- GLOBAL TARGETS ----

# install python dependencies from a top-level requirements.txt
pip:
	$(call banner-i,INSTALLING REQUIREMENTS)
	@pip install -r requirements.txt
	$(call banner-o,INSTALLED)

# demo the banner display functions
demo-banner:
	$(call banner-i,DEMO)
	$(call banner-o,DEMO FINISHED)

# print a filtered directory tree up to DEPTH levels deep
tree:
	$(call banner-i,BUILDING TREEHOUSE)
	@tree -C -L $(DEPTH) -I '__pycache__|*.py[co]|*.sw?|.DS_Store|.git|node_modules|hidden|build|dist|*.egg-info|hide|hidden'
	$(call banner-o,BUILT)
