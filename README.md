# nvim-config

[![Neovim](https://img.shields.io/badge/Editor-Neovim-blue)](https://neovim.io/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

自分用の Neovim 設定（Lua + lazy.nvim）です。  
LSP, CMP, NvimTree, Bufferline などを含み、C/C++ と Python(予定) に対応しています。

## 機能

- **プラグイン管理**: lazy.nvim
- **ステータスバー**: lualine
- **バッファ/タブ管理**: bufferline.nvim
- **ファイルツリー**: nvim-tree.lua
- **補完**: nvim-cmp + LuaSnip
- **LSP**: C/C++ (clangd), Python (pyright)
- **カラースキーム**: vim のテーマに lualine/bufferline を統一
- **構文解析**: nvim-treesitter

## インストール

```bash
git clone https://github.com/ochiaikouta/nvim-config.git ~/.config/nvim
```
```bash
nvim
```
```vim
:Lazy sync
```
## キーマッピング
- `<C-n>`: NvimTree トグル
- `<Tab>` / `<S-Tab>`: 補完メニュー移動
- `<C-h/j/k/l>`: ウィンドウ移動
- `<C-Right/Left>`: バッファ移動
- `<leader>f`: formatter を手動実行
- `<leader>l`: linter を手動実行
- `:w` / `:q` などは Vim 標準

## カスタマイズ
~/.config/nvim/lua/plugins/ 以下にプラグインごとの設定ファイルがあります。
自分用の設定は ~/.config/nvim/lua/custom/ に追加すると安全です。

## 開発環境セットアップ（Treesitter 用）

### 1. Rust のインストール
tree-sitter CLI をビルドするために必要です。
```bash
sudo pacman -S rust
```
### 2. Node.js のインストール
一部の Treesitter パーサー（TypeScript, JavaScript など）や LSP プラグインで必要です。
```bash
sudo pacman -S nodejs npm
```
### 3. tree-sitter CLI のインストール
```bash
git clone https://github.com/tree-sitter/tree-sitter
cd tree-sitter
cargo install --path .
```
- CLI は ~/.cargo/bin/tree-sitter にインストールされます
- ビルド後、ディレクトリは不要で削除しても OK

### 4. Neovim で Treesitter パーサーをインストール
```vim
:TSInstall c cpp lua python rust typescript javascript
```
- インストール済みパーサー確認：`:TSInstallInfo`
- 全パーサー更新：`:TSUpdate`

## Formatter / Linter

- formatter: `conform.nvim`
- linter: `nvim-lint`
- ツールの自動導入: `mason-tool-installer.nvim`

起動時に Mason 経由で以下のツールを導入します。

- `stylua`
- `shfmt`
- `prettier`
- `clang-format`
- `ruff`
- `selene`
- `shellcheck`
- `eslint_d`
- `cpplint`

Rust の `rustfmt` は Mason ではなく rustup 側のコンポーネントです。

```bash
rustup component add rustfmt
```

## ライセンス

MIT
