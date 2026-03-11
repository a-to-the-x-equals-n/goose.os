# GooseOS — Port <!-- omit in toc -->

A ground-up rewrite of [GooseOS](../README.md) in Next.js. The [original (legacy/)](../legacy/README.md) was built on Flask + jQuery + D3.js — a chaotic retro desktop environment where a goose teaches kids affine matrix math, users upload and vote on goose art, and everything boots through a fake BSOD and cosmic terminal corruption sequence. This is the v2 rewrite — same energy, modern stack.

> **Status: actively in development.** Core features are being ported. See [Soon](#soon) for what's next.

## Table of Contents <!-- omit in toc -->
- [What Is This](#what-is-this)
- [Getting Started](#getting-started)
- [NPM](#npm)
- [Soon](#soon)

## What Is This

A fully themed desktop environment disguised as a website:

- **Boot Sequence** — Fake blue screen of death, followed by a glitching cosmic terminal, followed by a goose flying across the screen. Then the desktop loads.
- **Desktop UI** — Win95-style shell with draggable windows, a taskbar, minimize/maximize/close, and a theme switcher (win95 vs cosmic).
- **Goose Game** — An educational minigame where you dodge affine transformation matrices. Arrow keys / WASD to move. 3 lives. Each collision warps your goose and scrambles your controls. Math has consequences.
- **Image Upload** — Drag-and-drop your finest goose art. Preview before submitting.
- **Voting Carousel** — Browse uploaded images one at a time. Thumbs up or thumbs down. Democracy for geese.

The original goal was to make something my kids could enjoy — and maybe trick them into learning linear algebra, then It grew into an operating system unto itself.


## Getting Started

```bash
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000).

## NPM

| Command | Description |
|---|---|
| `npm run dev` | Start the development server with hot reload |
| `npm run build` | Create an optimized production build |
| `npm run start` | Serve the production build locally |
| `npm run lint` | Run ESLint across the project |


## Soon

- Supabase for database + image storage
- FastAPI backend for uploads and voting
