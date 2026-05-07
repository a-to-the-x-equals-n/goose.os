# Graph Report - .  (2026-05-06)

## Corpus Check
- 67 files · ~389,180 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 387 nodes · 473 edges · 69 communities (37 shown, 32 thin omitted)
- Extraction: 87% EXTRACTED · 13% INFERRED · 0% AMBIGUOUS · INFERRED: 62 edges (avg confidence: 0.85)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Debuggernaut Error System|Debuggernaut Error System]]
- [[_COMMUNITY_Flask REST API Endpoints|Flask REST API Endpoints]]
- [[_COMMUNITY_Backend Infrastructure|Backend Infrastructure]]
- [[_COMMUNITY_Affine Game Entities|Affine Game Entities]]
- [[_COMMUNITY_Boot Sequence + Core Concepts|Boot Sequence + Core Concepts]]
- [[_COMMUNITY_Goose Voting UI Screenshots|Goose Voting UI Screenshots]]
- [[_COMMUNITY_Utility Helpers|Utility Helpers]]
- [[_COMMUNITY_Data Layer + Docker|Data Layer + Docker]]
- [[_COMMUNITY_Game State Management|Game State Management]]
- [[_COMMUNITY_Desktop UI Layout|Desktop UI Layout]]
- [[_COMMUNITY_Win95 Window Manager|Win95 Window Manager]]
- [[_COMMUNITY_Desktop Component (Legacy+Port)|Desktop Component (Legacy+Port)]]
- [[_COMMUNITY_Vote Carousel Logic|Vote Carousel Logic]]
- [[_COMMUNITY_Retro TV Aesthetic|Retro TV Aesthetic]]
- [[_COMMUNITY_Game HUD + Matrix Display|Game HUD + Matrix Display]]
- [[_COMMUNITY_Cosmic Terminal Effects|Cosmic Terminal Effects]]
- [[_COMMUNITY_Win95XP Wallpaper Design|Win95/XP Wallpaper Design]]
- [[_COMMUNITY_CRT TV Vibes Interface|CRT TV Vibes Interface]]
- [[_COMMUNITY_Glitch Art Assets|Glitch Art Assets]]
- [[_COMMUNITY_Project Overview + Lore|Project Overview + Lore]]
- [[_COMMUNITY_Carousel Navigation|Carousel Navigation]]
- [[_COMMUNITY_YouTube TV Integration|YouTube TV Integration]]
- [[_COMMUNITY_TV Channel Config|TV Channel Config]]
- [[_COMMUNITY_Fairy Goose Mother Module|Fairy Goose Mother Module]]
- [[_COMMUNITY_Debug Decorators|Debug Decorators]]
- [[_COMMUNITY_Vibes Page (HTML+JS)|Vibes Page (HTML+JS)]]
- [[_COMMUNITY_Next.js Pages|Next.js Pages]]
- [[_COMMUNITY_DB Init|DB Init]]
- [[_COMMUNITY_Test Image Save|Test Image Save]]
- [[_COMMUNITY_Image Upload Handler|Image Upload Handler]]
- [[_COMMUNITY_Image Loader|Image Loader]]
- [[_COMMUNITY_Vote Counter|Vote Counter]]
- [[_COMMUNITY_Vote Registrar|Vote Registrar]]
- [[_COMMUNITY_WebP Converter|WebP Converter]]
- [[_COMMUNITY_Dev Mode Toggle|Dev Mode Toggle]]
- [[_COMMUNITY_Path Helper|Path Helper]]
- [[_COMMUNITY_Env Path Finder|Env Path Finder]]
- [[_COMMUNITY_File Search Recursive|File Search Recursive]]
- [[_COMMUNITY_Env Loader|Env Loader]]
- [[_COMMUNITY_File Search Scoped|File Search Scoped]]
- [[_COMMUNITY_Call Depth Checker|Call Depth Checker]]
- [[_COMMUNITY_Health Check Endpoint|Health Check Endpoint]]
- [[_COMMUNITY_Game Over Flag|Game Over Flag]]
- [[_COMMUNITY_ESLint Config (port)|ESLint Config (port)]]
- [[_COMMUNITY_Next.js Config (port)|Next.js Config (port)]]
- [[_COMMUNITY_PostCSSTailwind Config|PostCSS/Tailwind Config]]
- [[_COMMUNITY_Favicon 16px|Favicon 16px]]
- [[_COMMUNITY_Favicon 32px|Favicon 32px]]
- [[_COMMUNITY_Carousel Icon|Carousel Icon]]
- [[_COMMUNITY_Fairy Goose Icon|Fairy Goose Icon]]
- [[_COMMUNITY_Floppy Disk Icon|Floppy Disk Icon]]
- [[_COMMUNITY_Goose Game Icon|Goose Game Icon]]
- [[_COMMUNITY_Photos Icon|Photos Icon]]
- [[_COMMUNITY_Themes Icon|Themes Icon]]
- [[_COMMUNITY_TV Icon|TV Icon]]

