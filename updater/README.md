# GWYF Translation Updater

This BepInEx plugin syncs `BepInEx/Translation` files from the raw GitHub translation repository for `GWYF-zhtw-Translation`.

## Remote layout

- `manifest.txt`
- `translations/zh-TW/Text/...`
- `translations/zh-TW/Texture/...`

## Config

After first launch, edit:

- `BepInEx/config/codex.gwyf.translationupdater.cfg`

Default remote:

- `https://raw.githubusercontent.com/XoF-eLtTiL/GWYF-zhtw-Translation/main/manifest.txt`
- `https://raw.githubusercontent.com/XoF-eLtTiL/GWYF-zhtw-Translation/main/translations`

Config keys:

- `ManifestUrl`
- `RawBaseUrl`

## Manual commands

Edit:

- `BepInEx/config/GWYF.TranslationUpdater/commands.txt`

Commands:

- `update`
- `force`
- `status`
