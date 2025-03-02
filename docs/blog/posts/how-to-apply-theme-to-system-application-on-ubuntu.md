---
date:
  created: 2025-03-02
---

# UbuntuのSystem applicationにThemeを適用する

## 方法

以下を使用する

```cardlink
url: https://github.com/odziom91/libadwaita-theme-changer
title: "GitHub - odziom91/libadwaita-theme-changer: Theme changer for Libadwaita"
description: "Theme changer for Libadwaita. Contribute to odziom91/libadwaita-theme-changer development by creating an account on GitHub."
host: github.com
favicon: https://github.githubassets.com/favicons/favicon.svg
image: https://opengraph.githubassets.com/156e5244ee79cb83ae407b03e28539efb3c31c2e6435da24beb88308a1a39119/odziom91/libadwaita-theme-changer
```

`~/.local/share/themes/`に対応していないため、Symbolic linkを作成する。

``` bash
ln -s ~/.local/share/themes/ ~/.themes
```

## 経緯

Nordicを適用した際に、`Settings`などSystem applicationにThemeが適用されない事象に遭遇した。  
[Nordic - Gnome-look.org](https://www.gnome-look.org/p/1267246/?ref=itsfoss.com)のコメントへの作者の返信に[解決策](https://github.com/EliverLara/Sweet/issues/262#issuecomment-2035328391)が記載されている。
