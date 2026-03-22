# nvim-config

[![Neovim](https://img.shields.io/badge/Editor-Neovim-blue)](https://neovim.io/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

自分用の Neovim 設定（Lua + lazy.nvim）です。

## 🔧必要環境

- Neovim >= 0.11
- Node.js / npm (tree-sitter)
- typescript（tsserver。typescript-language-server の内部で使用）
- Rust (tree-sitter CLI / rust-analyzer / rustfmt 用)
- rustfmt (rustのformatter)
- ripgrep (全文検索/nvim-telescope)
- fd (ファイル検索/nvim-telescope)

## ⚙️ 各プラグインと機能

- **プラグイン管理**: lazy.nvim
- **ステータスバー**: lualine
- **バッファ/タブ管理**: bufferline.nvim
- **ファイルツリー**: nvim-tree.lua
- **補完**: nvim-cmp + LuaSnip
- **LSP, Formatter, Linter管理**: mason.nvim
- **Formatter, Linter**: conform-nvim, nvim-lint
- **カラースキーム**: tokyo-night
- **バッファ**: lualine/bufferline を統一
- **構文解析**: nvim-treesitter
- **ファイル、語句検索**: nvim-telescope

## 🧠 LSP / Formatter / Linter（Mason）

Mason によって以下のツールが管理されます。

### LSP

- Lua: `lua-language-server`
- C/C++: `clangd`
- Python: `pyright`
- Rust: `rust-analyzer`
- JavaScript / TypeScript: `typescript-language-server`
- HTML: `html-lsp`
- CSS: `css-lsp`

### Formatter

- Lua: `stylua`
- Shell: `shfmt`
- JavaScript / TypeScript / JSON: `prettier`
- C/C++: `clang-format`

### Linter

- Python: `ruff`
- Lua: `selene`
- Shell: `shellcheck`
- JavaScript / TypeScript: `eslint_d`
- C/C++: `cpplint`

### その他

- Emmet: `emmet-language-server`（HTML / CSS 補助）

## インストール

```bash
git clone https://github.com/kasumi-huwarin/nvim-config.git ~/.config/nvim
```

```bash
nvim
```

```vim
:Lazy sync
```

## カスタマイズ

- `/lua/plugins/` 以下にプラグインごとの設定ファイル
- `/lua/keymaps.lua` にvimのキーマップの設定
- `/lua/options.lua` にvimのオプション設定

## 開発環境セットアップ（Treesitter 用）

- Rust のインストール

```bash
sudo pacman -S rust
```

- Node.js のインストール

```bash
sudo pacman -S nodejs npm
```

- tree-sitter CLI のインストール

```bash
git clone https://github.com/tree-sitter/tree-sitter
cd tree-sitter
cargo install --path .
```

- Neovim で Treesitter パーサーをインストール

```vim
:TSInstall c cpp lua python rust typescript javascript ...
```

## セットアップ(その他)

- Rust の `rustfmt` は Mason ではなく rustup 側のコンポーネント

```bash
rustup component add rustfmt
```

## 🧪 動作確認

```vim
:checkhealth
:LspInfo
```

## ⚠️ 注意

- JavaScript / TypeScript の補完には以下が必要:
  - `typescript`
  - `jsconfig.json` または `tsconfig.json`

## ライセンス

MIT
