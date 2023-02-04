# nvim 个人配置
`--------技术蛋老师视频学习笔记 【【全程讲解】Neovim从零配置成属于你的个人编辑器】https://www.bilibili.com/video/BV1Td4y1578E?vd_source=da5495d6ba1dbfc655dda0dce1ee36f8`

### 下载 neovim version 0.8+
https://github.com/neovim/neovim/releases/

### 下载 packer.nvim
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim

cd ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git pull
```

### 下载 lua-language-server
https://github.com/sumneko/lua-language-server/wiki/Getting-Started#command-line
```shell
brew install lua-language-server
```

取消插件管理器的注释
```shell
nvim ~/.config/nvim/init.lua
```

安装插件
```shell
cd ~/.config/nvim/lua/plugins/plugins-setup.lua
:packerSync
```

取消插件的注释
```shell
nvim ~/.config/nvim/init.lua
nvim ~/.config/nvim/lua/base/keymaps.lua
nvim ~/.config/nvim/lua/base/options.lua
```

安装编程语言支持
```shell
:Mason
```
