<!-- 繁體中文內容開始 -->

![cover](background.png)

# MCPE Skin Pack（繁體中文說明）

---

Language selector / 言語選択 / 언어 선택：

- [English](README.en.md)
- [日本語](README.ja.md)
- [한국어](README.ko.md)

---

**簡介**

> **本檔案由 AI 生成，作者不對內容負責。**

本專案提供一組適用於 Minecraft Bedrock / Pocket Edition 的皮膚包。主要面向玩家，但也歡迎懂得修改檔案並自行上傳圖片的使用者貢獻。

**重要指引（請務必遵守）**

- 本專案中正式的遊戲內容都位於 `pack/` 資料夾內，請以 `pack/` 的檔案為唯一參考來源。不要使用或參考 repository 中其他被忽略的暫存或工具檔案。
- 請先查看根目錄的 `.gitignore`（此專案的被忽略項目範例：`fix_names.ps1`, `list_files.bat`, `temp/`, `pack -*/` 等），那裡列出的檔案通常不應該用作正式包或分發。
- 絕對不要用本專案的 `manifest.json` 去覆蓋或取代遊戲原本（官方）皮膚包的 `manifest.json`。複製時務必備份目標資料夾原始 `manifest.json`，並在複製時排除或保留目標資料夾的 `manifest.json`。

**檔案結構（重點）**

- `pack/` — 正式資源：`geometry.json`, `manifest.json`, `skins.json`, 圖檔與 `texts/`（語言檔）。

**安裝步驟（概要）**

1. 備份遊戲中你要替換的 resource pack 資料夾（特別是 `manifest.json`）。
2. 將 `pack/` 中的檔案複製到目標 resource pack 資料夾，複製時請**排除**目標原始的 `manifest.json`（不要以本專案的 manifest 覆蓋官方 manifest）。
3. 啟動遊戲並在設定 → 資源包中啟用該包。

範例（Windows PowerShell）：

```powershell
$src = 'C:\path\to\MCPE-Skin-Pack\pack\'
$dst = 'C:\path\to\minecraft\resource_packs\YourTargetPack\'
robocopy $src $dst /E /XF manifest.json
```

**新增皮膚（給想貢獻者）**

- 修改 `pack/skins.json` 與 `pack/texts/` 的語言檔來加入新皮膚與顯示名稱，並把對應的圖檔放進 `pack/` 的合適路徑內。請以現有 `skins.json` 格式為範例。
- 因為本 repo 的一些工具與暫存檔被 `.gitignore` 忽略，請不要嘗試以忽略項目中的工具作為上傳來源。

**授權與限制**

- 建議授權：CC BY-NC-SA 4.0（禁止商用，允許改作並要求相同授權釋出）。若你要改授權請告知。
- 作者不負責任何因使用或修改本專案內容造成之損害。作者亦不接受任何支付或收費請求，請勿以本內容牟利。

**聯絡與貢獻**

- 主要作者資訊記載於 `pack/texts/en_US.lang`（`MondayHP`）。
- 若你需要協助格式化 `skins.json` 或語言檔，我可以幫忙整理與合併 PR。


<!-- 繁體中文內容結束 -->
