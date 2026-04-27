# Suseba Website

A static website for Suseba, including doctor listings, blog, and health information pages.

---

## Project Structure

```
suseba-website/
├── index.html
├── blog.html
├── blog-details.html
├── pregnancy-diet-warning.html
├── gyne-doctor-mymensingh.html
├── mymensingh-gynaecologist-list.html
├── Pediatrician.html
├── sitemap.xml
├── Suseba.apk
├── css/
├── js/
├── img/
├── fonts/
├── fontawesome/
├── deploy.sh          # Linux/macOS deploy script
└── deploy.bat         # Windows deploy script
```

---

## Deployment


### Linux / macOS — `deploy.sh`

**Requirements:** `sshpass`, `scp`

Install if missing:
```bash
sudo apt install sshpass openssh-client
```

Run:
```bash
chmod +x deploy.sh
./deploy.sh
```

**What it does:**
1. Connects to the server via SSH and clears all files in `/var/www/html`
2. Uploads all project files to `/var/www/html` using `scp`

---

### Windows — `deploy.bat`

**Requirements:** PuTTY tools (`plink.exe` and `pscp.exe`)

Download PuTTY from: https://www.putty.org

Make sure `plink.exe` and `pscp.exe` are either:
- Added to your system `PATH`, or
- Placed in the same folder as `deploy.bat`

Run:
```
deploy.bat
```

**What it does:**
1. Connects to the server via `plink` (SSH) and clears all files in `/var/www/html`
2. Uploads all project files to `/var/www/html` using `pscp`

---

## Notes

- Both scripts clear the remote `/var/www/html` directory before uploading.
- The `.git` folder is not uploaded to the server.
- The deploy scripts themselves are not uploaded to the server.
