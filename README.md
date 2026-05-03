# GWYF zh-TW Translation

`Gamble With Your Friends` 繁體中文翻譯庫。

內容包含：

- `translations/zh-TW/...`：實際翻譯文字與貼圖
- `manifest.txt`：給自動更新模組比對用
- `scripts/Update-Manifest.ps1`：更新 manifest
- `updater/`：BepInEx 自動更新翻譯模組原始碼

## 更新翻譯

1. 修改 `translations/` 內檔案
2. 執行：

```powershell
.\scripts\Update-Manifest.ps1
```

3. 提交並推送

## Raw 路徑

- Manifest:
  - `https://raw.githubusercontent.com/XoF-eLtTiL/GWYF-zhtw-Translation/main/manifest.txt`
- Translation base:
  - `https://raw.githubusercontent.com/XoF-eLtTiL/GWYF-zhtw-Translation/main/translations`

## 遊戲端 updater

遊戲端會用 `updater/TranslationUpdaterPlugin.cs` 內的預設 raw URL。
也可以在遊戲生成的 `BepInEx/config/codex.gwyf.translationupdater.cfg` 手動改成別的分支或 fork。

