# READY.md — Sayan Mandal Portfolio (sayan.wedigitalmitra.com)

**Status (7 Nov 2026): SCAFFOLD COMPLETE — not deployed, nothing public.**
Waiting on ONE thing: Sayan's real photo. Once it lands, go-live is a
few minutes of work (steps below).

## How this was built

Mirrors the Rajdeep Mandal portfolio (`~/workspace/rajdeep-portfolio`,
PsProsen-Dev GitHub, live at rajdeep.wedigitalmitra.com since 11 Oct 2026)
exactly: zero-dependency static site, `src/` + `public/images/` → `build.sh`
→ `dist/`, same CSS/JS design system (copied, only header comments changed).
Content sections adapted to an adult professional: Hero → About → What I Do
(Ground Outreach / Local Networking / Operations Support) → Contact
(Email + Instagram only, no phone — same pattern as Rajdeep's site).

## ✅ Done

- `src/index.html` — full content with Sayan's confirmed details only:
  name, role (Co-Founder & Operations Partner, We Digital Mitra), email
  sayanmandal04456@gmail.com, Instagram @___mr.sayan.___, location
  (Panbari Bazar, Maynaguri, Jalpaiguri, West Bengal). Bio written strictly
  from those role facts — no invented achievements, dates or claims.
- `src/css/styles.css` + `src/js/main.js` — copied from Rajdeep's site.
- `public/images/sayan-profile.jpg` — **PLACEHOLDER** in place (navy
  "PHOTO COMING SOON" graphic with his initial), so the site renders
  correctly end-to-end today.
- `build.sh` — adapted + tested: `./build.sh` produces a valid `dist/`.
- `vercel.json` — carried over (fallback host option, same as Rajdeep's repo).
- `README.md` — project docs.
- Verified locally: build passes; all internal references
  (css/js/images paths, mailto, Instagram link) resolve.

## 📸 The photo — exactly where it goes

- **File:** `~/workspace/sayan-website/public/images/sayan-profile.jpg`
  — overwrite this one file, keep the exact filename `sayan-profile.jpg`.
- **Format:** JPG (a PNG/HEIC should be converted to JPG first).
- **Ideal size:** portrait, at least **900 × 1200 px (3:4)**. The hero shows
  it in a portrait frame with `object-fit: cover`, so a taller portrait
  with the face in the upper-middle works best; anything ≥ 800 px wide
  is acceptable.
- Then re-run `./build.sh` (copies it into `dist/images/`).

## 🚀 Remaining steps to go live (after the photo lands)

1. Drop the real photo into `public/images/sayan-profile.jpg` (above).
2. `cd ~/workspace/sayan-website && ./build.sh` — confirm ✅ and eyeball the
   preview: `python3 -m http.server 8080 --directory dist`.
3. Create GitHub repo **`PsProsen-Dev/sayan-portfolio`** (same owner/pattern
   as `PsProsen-Dev/rajdeep-portfolio`), push this folder, and enable
   **GitHub Pages** on it (source: the published build output), so it serves
   at `psprosen-dev.github.io/sayan-portfolio` → custom domain below.
   Add a `CNAME` file containing `sayan.wedigitalmitra.com` to the published
   output (GitHub Pages custom-domain requirement).
4. **Spaceship DNS** (domain `wedigitalmitra.com`): add CNAME record
   **`sayan` → `psprosen-dev.github.io`** — exactly like the existing
   `rajdeep` CNAME created on 11 Oct 2026.
5. Verify: `sayan.wedigitalmitra.com` resolves (check via Google/Cloudflare
   DNS), page title reads "Sayan Mandal — Co-Founder & Operations Partner,
   We Digital Mitra", hero shows the real photo, HTTPS certificate
   auto-issues on GitHub Pages (may take a short while after DNS).

⚠️ Steps 3–4 were NOT done in this prep pass (deploy/DNS are out of scope
until the photo arrives and the user gives the go-ahead).
