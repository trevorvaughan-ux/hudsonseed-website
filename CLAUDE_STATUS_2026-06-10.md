# CLAUDE STATUS (website) | 2026-06-10 | supersedes CLAUDE_STATUS_2026-06-05.md

## Today (commits 86ad7ed, 8f46131)
- Title: "HudsonSeed | The Science of Calm" (em-dash out, fixes stale Mile Square brand in search results)
- SEO meta description + OpenGraph tags added (og:image = poster.jpg)
- Hero video: poster frame extracted + added, id=herovideo, autoplay-rejection fallback shows controls (was rendering an INVISIBLE box when autoplay blocked - root cause of "video not on website")
- "Watch the video" play button now scrolls AND plays
- Copy mirrored to deck v2: beta language removed, Worth It = "less than the cost of one PD day", children->kids, em-dashes stripped everywhere, Hanuman bubble: "I'm here whenever your class needs a reset."

## Open
- Railway deploy trigger UNVERIFIED for these pushes. If live tab title still shows a dash instead of pipe: redeploy website service manually in Railway dashboard.
- Mile Square Learning Center appearances = stale Google index of dead Squarespace site. Apex + www both verified serving this site. Time + new meta tags fix it.
- gemini.mp4 filename still exposes AI provenance in page source; rename to hudsonseed-hero.mp4 in a future pass (src + Dockerfile + any caching).