## God Nodes (most connected - your core abstractions)
1. `Heimdahl` - 13 edges
2. `HalMessage` - 12 edges
3. `createAppWindow()` - 8 edges
4. `createAppWindow()` - 8 edges
5. `larva()` - 7 edges
6. `update()` - 7 edges
7. `Flask App Factory & DB Init (state.py)` - 7 edges
8. `Debuggernaut Package Init` - 7 edges
9. `Heimdahl Logger (heimdahl.py)` - 7 edges
10. `Desktop Index (index.html)` - 7 edges

## Surprising Connections (you probably didn't know these)
- `BootSequence Component (port stub)` --conceptually_related_to--> `Cosmic Boot Sequence (BSOD + terminal glitch)`  [INFERRED]
  port/components/bootSequence.tsx → legacy/README.md
- `Flask API Container` --references--> `Goose Class`  [INFERRED]
  legacy/docker-compose.yml → legacy/api/app/models/goose.py
- `Python API Requirements` --references--> `Flask App Factory & DB Init (state.py)`  [INFERRED]
  legacy/api/requirements.txt → legacy/api/app/state.py
- `Fairy Goose Mother JS (fairygoosemother.js)` --references--> `GET /images Endpoint`  [INFERRED]
  legacy/frontend/index.html → legacy/api/app/routes.py
- `Window Component (port stub)` --conceptually_related_to--> `createAppWindow()`  [INFERRED]
  port/components/window.tsx → legacy/frontend/js/home/window-manager.js

## Hyperedges (group relationships)
- **Three-Container Docker Deployment Stack** — docker_service_db, docker_service_api, docker_service_frontend [EXTRACTED 1.00]
- **Flask API Layer (routes + state + settings + model)** — api_routes, api_state, api_settings, model_goose_class [EXTRACTED 1.00]
- **Debuggernaut Utility Package** — debuggernaut_colrs, debuggernaut_hal, debuggernaut_heimdahl, debuggernaut_pests [EXTRACTED 1.00]
- **Boot Sequence JS Modules** — js_bsod, js_cosmic_terminal, js_fairygoosemother [EXTRACTED 1.00]
- **Vote Data Flow (frontend to API to DB)** — frontend_belles_lettres, route_vote, model_goose_register_vote, db_goose_images_table [INFERRED 0.95]
- **Upload Data Flow (frontend to API to DB)** — frontend_upload, route_upload, model_goose_add_img, db_goose_images_table [INFERRED 0.95]
- **Goose Game Core Game Loop** — main_update, main_checkCollision, badguy_badguysArray, goose_applyMatrixToGoose, info_takeLife, main_transformUserInput [EXTRACTED 1.00]
- **Boot Sequence Pipeline (BSOD -> Cosmic Terminal -> Desktop)** — bsod_module, cosmicterminal_transitionToCosmicTerminal, cosmicterminal_runTerminal, cosmicterminal_cosmicCompleted_flag, fairygoosemother_startFlapping [EXTRACTED 1.00]
- **Win95 Window Management System** — windowmanager_createAppWindow, windowmanager_makeDraggable, windowmanager_addMinimizeBehavior, windowmanager_addMaximizeBehavior, windowmanager_addCloseBehavior, themes_setTheme [INFERRED 0.95]
- **Debuggernaut Utility Package** — debuggernaut_init, debuggernaut_pesticide, debuggernaut_larva, debuggernaut_hal9000, debuggernaut_colrs, debuggernaut_heimdahl [EXTRACTED 1.00]
- **Next.js Port Configuration Files** — port_eslint_config, port_next_config, port_postcss_config [INFERRED 0.85]
- **Goose Image Data Flow (DB -> API -> Frontend)** — init_sql_goose_images_table, init_sql_seed_data, concept_goose_images_api, carousel_loadImages, fairygoosemother_nextGoose [INFERRED 0.85]
- **Glitch-CRT-Vaporwave Visual Language** —  [INFERRED 0.95]
- **Windows XP Theme Cohesion** —  [INFERRED 0.95]
- **Game UI Elements Cluster** —  [INFERRED 1.00]
- **Mathematical Game Objects Cluster** —  [INFERRED 0.85]
- **GooseOS Voting Carousel Scene (no-gods state)** —  [INFERRED 1.00]
- **GooseOS Voting UI Cluster** —  [INFERRED 0.95]
- **Goose Art Upload UX Flow** —  [INFERRED 0.95]
- **Skeuomorphic CRT TV Design System** —  [INFERRED 1.00]
- **Win95 Desktop Shell Context** —  [INFERRED 1.00]

