# HudsonSeed Website

## Stack
- **Hosting:** Railway (project: brave-solace, service: hudsonseed-website)
- **Server:** Caddy (static file serving, port 8080)
- **Domain:** hudsonseed.com (registered at GoDaddy)

## Files
- `claude.html` — live site (Science of Calm)
- `gemini.mp4` — async video (Gemini-made)
- `index.html` — older holding page (preserved)
- `homepage-v2.html` — deck-style draft (preserved)
- `Dockerfile` / `Caddyfile` / `railway.toml` — hosting config

## Deploy
Push to `main` → Railway auto-deploys.
