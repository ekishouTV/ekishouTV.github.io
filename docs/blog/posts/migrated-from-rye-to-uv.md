---
date:
  created: 2025-11-24
slug: migrated-from-rye-to-uv
---

# Ryeからuvに移行した

## 経緯

[mstdn.maud.io Advent Calendar 2025](https://adventar.org/calendars/11516)に参加するために、このサイトの依存関係を更新している時に以下を知った。

```cardlink
url: https://github.com/astral-sh/rye/pull/1476
title: "Retire Rye and add a uv migration guide by geofft · Pull Request #1476 · astral-sh/rye"
description: "https://lucumr.pocoo.org/2024/8/21/harvest-season/Domination is a goal because it means that most investment will gointo one stack. I can only re-iterate my wish and desire that Rye (andwith it..."
host: github.com
favicon: https://github.githubassets.com/favicons/favicon.svg
image: https://opengraph.githubassets.com/e78d64a59c4634c00a50db90246a50a876ca0e5758c2f485bfa3260812763c2d/astral-sh/rye/pull/1476
```

依存関係が更新し終わって、Pythonを3.14にしようとして「unknown version cpython-x86_64-linux@3.14.0」となり、情報がないかRyeのIssuesを確認するためにRepositoryにアクセスした時に知った。

一日で二回Base imageを更新することになるとは思わなかった

```cardlink
url: https://github.com/ekishouTV/ekishouTV.github.io/commit/e9de41d91b92d0c448155fbb6cc22b2bbfb255d3
title: "build: 🧑‍💻 optimize backend image · ekishouTV/ekishouTV.github.io@e9de41d"
description: "System python is not needed in case of using Rye."
host: github.com
favicon: https://github.githubassets.com/favicons/favicon.svg
image: https://opengraph.githubassets.com/29f8dc81a5c51d66970e74b11686c7921a3a663132dae91122773e76c058554c/ekishouTV/ekishouTV.github.io/commit/e9de41d91b92d0c448155fbb6cc22b2bbfb255d3
```

```cardlink
url: https://github.com/ekishouTV/ekishouTV.github.io/commit/81a95ee9ee5fae99d82f429bca6c782daee78736
title: "build: 🧱 use uv · ekishouTV/ekishouTV.github.io@81a95ee"
description: "https://github.com/astral-sh/rye/pull/1476"
host: github.com
favicon: https://github.githubassets.com/favicons/favicon.svg
image: https://opengraph.githubassets.com/1a57ebc0c45a778cb4e5356d6e289487ee58b518ffe149b5f886980ee6a79b1b/ekishouTV/ekishouTV.github.io/commit/81a95ee9ee5fae99d82f429bca6c782daee78736
```

## MkDocsのLive reloadingが機能しない

```cardlink
url: https://github.com/squidfunk/mkdocs-material/issues/8478
title: "`mkdocs serve` doesn't reload upon change anymore · Issue #8478 · squidfunk/mkdocs-material"
description: "Problem Updated by @squidfunk with explanation + workarounds When serving the documentation with mkdocs serve and making a change to a document in the docs folder, MkDocs does not automatically reb..."
host: github.com
favicon: https://github.githubassets.com/favicons/favicon.svg
image: https://opengraph.githubassets.com/ad2a10e963d2fdd6489dfc2deae3163d0ec91c13492ed5efb5c1db0760970f2f/squidfunk/mkdocs-material/issues/8478
```

[コメント](https://github.com/squidfunk/mkdocs-material/issues/8478#issuecomment-3563690414)の通り、[click](https://github.com/pallets/click)の問題で修正済みのため近くリリースされるはず。
