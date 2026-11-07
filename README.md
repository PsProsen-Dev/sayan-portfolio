# Sayan Mandal — Portfolio Website

Personal portfolio for **Sayan Mandal** — Co-Founder & Operations Partner at
**We Digital Mitra** (ground outreach, local networking, operations support),
based in Panbari Bazar, Maynaguri, Jalpaiguri, West Bengal.

**Live target:** `sayan.wedigitalmitra.com` (NOT yet live — scaffold prepared
7 Nov 2026, waiting for Sayan's photo. See `READY.md`.)

## Stack

- **Pure static site** — HTML + CSS + JS, **zero build dependencies** (no npm,
  no Node, no framework). Mirrors the Rajdeep Mandal portfolio
  (`~/workspace/rajdeep-portfolio`, live at rajdeep.wedigitalmitra.com since
  11 Oct 2026) — same structure, same pipeline.
- Brand palette: WDM **Deep Navy `#0F2D52`** + **Saffron Amber `#F29318`**.
- Fonts: Lora (display serif) + Inter (body) via Google Fonts CDN.
- Mobile-first responsive, scroll-reveal cards, sticky nav with mobile
  hamburger menu.

## Project structure

```
sayan-website/
├── src/                    # editable source
│   ├── index.html          # all content (Hero, About, What I Do, Contact)
│   ├── css/styles.css
│   └── js/main.js
├── public/
│   └── images/
│       └── sayan-profile.jpg   # ★ THE swappable photo asset — CURRENTLY A PLACEHOLDER
├── dist/                   # build output (generated — deploy THIS)
├── build.sh                # build script
├── vercel.json             # Vercel static config (fallback host option)
├── README.md
└── READY.md                # go-live checklist
```

## Build

```bash
cd ~/workspace/sayan-website
./build.sh
```

## Preview locally

```bash
python3 -m http.server 8080 --directory ~/workspace/sayan-website/dist
# open http://localhost:8080
```

## Swapping the profile photo (one-file operation)

1. Replace `public/images/sayan-profile.jpg` with Sayan's real photo
   (keep the same filename; ideal: portrait JPG, ≥ 900×1200 px, 3:4).
2. Re-run `./build.sh` — the new photo lands in `dist/images/sayan-profile.jpg`.

## Contact details on the site (by design)

- Email: **sayanmandal04456@gmail.com**
- Instagram: **@___mr.sayan.___** (https://instagram.com/___mr.sayan.___)
- **No phone number** is shown (public-display decision pending — same
  email-first pattern as Rajdeep's site).

No personal details beyond the confirmed records have been invented.
