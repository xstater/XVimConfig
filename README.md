# XVimConfig
自用的neovim配置

# 备忘
- 使用lua配置，仅兼容Neovim >= 0.9
- 分为正常配置(normal)和vscode配置(vscode)两部分
- vscode配置用于vscode的[VSCode-Neovim](https://github.com/asvetliakov/vscode-neovim.git)插件，将neovim作为vscode的后端。

## 正常配置
- 该配置一般在没有vscode时使用
- 不再使用多tab页和多窗口为主的多文件编辑方式，改为使用多buffer+模糊搜索方式
- git相关操作使用[gitui](https://github.com/extrawurst/gitui)
- lsp目前并未正确配置
- 配色使用[TokyoNight-Night](https://github.com/folke/tokyonight.nvim)
- **todo**
    - 补全器考虑增加五笔补全并添加切换开关
    - 正确配置lsp

### VScode配置
- Neovim可以在WSL中安装以简化配置流程
- Windows中Neovim需要正确配置Home目录
- 需要先在init.lua中设置`vim.g.vscode = true`并启动一次Neovim下载插件
- 目前只添加了[Hop.nvim](https://github.com/phaazon/hop.nvim)用于快速的光标跳转，其余功能由vscode插件提供