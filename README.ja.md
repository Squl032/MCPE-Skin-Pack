![cover](background.png)

# MCPE Skin Pack（日本語）

---

語言選擇 / Language selector / 언어 선택：

- [中文（繁體）](README.md)
- [English](README.en.md)
- [한국어](README.ko.md)

---

概要

> **このファイルはAIによって生成されました。作者は内容に関して責任を負いません。**

このリポジトリは Minecraft Bedrock / Pocket Edition 向けのスキンパックを提供します。主にプレイヤー向けですが、ファイル編集や画像アップロードができる方の貢献も歓迎します。

重要な注意点

- 正式なゲーム資産は `pack/` フォルダ内のみを参照してください。他の一時ファイルや無視設定されたツールは使用しないでください。
- ルートの `.gitignore` を確認してください（例：`fix_names.ps1`, `list_files.bat`, `temp/`, `pack -*/`）。これらはバージョン管理から除外されています。
- ゲームの公式 `manifest.json` をこのリポジトリの `manifest.json` で上書きしないでください。ターゲットの `manifest.json` を必ずバックアップし、コピー時には除外してください。

インストール（概要）

1. 対象の resource pack フォルダをバックアップ（特に `manifest.json`）。
2. `pack/` の内容を対象の resource pack フォルダにコピーするが、対象フォルダの `manifest.json` は置き換えない。
3. ゲームを起動し、設定 → リソースパックで有効化する。

貢献方法

- 新しいスキンを追加する場合は、`pack/skins.json` と `pack/texts/` の言語ファイルを編集し、対応するテクスチャを `pack/` 内の適切な場所に追加してください。

ライセンス

- 推奨ライセンス: CC BY-NC-SA 4.0（非商用、継承）。別のライセンスを希望する場合はお知らせください。

連絡先

- 作者は `pack/texts/en_US.lang` に記載されています（`MondayHP`）。
