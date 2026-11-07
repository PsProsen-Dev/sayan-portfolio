# READY.md — Sayan Mandal Portfolio (sayan.wedigitalmitra.com)

**Status (7 Nov 2026, updated): SITE BUILT + PUSHED TO GITHUB PAGES.
One step left: Spaceship DNS CNAME (see "Pending" below).**
Once that record is added, the site goes live at
https://sayan.wedigitalmitra.com (HTTPS cert auto-issues after DNS).

## How this was built

Mirrors the Rajdeep Mandal portfolio (`~/workspace/rajdeep-portfolio`,
PsProsen-Dev GitHub, live at rajdeep.wedigitalmitra.com since 11 Oct 2026)
exactly: zero-dependency static site, `src/` + `public/images/` → `build.sh`
→ `dist/`, same CSS/JS design system. Sections: Hero → About (+ Education
card) → What I Do → Gallery → Contact (email + Instagram only, no phone).

## 📸 Photos (user-chosen set, 7 Nov 2026)

- **Hero:** `public/images/sayan-profile.jpg` — from
  `incoming/IMG-20260223-WA0044.jpg` (daylight, on bike, face clearly
  visible, no sunglasses), cropped/resized to **900×1200 (3:4)**.
  (The bokeh POP_OUT shot was explicitly rejected by the user — not used.)
- **Gallery:** `public/images/gallery-1.jpg` … `gallery-7.jpg`, resized to
  900 px wide, from incoming WA0013, WA0029, WA0030, WA0041, WA0043,
  WA0045, WA0048 (in that order).

## ✍️ Content (user-supplied facts only)

- Role: Co-Founder & Operations Partner, We Digital Mitra — ground
  outreach, local networking, operations support.
- Education: **Final year, Survey Engineering — Maynaguri Polytechnic
  College** (About "Quick facts" + Education card; light survey-fieldwork
  flavour in "What I Do", no invented achievements).
- Interests: travelling, gym/fitness; enjoys the outdoors but values time
  at home equally — a balanced mix.
- **Contact email: sayan@wedigitalmitra.com** (visible contact everywhere).
  Instagram: @___mr.sayan.___. **No phone number anywhere.**

## 🚀 Deployment state

- GitHub repo: **https://github.com/PsProsen-Dev/sayan-portfolio** (public)
  - `main` = source + committed `dist/` (same as rajdeep-portfolio).
  - `gh-pages` = published build output at root + `CNAME` file containing
    `sayan.wedigitalmitra.com` (mirrors rajdeep exactly).
- GitHub Pages: enabled, source `gh-pages` `/`, cname
  `sayan.wedigitalmitra.com` (auto-detected from the CNAME file);
  latest build status: **built** (no errors).
- Raw incoming photos are git-ignored (`incoming/` in `.gitignore`) — they
  are NOT in the public repo; only processed web versions are published.

## ⏳ Pending — the ONLY remaining step

**Spaceship DNS** for `wedigitalmitra.com`: add CNAME record
**`sayan` → `psprosen-dev.github.io`** (TTL default), exactly like the
existing `rajdeep` record. Needs the user's Spaceship API key/secret
(header auth `X-Api-Key` / `X-Api-Secret` at https://spaceship.dev/api)
or a manual add in the Spaceship panel — credentials are transient and
were not available in this run. As of the last check,
`sayan.wedigitalmitra.com` returns NXDOMAIN on Google + Cloudflare DNS.
After the record is added: DNS propagates, GitHub serves the page at the
custom domain, and the HTTPS certificate auto-issues (may lag a while;
then enable "Enforce HTTPS" in repo Settings → Pages).
