# HudsonSeed Dockerfile | last updated 2026-06-10 (June 10, 2026) | serves claude.html as homepage + gemini.mp4 + poster.jpg
FROM caddy:2-alpine

# New Science of Calm site becomes the homepage
COPY claude.html /srv/index.html
COPY claude.html /srv/claude.html
COPY gemini.mp4 /srv/gemini.mp4
COPY child-meditating.mp4 /srv/child-meditating.mp4
COPY preview-v6.html /srv/preview-v6.html
COPY poster.jpg /srv/poster.jpg

# Old site preserved, still reachable
COPY index.html /srv/index-legacy.html
COPY homepage-v2.html /srv/homepage-v2.html

COPY Caddyfile /etc/caddy/Caddyfile

EXPOSE 8080
