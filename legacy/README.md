# <span style="color: #00BE67;">GooseOS: A Win95-Styled Operating System</span> <!-- omit in toc -->

An immersive brutalist-retro styled web app inspired by Windows 95, featuring:

- An in browser minigame playing a goose avoiding being transformed by __affine matrix transformations__
- An image upload modal (with drag-n-drop support and preview) to upload more goose
- A voting carousel for uploaded goose art
- A fully styled brutalist desktop UI

On landing, there's a simulated "Blue Screen of Death" that leads into reboot sequence, only to discover...   
..._Old Cosmic Gods are infiltrating the software._ Against the __Old Gods__, there is only one defense: __*Gooses*__!


## Table of Contents <!-- omit in toc -->
- [Project Structure](#project-structure)
- [Setup](#setup)
  - [Docker (recommended)](#docker-recommended)
  - [Local (manual)](#local-manual)
- [Makefile Reference](#makefile-reference)
- [Seed Data](#seed-data)
- [Pages](#pages)
  - [Goose Game `goose.html`](#goose-game-goosehtml)
  - [Upload Page `upload.html`](#upload-page-uploadhtml)
  - [Voting Carousel `belles-lettres.html`](#voting-carousel-belles-lettreshtml)
  - [Cosmic Boot Sequence](#cosmic-boot-sequence)
- [Requirements](#requirements)
- [Motivation](#motivation)



---

## <span style="color: #00BE67;">Project Structure</span>

```
.
├── Makefile
├── docker-compose.yml       # orchestrates all three containers
├── .env.docker              # environment config for docker (safe to commit)
├── .dockerignore
│
├── data/                    # committed seed data for new contributors
│   ├── init.sql             # database schema + seed rows
│   └── assets/
│       └── gooses/          # webp image files referenced by the database
│
├── api/                     # flask backend
│   ├── Dockerfile
│   ├── requirements.txt
│   ├── run.py
│   └── app/
│       ├── models/          # image model, vote logic, asset storage
│       ├── util/            # heimdahl debugger, color output, env loader
│       ├── routes.py        # upload, image list, and vote endpoints
│       ├── settings.py      # loads env vars at startup
│       └── state.py         # initializes flask app and db connection
│
└── frontend/                # static frontend
    ├── Dockerfile
    ├── assets/              # goose icons, tv overlays, background images
    ├── css/                 # all modular and themed css
    ├── js/                  # all functional modules (bsod, terminal, goose logic, etc.)
    ├── pages/               # all html pages
    └── index.html
```

---

## <span style="color: #00BE67;">Setup</span> 

### Docker (recommended)

Docker is the easiest way to get everything running. It handles the database, backend, and frontend for you with one command. You'll need Docker installed — [Docker Desktop](https://www.docker.com/products/docker-desktop/) on Windows/Mac, or `docker` + `docker-compose-plugin` via your package manager on Linux.

```bash
make docker-up
```
s
This builds the images and starts __three__ containers:

| container  | houses                              | local address         |
|------------|-------------------------------------|-----------------------|
| `db`       | mysql 8.0 — seeded automatically    | `localhost:3306`      |
| `api`      | flask backend                       | `localhost:8003`      |
| `frontend` | nginx serving the static site       | `localhost:8002`      |

The database is seeded from `data/init.sql` on first run. The goose images in `data/assets/gooses/` are mounted directly into the api container — no manual copying needed.

To stop everything:

```bash
make docker-down
```

To rebuild images after code changes:

```bash
make docker-build
```

To stream logs from all containers:

```bash
make docker-logs
```

---

### Local (manual)

If you'd rather run everything directly without Docker, you'll need Python and MySQL installed locally.

**1. Install dependencies**

```bash
make install
```

**2. Configure your environment**

Create `api/app/.env` with your local database credentials:

```
IP="localhost"
PORT="8003"
PASSWORD="your_password"
DB_USER="your_user"
DATABASE="br_web"
```

**3. Start MySQL and seed the database**

```bash
make sql          # starts mysql and opens a session
make seed         # loads data/init.sql into the database
```

**4. Start the backend and frontend in separate terminals**

```bash
make host         # flask api on :8003
make client       # static frontend on :8002
```

For development with debug mode and verbose logging:

```bash
make dev-host     # flask with -D (debug) and -V (verbose) flags
make vb-host      # flask with -V (verbose) only
```

---

## <span style="color: #00BE67;">Makefile Reference</span>

| target          | description                                                        |
|-----------------|--------------------------------------------------------------------|
| `install`       | install python dependencies from `api/requirements.txt`           |
| `host`          | start flask in production mode                                     |
| `dev-host`      | start flask with debug + verbose logging                           |
| `vb-host`       | start flask with verbose logging only                              |
| `client`        | serve the frontend on port 8002 via python http.server             |
| `sql`           | start mysql and open an interactive session                        |
| `sql-status`    | check whether mysql is running                                     |
| `sql-stop`      | stop mysql                                                         |
| `seed`          | load `data/init.sql` into the local mysql database                 |
| `docker-up`     | build images and start all containers in the background            |
| `docker-down`   | stop and remove all containers                                     |
| `docker-build`  | rebuild docker images without starting them                        |
| `docker-logs`   | stream live logs from all containers                               |
| `pack-data`     | *(owners only)* copy live webp files + json into `data/` to commit |
| `test-upload`   | curl test for the upload endpoint                                  |
| `test-download` | curl test to fetch all images from the api                         |
| `ping`          | ping the api to confirm it's alive                                 |
| `tree`          | print a filtered directory tree                                    |

---

## <span style="color: #00BE67;">Seed Data</span>

The `data/` directory is committed to the repo so new contributors get the full off rip.

- `data/init.sql` — creates the `goose_images` table and inserts all seed rows
- `data/assets/gooses/` — the webp image files the database rows reference

If you're an owner and the image set has changed, run this to re-sync `data/` from the live files before committing:

```bash
make pack-data
```

---

## <span style="color: #00BE67;">Pages</span>

- `index.html`: the Win95 desktop hub
- `upload.html`: image drag-and-drop upload
- `belles-lettres.html`: voting carousels
- `goose.html`: matrix-avoidance game
- `vibes.html`: a TV-style aesthetic view

---

### <span style="color: #00BE67;">Goose Game `goose.html`</span>

- Controls: `Arrow keys`, `WASD`, or `wasd`
- Objective: Avoid affine matrices (which appear every ~5 seconds)
- You have `3 lives`
- Each time you collide with a matrix, the goose undergoes a transformation:
  - Visually transformed
  - Movement direction adjusted
- The entire scene runs on `D3.js` and a DOM-based game loop

---

### <span style="color: #00BE67;">Upload Page `upload.html`</span>

A styled drag-and-drop form:

- Fully supports `drag-and-drop` or `manual browse`
- Image preview displays the dragged image inside the upload zone
- Submits to Flask API `/upload` endpoint via `jQuery AJAX`
- Optional description field
- Returns a status message with success/failure
- Respects the pixelated Win95 design (brutal-button styling, shadow, outlines)

---

### <span style="color: #00BE67;">Voting Carousel `belles-lettres.html`</span>

- Carousel for viewing uploaded images
- Includes `Thumbs Up` / `Thumbs Down` buttons
- Live vote counts updated after each interaction
- Carousel navigation with ❮ and ❯
- All images pulled from Flask backend via `/images`
- jQuery-based logic with minimal overhead

---

### <span style="color: #00BE67;">Cosmic Boot Sequence</span>

Before accessing the desktop, users are presented with:

- A `blue screen of death` (bsod.js)
- Followed by a `cosmic-terminal` glitch animation where characters fragment and warp
- Finally, a `goose` flies by—randomly selected from uploaded images (fairygoosemother.js)

These are organized as timed sequences, waiting for global flags `window.bsodCompleted` and `window.cosmicCompleted`.

---

## <span style="color: #00BE67;">Requirements</span>

- Docker Desktop — for the recommended setup path
- Python 3.0+ and MySQL — for the manual setup path
- Browser: Works best on Firefox or Chromium
- jQuery, D3.js, Bootstrap, and retro-style CSS via CDN
- No build tools required

---

## <span style="color: #00BE67;">Motivation</span>

This project was designed with kids in mind — something engaging, funny, and oddly educational. Then it grew into an operating system unto itself.

> "Yield thine ballads of galactic conquest."
