# HudsonSeed — Build Summary (May 29, 2026)

## Deck (campaign pitch materials)
- New 3-slide deck built and verified: **Cover (The Science of Calm)** → **Trusted / Effortless / Worth it** → **Meet Hanuman (AI yoga coach)**.
- Messaging locked to three themes from the outreach email: **Authority** (Approved JCPS Vendor 9615 + 7,000 teachers / 100,000+ children), **Easy** (no materials — just a whiteboard), **Value** ("Worth it" — no dollar figures, pricing stays proprietary).
- Lives in two formats:
  - Google Slides: `HudsonSeed_Pitch` — https://docs.google.com/presentation/d/1S3u6fP4kYgSfvnKdU9G2bf7-xaeo9E7dBqmGpyK-mo8/edit
  - PowerPoint .pptx (in Drive + outputs)
- Deck is link-shared (Anyone with link, Viewer) so principals can open it.

## Pitch Machine (Layer 2 + Layer 3, continuous)
- Gmail-based, runs entirely on Google (Gmail + Sheet + Apps Script). No Supabase pull, no Railway dependency.
- **Layer 2**: scans inbox every 5 min, matches reply sender → sheet row, flags Unsubscribed only on stop/remove/not-interested. Everyone else = replied/Community.
- **Layer 3**: ~5 min after a reply, auto-replies in-thread with the deck + Google Meet ask.
- **DECK_URL updated** to the new deck everywhere (Code.gs line 18 + assets). Old deck fully scrubbed from the repo. Verified live in Apps Script + on GitHub (commit 943541a).
- Sheet ↔ code now **mirror**: all 22 columns present in the Layer 2 sheet, names matching the code exactly (incl. Vendor_Code).
- 5-min auto-trigger: currently OFF (manual testing). Turn on Monday for hands-off.

## Website (NEW — homepage-v2.html in this repo)
- Single self-contained HTML file. Mobile-first, conversion-optimized.
- Homepage features the 3 deck slides inline (stats / pillars / Hanuman), trust bar, social proof, CTA band, sticky mobile CTA.
- **Hanuman glow-up**: replaced the placeholder monkey emoji with a real cartoon SVG mascot — friendly monkey, eyes gently closed (meditative), soft smile, saffron tilak + gold halo (tasteful Vedic cues), teal namaste hands.
- Hero illustration: three elementary kids seated at desks, feet on floor, arms crossed, eyes closed (on-brand SVG, never breaks — swap point marked in code for a real photo later).
- **Homepage-only launch posture**: the four inner pages (Schools / Voices / Team / Partners) are built but HIDDEN from nav/footer for Monday, so a principal sees one clean, complete, legitimate page with no placeholder text or dead-ends.
- Zero external images (nothing can 404 on a live server).
- NOT yet deployed. Added to repo as `homepage-v2.html` so the current live holding page (index.html) is untouched.

## Deploy plan (for when ready)
1. Finish content (Hanuman refinement, real testimonials/team, real classroom photo).
2. Promote homepage-v2.html → index.html in this repo; Railway auto-redeploys to hudsonseed-website-production.up.railway.app.
3. Point hudsonseed.com at Railway (custom domain → CNAME record at registrar → Railway auto-issues SSL). Trevor owns hudsonseed.com.
- Note: "live at the URL" is achievable fast; "findable via Google search" takes days–weeks for indexing (not controllable).

## Monday beta — staged & ready
- Test draft in Gmail Drafts (self-addressed). Layer 2 sheet Row 2 reset clean for a fresh loop.
- MVP loop test runbook saved in Drive ("MVP BETA TEST RUNBOOK - May 29").
- Open dependency: separate campaign inbox decision (Option A label/filter recommended first; Option C new Workspace user would require re-homing the machine).

## Repos / IDs
- Website repo: trevorvaughan-ux/hudsonseed-website (this repo)
- Machine repo: trevorvaughan-ux/hudsonseed-pitching-machine (commit 943541a)
- Apps Script project: 1VCW8jqO3ZlfMqKtzh3PO2EHmg6cBu7NxV0ykZhYVhc6sAPyeioYYInTS
- Layer 2 sheet: 19ZCKBI41CALspnaw4Bo_uuGaN3rCkHFpgrobL4UPq_c
