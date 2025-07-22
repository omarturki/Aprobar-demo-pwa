# ⚡ Minimal Web + API Project (Node.js + PWA)

A zero-boilerplate, minimalistic full-stack project using only **HTML**, **CSS**, and **JavaScript**. Built for simplicity, speed, and portability.

---

## ✅ Features

- ✅ No frameworks, no bundlers, no build step
- ✅ One language: JavaScript (frontend + backend)
- ✅ Mobile-first responsive layout
- ✅ Fully PWA-compliant (installable on Android/iOS)
- ✅ Backend APIs to support CORS workarounds or dynamic behavior
- ✅ Single Dockerfile for local or production use

---

## 📁 Project Structure


```
project/
│
├── src/                      # All source code (backend + frontend)
│   ├── public/               # Static frontend files
│   │   ├── index.html        # Main page
│   │   ├── style.css         # Mobile-first CSS
│   │   ├── app.js            # Frontend JS
│   │   ├── manifest.json     # Web app manifest (PWA)
│   │   ├── service-worker.js # Service worker (PWA)
│   │   └── icons/            # App icons for PWA
│   └── server.js             # Express-style Node.js server
│
├── Dockerfile                # Docker container setup
└── README.md                 # Project documentation
```

---

## 🧱 Requirements

- Node.js >= 18
- Docker (optional, for containerized deploy)

---

## 🚀 Run Locally (Dev Mode)


```bash
# From project root
cd src
npm install
node server.js
```

Visit [http://localhost:8080](http://localhost:8080)

---

## 🐳 Docker Usage

Build and run:

```bash
docker build -t simple-pwa-app .
docker run -p 8080:8080 simple-pwa-app
```

Then open [http://localhost:8080](http://localhost:8080)

---

## 📱 PWA Features

This project is installable on mobile (Android/iOS) and meets key PWA criteria:
- `manifest.json` for metadata and icons
- `service-worker.js` with cache strategies
- HTTPS-ready (required for PWA installability)
- Responsive layout (`style.css`)

**To test PWA features:**
- Use Chrome or Safari on a mobile device
- Ensure it’s served over HTTPS or via `localhost`
- Tap “Add to Home Screen” when prompted

---

## 🔌 API Routes


You can add custom API endpoints in `src/server.js`. Example:

```js
app.get('/api/hello', (req, res) => {
  res.json({ message: 'Hello from backend' });
});
```

---

## 🌍 Proxy Example for CORS Bypass

To consume an external API that doesn’t support CORS:

```js
app.get('/api/proxy', async (req, res) => {
  const upstream = await fetch('https://external.api/data');
  const data = await upstream.json();
  res.json(data);
});
```

---

## 📦 Production Tips

- Use a reverse proxy like **NGINX** or **Caddy** in front of the container
- Ensure HTTPS (for service workers & PWA to work)
- Customize `manifest.json` and app icons under `src/public/icons/`

---

## 📝 License

MIT
