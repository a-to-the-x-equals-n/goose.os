# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

GooseOS is a Win95-style desktop environment with an affine matrix transformation game, goose art upload/voting, and a cosmic boot sequence. The repo has two versions:

- **`legacy/`** — Fully working Flask + jQuery + D3.js implementation
- **`port/`** — In-progress Next.js rewrite (React 19, TypeScript, Tailwind CSS 4); backend not yet implemented (planned: FastAPI + Supabase)

## Legacy Version

### Commands

```bash
# Docker (recommended)
cd legacy
make docker-up      # Start all 3 containers (db, api, frontend)
make docker-down    # Stop containers
make docker-build   # Rebuild images
make docker-logs    # Tail logs

# Local dev (manual setup required)
make install        # pip install -r api/requirements.txt
make host           # Run Flask on 0.0.0.0:8003 with debug
make dev-host       # Run Flask on localhost:8003
make client         # Open browser to localhost:8002

# Database
make sql            # Connect to running MySQL container
make sql-status     # Show MySQL container status
make seed           # Seed DB from data/init.sql

# Manual endpoint tests (curl-based)
make ping           # GET /ping
make test-upload    # POST /upload with test image
make test-download  # GET /images
```

### Architecture

Three-container Docker setup:
- **`db`**: MySQL 8.0 (port 3306), auto-seeded from `data/init.sql`
- **`api`**: Flask app (port 8003), served by Python's dev server
- **`frontend`**: Nginx serving static HTML/JS/CSS (port 8002)

**Backend** (`api/app/`):
- `routes.py` — Flask routes: `POST /upload`, `GET /images`, `POST /vote`
- `models/goose.py` — Image model, vote logic, WebP asset storage in `models/assets/gooses/`
- `state.py` — Flask app factory + DB initialization
- `settings.py` — Loads env vars
- `util/goodboy.py` — Color terminal output + env loader

**Frontend** (`frontend/`):
- Single-page app rooted at `index.html`, with additional pages under `pages/`
- `js/home/window-manager.js` — Win95-style windowing system
- `js/goose_game/` — Affine matrix game (D3.js canvas)
- `js/vote/carousel.js` — Goose art voting carousel
- CSS is split by feature: `css/desktop/`, `css/game/`, `css/vote/`, `css/landing/`

**Environment** (Docker): `.env.docker` is tracked — `IP=db`, `PORT=8003`, `DB_USER=dev`, `PASSWORD=pass`, `DATABASE=br_web`. For local dev, create `api/app/.env` with your own values.

## Port Version

### Commands

```bash
cd port
npm install
npm run dev     # Next.js dev server (localhost:3000)
npm run build   # Production build
npm run lint    # ESLint
```

### Architecture

Next.js App Router project under `port/app/`. Components live in `port/components/` — currently placeholder stubs (`bootSequence.tsx`, `desktop.tsx`, `window.tsx`). The `port/app/game/` directory is the start of the game port. No backend exists yet.
