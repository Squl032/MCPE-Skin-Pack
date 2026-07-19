![cover](background.png)

# MCPE Skin Pack (Skin Pack Injection)

---

語言選擇 / 言語選択 / 언어 선택：
- [繁體中文](README.md)
- [日本語](README.ja.md)
- [한국어](README.ko.md)

---

## 📖 Introduction

> **This document was generated with the assistance of AI. The author is not responsible for the absolute accuracy of the content.**

This project provides high-quality skin packs for Minecraft Bedrock Edition (MCPE) along with packaging and encryption tools. 
By utilizing **Skin Pack Injection (Cache Replacement)**, we modify and encrypt `skins.json`, `.lang`, and texture files to replace official marketplace skin packs with our custom ones. This allows the skins to be displayed normally in multiplayer and servers.

⚠️ **Disclaimer**: This project and its tools are for educational purposes and personal customization only. Do not use for commercial profit. The author is not responsible for any game crashes or data loss caused by modifying game files. Please make backups before proceeding.

## 📁 File Structure

- `pack/` — The core resource folder containing unencrypted custom files: `skins.json`, `geometry.json`, texture files, and `texts/` (language files).
- `Tool Files` — Programs used to encrypt plaintext files in-place and generate signatures recognizable by the game.
- `.gitignore` — Ignores temporary files created during development (e.g., `temp/`). These will not be included in the release.

## ⚙️ Installation & Injection Guide

Please follow these steps strictly to ensure the skin pack loads successfully in-game.

### Step 1: Locate the Official Cache Folder
On Windows 11, open File Explorer and navigate to the following cache path to find the official skin pack you want to "replace/overwrite" (you must have downloaded the pack from the Marketplace first):
> **Default Path:** 
> `C:\Users\YourUsername\AppData\Roaming\Minecraft Bedrock\premium_cache\skin_packs\`
> *(Folder names are usually garbled strings, e.g., `u9bQ7FAljNM=`)*

### Step 2: Select and Clean the Target Folder (⚠️ VERY IMPORTANT)
1. **Choose a Target**: We recommend choosing an easily recognizable official skin pack (e.g., **"1st Birthday Skin Pack"**) so it's easier to find in the Dressing Room later.
2. **Keep the ID**: Enter the target garbled folder. **You MUST keep the original `manifest.json`** (This is the official ID of the pack; do NOT delete it).
3. **Clear the Rest**: Delete **all other official files** in the folder except for `manifest.json`.

### Step 3: Inject Custom Skin Files
Copy everything from this project's `pack/` folder (your custom skins, `.lang`, `skins.json`, etc.) and paste them into the cleaned official skin pack folder.
*(At this point, the target folder should only contain the official `manifest.json` and your pasted custom files.)*

### Step 4: Use the Encryption Tool In-Place
Since Bedrock Edition encrypts and verifies files, the game won't read them if you launch it directly. Use the included encryption tool to finish the disguise:
1. Run the encryption tool `encryptor.exe` located in the project.
2. Follow the tool's prompt and paste the **path of the official garbled folder from [Step 2]**.
3. The tool will automatically encrypt all files in that folder and generate the required digital signatures (e.g., `signatures.json`) in-place.

### Step 5: Restart the Game
Launch Minecraft and go to the Dressing Room. The original official skin pack should now display your custom skins and custom name (controlled by the `.lang` file)!

## 🛠️ How to Contribute

Players familiar with modding are welcome to submit PRs (Pull Requests):
1. Add your skin settings array to `pack/skins.json` and place the texture files in the correct path under `pack/`.
2. Modify the `.lang` files in `pack/texts/` to set your skin's display name.
3. Test the encryption and verify it in-game before submitting a PR.
*(Do not include temporary files ignored by `.gitignore` or unrelated encryption outputs in your PR.)*

## 📄 License

Suggested License: **CC BY-NC-SA 4.0** (Attribution-NonCommercial-ShareAlike 4.0 International).
- **Non-Commercial**: Do not use this project or modified files for any paid or profit-making activities.
- **ShareAlike**: You are welcome to modify and optimize, but you must distribute under the same license and attribute the original author.

**Contact**: Main author info is listed in `pack/texts/en_US.lang` (`MondayHP`).