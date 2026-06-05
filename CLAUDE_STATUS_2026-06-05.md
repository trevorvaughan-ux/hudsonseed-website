# CLAUDE STATUS — June 5, 2026

**Session owner:** Trevor Vaughan / HudsonSeed
**Repo:** github.com/trevorvaughan-ux/hudsonseed-website
**Last verified:** June 5, 2026, ~2:20 PM ET

---

## ONE-LINE SUMMARY

The new "Science of Calm" website is BUILT and LIVE on Railway. The only
remaining step to get it onto `www.hudsonseed.com` is saving two DNS records
at GoDaddy — blocked solely because GoDaddy 2FA requires a phone that is
currently busted. Everything else is done and verified.

---

## WHAT IS LIVE RIGHT NOW (verified by eye, not claimed)

- **Live URL:** https://hudsonseed-website-production.up.railway.app
- Renders: hero ("The Science of Calm"), Playfair Display + DM Sans fonts,
  cream background, stats row (7,000 / 100,000+ / 1), nav, footer.
- **Hanuman bear** (bottom-right) is clickable and shows the speech bubble:
  "Hi, I'm Hanuman your yoga coach. I am here to serve." — CONFIRMED working.
- Auto-deploys on every push to `main` (Railway watches the repo).

## HOSTING FACTS

- **Railway project:** brave-solace
- **Railway service:** hudsonseed-website (connected to this GitHub repo)
- **Serves on:** port 8080 (Caddy via Dockerfile)
- Builder = Dockerfile (per railway.toml)

## SITE FILES (all committed to GitHub `main`)

- `claude.html`  = the new Science of Calm site (the homepage being served)
- `gemini.mp4`   = the async video (Gemini-made), re-muxed with +faststart
- Dockerfile serves `claude.html` as `/index.html`, includes `gemini.mp4`,
  preserves old site as `index-legacy.html`. Nothing was chucked.

---

## PENDING — THE ONLY THING LEFT: GoDaddy DNS (BLOCKED ON PHONE/2FA)

To make `www.hudsonseed.com` show the site, add/edit these TWO records at
GoDaddy (dcc.godaddy.com → hudsonseed.com → DNS):

### Record 1 — EDIT the existing `www` CNAME
- Type:  CNAME
- Name:  www
- Value: abgfkx5j.up.railway.app
- (currently points to ghs.googlehosted.com — change ONLY the value)

### Record 2 — ADD new TXT (domain verification)
- Type:  TXT
- Name:  _railway-verify.www
- Value: railway-verify=1f18c4c93437c894b877c4b6eb3d4effd1cd651525339b098c981d89611721cd
- TTL:   1 hour (default fine)

**Railway side is already done:** `www.hudsonseed.com` is added to the service,
status "Waiting for DNS update." Once GoDaddy saves the two records above, DNS
propagates (minutes–couple hours), Railway auto-issues SSL, and
https://www.hudsonseed.com goes live with the site.

### THE BLOCKER
GoDaddy requires 2FA to save DNS changes. Only options offered were
text-to-phone and GoDaddy Authenticator app — both on a phone that is busted.
The CNAME edit form was left filled and open in the browser, ready to Save the
moment 2FA can be completed.

### WAYS PAST THE BLOCKER (when phone is fixed / for next session)
1. Get one 2FA code via any working phone (SIM swap, GoDaddy app on a new
   phone, etc.) — only ONE code needed.
2. Search email for GoDaddy 2FA backup codes (saved at setup).
3. GoDaddy account recovery / support to reset 2FA.

### EMAIL IS SAFE
The MX records (Google: aspmx.l.google.com etc.) were NOT touched and will not
be. Changing the www CNAME does not affect trevorvaughan@hudsonseed.com email.
Old www value saved for rollback: ghs.googlehosted.com

---

## KNOWN OPEN ITEM — VIDEO DECODE (backend, not blocking launch)

- `gemini.mp4` serves correctly (HTTP 200, 2.2MB, range requests work, faststart
  applied) but Chrome will not paint a frame — even opening the raw file in
  Chrome's native player shows 0:00 / no duration / no frame.
- Ruled OUT: file missing, faststart, codec params (H.264 High/yuv420p/30fps is
  clean), server speed (full download in 0.6s), HTTP range support (206 works).
- DIAGNOSIS: the file itself needs a full RE-ENCODE (not just re-mux). The
  bitstream/timestamps from the original export are something Chrome's decoder
  rejects silently.
- FIX TO RUN NEXT (backend, no rush — site looks good without it):
  `ffmpeg -i gemini.mp4 -c:v libx264 -pix_fmt yuv420p -profile:v main \
     -movflags +faststart -c:a aac -b:a 128k gemini_fixed.mp4`
  then replace, push, redeploy, and VERIFY the frame paints before calling done.
- Trevor's call: ship the site for emails first; fix video on the backend later.

---

## GOAL CONTEXT

By Sunday: have `www.hudsonseed.com` showing this site so school-outreach emails
next week can carry a clean hudsonseed.com link (not the long railway.app URL).
Status: site done + live on Railway; only the GoDaddy DNS save remains.

---

## SECURITY FLAG (still open)

The GitHub PAT used this session has been exposed in plaintext (chat + vault doc)
and should be rotated at github.com/settings/tokens. Flagged repeatedly; rotation
is a Trevor action (creating/rotating credentials is not something Claude does).

---

## COMMIT TRAIL (this session, on main)

- cbc8bd7  Re-mux gemini.mp4 with +faststart
- ba15058  Dockerfile: serve claude.html as homepage + include gemini.mp4
- 4ff78f6  Rename science-of-calm.html -> claude.html, video -> gemini.mp4
- 959101d  Add Science of Calm slideshow site + async video (new files only)

— End of June 5 status. Next session: read this file first.
