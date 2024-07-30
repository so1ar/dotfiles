# 使用 Ansible 管理系统的配置文件

目前只支持 Arch 系发行版

## 使用方法

- 使用此模板

    - 点击此页面左上角 `Use this template`，创建一个新仓库；

    - 编辑 `bin/dotfiles` 脚本，将其中的变量 `GITHUB_USER` 和 `GITHUB_REPO` 设置成自己的用户名和仓库名；

    - 如果想用 ssh 克隆仓库，则可以注释掉 dotfiles 脚本中的第 31 行，并取消注释第 33 行。

- 安装到本地

    - 依次运行以下命令：
    ```shell
    # 设置 github 用户名和仓库名，要记得改成自己的用户名和仓库名
    GITHUB_USER = yourusername
    GITHUB_REPO = yourreponame

    # 下载并运行脚本
    curl -fsSL https://raw.githubusercontent.com/$GITHUB_USER/$GITHUB_REPO/master/bin/dotfiles | bash
    ```
    - 仓库会被克隆到 `~/.config/dotfiles` 路径下，其中的 `bin/dotfiles` 脚本会被链接到 `~/.local/bin` 目录下，如果已经将 `~/.local/bin` 目录添加到 $PATH 中，则之后每次重新部署都只需运行 `dotfiles` 命令；

    - dotfiles 脚本会自行安装 Ansible，并运行仓库中默认的两个任务，分别是更新系统和安装 AUR 助手；

    - 在 roles 文件夹中添加自己的任务，并编辑 `group_vars/all.yaml`，在 `default_roles` 下面添加自己的任务名称；

    - 重新运行 `bin/dotfiles` 脚本，应用新建的任务；

    - commit 并 push 到 github 仓库中。