## Communities (69 total, 32 thin omitted)

### Community 0 - "Debuggernaut Error System"
Cohesion: 0.06
Nodes (29): AccessDenied, DecodingError, FileNotFound, HAL9000, HalMessage, InfiniteLoopDetected, PermissionError, HAL 9000-style exception namespace.     Provides a collection of custom errors (+21 more)

### Community 1 - "Flask REST API Endpoints"
Cohesion: 0.15
Nodes (18): get_images(), handle_vote(), pong(), Basic health check route., sanity(), upload(), Heimdahl, larva() (+10 more)

### Community 2 - "Backend Infrastructure"
Cohesion: 0.15
Nodes (21): Python API Requirements, Flask Routes (routes.py), Flask App Entry Point (run.py), App Settings / Env Loader (settings.py), Flask App Factory & DB Init (state.py), ANSI Color Codes (colrs.py), HAL9000 Exception Namespace (HAL.py), HAL9000 (debuggernaut) (+13 more)

### Community 3 - "Affine Game Entities"
Cohesion: 0.21
Nodes (15): createBadguy(), generateTransformMatrix(), initialSpawn(), matrixToString(), spawnManager(), applyMatrixToGoose(), applyMatrixToGoosePosition(), applyMatrixToGooseVisual() (+7 more)

### Community 4 - "Boot Sequence + Core Concepts"
Cohesion: 0.12
Nodes (18): BSOD Boot Screen Module, Affine Matrix Transformation Game, Cosmic Boot Sequence (BSOD + terminal glitch), corruptLineWithD3(), printLine(), runTerminal(), Terminal Boot Sequence Lines, transitionToCosmicTerminal() (+10 more)

### Community 5 - "Goose Voting UI Screenshots"
Cohesion: 0.16
Nodes (19): ballot-lottery.exe Window, belle-lettres.exe Win95 Window, belles-lettres.exe Win95 Window, Fire Nation Caption Meme Text, Fire Nation Goose Voting Carousel, White Goose Wings Spread Photo, Goose Art Voting Carousel Component, Goose Art Voting Carousel UI (+11 more)

### Community 6 - "Utility Helpers"
Cohesion: 0.12
Nodes (10): type, Cache, fetch(), GoodDog, _path(), Overrides the class creation process to compute and cache the current working di, Prevents setting attributes that start with an underscore `_`, ensuring internal, Restricts access to class attributes from outside the class, while allowing magi (+2 more)

### Community 7 - "Data Layer + Docker"
Cohesion: 0.14
Nodes (18): Goose Art Upload and Voting, goose_images Database Table, Docker Compose Configuration, Flask API Container, MySQL 8.0 Database Container, Nginx Frontend Container, jQuery 3.7.1 (external CDN), Voting Carousel Page (belles-lettres.html) (+10 more)

### Community 8 - "Game State Management"
Cohesion: 0.12
Nodes (13): badguys Array (game state), createBadguy(), generateTransformMatrix(), spawnManager(), Affine Matrix Transformation Game Mechanic, applyMatrixToGoose(), applyMatrixToGooseVisual(), info() HUD Display (+5 more)

