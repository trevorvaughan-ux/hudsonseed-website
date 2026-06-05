# HudsonSeed Website

> ## 👉 LATEST STATUS: see **CLAUDE_STATUS_2026-06-05.md** (updated June 5, 2026, 2:20 PM ET)
> **Read that file FIRST before doing anything in this repo.**
> It says exactly what is live, what is pending, and the next steps.

---

## QUICK STATE (as of June 5, 2026)

- **LIVE NOW:** https://hudsonseed-website-production.up.railway.app
  (the "Science of Calm" site — `claude.html` served as homepage)
- **PENDING:** pointing `www.hudsonseed.com` at it — blocked only on GoDaddy
  2FA (phone busted). Two DNS records ready to save. Details in the status file.
- **Open backend item:** `gemini.mp4` won't decode in browser; needs full
  re-encode. Not blocking launch. Details + fix command in the status file.

## Stack
- **Hosting:** Railway (project: brave-solace, service: hudsonseed-website)
- **Server:** Caddy (static file serving, port 8080)
- **Domain:** hudsonseed.com (registered at GoDaddy)

## Files
- `claude.html` — LIVE site (Science of Calm), built June 5, 2026
- `gemini.mp4` — async video (Gemini-made), added June 5, 2026
- `index.html` — older holding page, built May 19, 2026 (preserved)
- `homepage-v2.html` — May 29, 2026 deck-style draft (preserved)
- `Dockerfile` / `Caddyfile` / `railway.toml` — hosting config

## Deploy
Push to `main` → Railway auto-deploys.

## Status log (most recent first)
- **CLAUDE_STATUS_2026-06-05.md** — June 5, 2026 (CURRENT)
- BUILD_SUMMARY_2026-05-29.md — May 29, 2026