### Community 9 - "Desktop UI Layout"
Cohesion: 0.18
Nodes (17): Overall Color Scheme, Affine Matrix Game Feature (via //game.sh), Desktop Icon: c:\vibes, Desktop Icon: //game.sh, Desktop Icon Grid Layout, Icon Label Typography Style, Desktop Icon: $izePAINT, Desktop Icon: .skynet (+9 more)

### Community 10 - "Win95 Window Manager"
Cohesion: 0.24
Nodes (8): handleAppLaunch(), setTheme(), addCloseBehavior(), addMaximizeBehavior(), addMinimizeBehavior(), bringToFront(), createAppWindow(), makeDraggable()

### Community 11 - "Desktop Component (Legacy+Port)"
Cohesion: 0.22
Nodes (6): Win95-Style Desktop Environment, handleAppLaunch(), Desktop Component (port stub), Window Component (port stub), setTheme(), createAppWindow()

### Community 12 - "Vote Carousel Logic"
Cohesion: 0.24
Nodes (9): loadImages(), showImage(), Goose Images REST API (/images, /vote), window.cosmicCompleted Flag, D3 SVG Sky Animation, nextGoose() Image Fetcher, startFlapping() SVG Flyby, goose_images MySQL Table Schema (+1 more)

### Community 13 - "Retro TV Aesthetic"
Cohesion: 0.31
Nodes (10): GooseOS Win95-Style Desktop Aesthetic, Rounded Bezel Frame with Taupe-Grey Finish, TV-as-Content-Frame Metaphor, Content Overlay Zone (White Screen as Injection Point), Nostalgic Hardware Motif / Vintage Tech Theme, Physical Knobs and Control Buttons, Retro CRT Television Frame, Retro Skeuomorphic UI Pattern (+2 more)

### Community 14 - "Game HUD + Matrix Display"
Cohesion: 0.42
Nodes (10): Affine Transformation Matrix (Left), Affine Transformation Matrix (Right), HUD Stats Display (Coordinates, Time, Matrices), Lives Display (Heart Icons), Core Game Mechanic: Affine Matrix Navigation, Player Character (Pixel-Art Goose/Llama), GooseOS Affine Matrix Game Screenshot, Game Viewport Canvas (Black Rectangle) (+2 more)

### Community 15 - "Cosmic Terminal Effects"
Cohesion: 0.36
Nodes (6): corruptLineWithD3(), feedGooseSpinner(), getRandomCorruptChar(), printLine(), runTerminal(), transitionToCosmicTerminal()

### Community 16 - "Win95/XP Wallpaper Design"
Cohesion: 0.22
Nodes (9): Blue Sky with White Cumulus Clouds, Windows XP Bliss Desktop Wallpaper, Distant Hills on Horizon, Green Rolling Hill Foreground Element, High Saturation Color Palette, Windows XP Bliss Nostalgia Reference, Photographic Background Texture, Retro Desktop OS Aesthetic Design Decision (+1 more)

### Community 17 - "CRT TV Vibes Interface"
Cohesion: 0.28
Nodes (9): Channel Rotary Dial Control, Green Terminal Channel Label Overlay, CRT Television Skeuomorphic Widget, Win95 Desktop Background - Sky and Grass, Power Button Control, Vibes Page - CRT TV Channel Viewer, RGB Static Noise Screen Effect, Win95 Taskbar with ./start Button (+1 more)

### Community 18 - "Glitch Art Assets"
Cohesion: 0.36
Nodes (8): VGOD Glitch Art Desktop Background, Distorted Abstract Silhouette Figure, CRT Scan-Line Distortion Pattern, Cyan-Dominant Vaporwave Color Palette, Glitch Art Visual Aesthetic, Dark Vignette Border Framing, Background Named After Visual/Cultural Reference (vgod), Retro-Chaos Desktop Atmosphere Intent

### Community 19 - "Project Overview + Lore"
Cohesion: 0.38
Nodes (7): GooseOS Project (CLAUDE.md), Eldritch Horror vs Gooses Narrative, GooseOS: Win95-Style Desktop Environment, Next.js Port (React 19 + TypeScript + Tailwind), Legacy Version README, Port Version README (Next.js), GooseOS Root README

### Community 20 - "Carousel Navigation"
Cohesion: 0.47
Nodes (3): nextImage(), prevImage(), showImage()

### Community 21 - "YouTube TV Integration"
Cohesion: 0.8
Nodes (4): onYouTubeIframeAPIReady(), powerOff(), powerOn(), toggleTvScreen()

### Community 22 - "TV Channel Config"
Cohesion: 0.5
Nodes (5): TV Channels Config, onYouTubeIframeAPIReady(), powerOff(), powerOn(), toggleTvScreen()

## Knowledge Gaps
- **92 isolated node(s):** `Basic health check route.`, `Handles database operations for goose_images.`, `Initializes the database connection.          Parameters:         -----------`, `Test-mode image save that skips file-type conversion.          Parameters:`, `Saves the uploaded image, extracts metadata, and inserts a DB record.` (+87 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **32 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Heimdahl` connect `Flask REST API Endpoints` to `Debuggernaut Error System`?**
  _High betweenness centrality (0.011) - this node is a cross-community bridge._
- **Why does `HAL9000 Class` connect `Backend Infrastructure` to `Data Layer + Docker`?**
  _High betweenness centrality (0.008) - this node is a cross-community bridge._
- **Are the 12 inferred relationships involving `Heimdahl` (e.g. with `upload()` and `get_images()`) actually correct?**
  _`Heimdahl` has 12 INFERRED edges - model-reasoned connections that need verification._
- **Are the 2 inferred relationships involving `createAppWindow()` (e.g. with `Win95-Style Desktop Environment` and `Window Component (port stub)`) actually correct?**
  _`createAppWindow()` has 2 INFERRED edges - model-reasoned connections that need verification._
- **Are the 6 inferred relationships involving `larva()` (e.g. with `__init__()` and `test_add_img()`) actually correct?**
  _`larva()` has 6 INFERRED edges - model-reasoned connections that need verification._
- **What connects `Basic health check route.`, `Handles database operations for goose_images.`, `Initializes the database connection.          Parameters:         -----------` to the rest of the system?**
  _92 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Debuggernaut Error System` be split into smaller, more focused modules?**
  _Cohesion score 0.06 - nodes in this community are weakly interconnected._