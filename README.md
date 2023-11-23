<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [系统](#%E7%B3%BB%E7%BB%9F)
  - [更改源](#%E6%9B%B4%E6%94%B9%E6%BA%90)
  - [系统配置文件](#%E7%B3%BB%E7%BB%9F%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6)
  - [环境变量](#%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F)
  - [TerminalMultiplexers](#terminalmultiplexers)
- [SSH](#ssh)
- [GIT](#git)
- [Terminal](#terminal)
- [命令行工具](#%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%B7%A5%E5%85%B7)
- [查找搜索](#%E6%9F%A5%E6%89%BE%E6%90%9C%E7%B4%A2)
- [复制粘贴](#%E5%A4%8D%E5%88%B6%E7%B2%98%E8%B4%B4)
- [版本控制及包管理](#%E7%89%88%E6%9C%AC%E6%8E%A7%E5%88%B6%E5%8F%8A%E5%8C%85%E7%AE%A1%E7%90%86)
- [数据科学常用包](#%E6%95%B0%E6%8D%AE%E7%A7%91%E5%AD%A6%E5%B8%B8%E7%94%A8%E5%8C%85)
- [配置工具](#%E9%85%8D%E7%BD%AE%E5%B7%A5%E5%85%B7)
- [数据存储及快速查询](#%E6%95%B0%E6%8D%AE%E5%AD%98%E5%82%A8%E5%8F%8A%E5%BF%AB%E9%80%9F%E6%9F%A5%E8%AF%A2)
- [CUDA](#cuda)
- [IDE](#ide)
  - [SublimeText](#sublimetext)
  - [Emacs](#emacs)
  - [Vim](#vim)
- [Python 技能](#python-%E6%8A%80%E8%83%BD)
  - [Resources](#resources)
  - [Basic](#basic)
  - [Trick](#trick)
  - [State](#state)
  - [Pipe](#pipe)
  - [FP](#fp)
- [数据结构和算法](#%E6%95%B0%E6%8D%AE%E7%BB%93%E6%9E%84%E5%92%8C%E7%AE%97%E6%B3%95)
- [LLM](#llm)
  - [Layout](#layout)
  - [Sheet](#sheet)
  - [Agent](#agent)
  - [VectorSearch](#vectorsearch)
  - [Just Skin](#just-skin)
  - [Inference](#inference)
  - [Prompts](#prompts)
- [AI](#ai)
  - [Deploy](#deploy)
  - [Demo/WebAPP](#demowebapp)
  - [Toolkit](#toolkit)
  - [Dataset](#dataset)
  - [DataAnnotation](#dataannotation)
  - [DeepLearning](#deeplearning)
  - [MachineLearning](#machinelearning)
  - [HyperOptimization](#hyperoptimization)
- [工程](#%E5%B7%A5%E7%A8%8B)
  - [Design](#design)
  - [Test](#test)
  - [Style & Analysis](#style--analysis)
  - [Profile](#profile)
  - [Performence](#performence)
  - [Command Line](#command-line)
  - [Better Print](#better-print)
  - [Debug](#debug)
  - [Safety](#safety)
  - [Distribute](#distribute)
  - [FrameWork](#framework)
  - [Boilerplate](#boilerplate)
  - [JWT](#jwt)
  - [Coroutine](#coroutine)
  - [Concurrency](#concurrency)
  - [Memory](#memory)
  - [API](#api)
  - [RPC](#rpc)
  - [Deploy](#deploy-1)
  - [Database](#database)
  - [Project](#project)
  - [Architecture](#architecture)
  - [Network](#network)
- [Tool](#tool)
  - [Spider](#spider)
  - [Audio](#audio)
  - [Chat](#chat)
  - [Text](#text)
  - [OCR](#ocr)
  - [Task](#task)
  - [Visualization](#visualization)
  - [GUI](#gui)
  - [Logic](#logic)
- [设计五原则](#%E8%AE%BE%E8%AE%A1%E4%BA%94%E5%8E%9F%E5%88%99)
- [刷题](#%E5%88%B7%E9%A2%98)
- [面试](#%E9%9D%A2%E8%AF%95)
- [论文、会议及期刊](#%E8%AE%BA%E6%96%87%E4%BC%9A%E8%AE%AE%E5%8F%8A%E6%9C%9F%E5%88%8A)
- [小工具](#%E5%B0%8F%E5%B7%A5%E5%85%B7)
- [致谢](#%E8%87%B4%E8%B0%A2)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

> 个人工具箱，Python 居多。包括但不限于：系统、编程、算法等多个方面内容。

## 系统

### 更改源

更改 Linux 系统软件源：

- 阿里云镜像 http://mirrors.aliyun.com
- 网易镜像 http://mirrors.163.com
- 搜狐镜像 http://mirrors.sohu.com
- 清华大学开源软件镜像 https://mirrors.tuna.tsinghua.edu.cn
- 中国科学技术大学开源软件镜像 https://mirrors.ustc.edu.cn  

下面例子是 Ubuntu16.04（xenial）的。**不同的系统版本源不同，注意更换。**

```
# 备份原文件
mv /etc/apt/sources.list /etc/apt/sources.list.bak

# 修改镜像源
cat > /etc/apt/sources.list << END  
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
END

# 更新源列表（Ubuntu）
sudo apt-get update
```


参考至：

- [修改软件源为国内加速镜像 - 技术分享 - 社区 - 好雨，让云落地](https://t.goodrain.com/t/topic/236)
- [LUG's repo file generator](https://mirrors.ustc.edu.cn/repogen/)


### 系统配置文件

**所有用户**

- `/etc/profile`: 此文件为系统的每个用户设置环境信息。当用户登录时，该文件被执行一次，并从 `/etc/profile.d` 目录的配置文件中搜集 shell 的设置。一般用于设置所有用户使用的全局变量。
- `/etc/bashrc`: 当 bash shell 被打开时，该文件被读取。也就是说，每次新打开一个终端 shell，该文件就会被读取。
- `/etc/paths` 
- [echo 变量内容删除和替换](http://blog.51cto.com/sndapk/1093073)

**单个用户**

- `~/.bash_profile`: 登录之后在 `/etc/profile` 载入之后载入, 十分重要的配置文件
- `~/.bash_login`: 登录之后如果 `~/.bash_profile` 不存在的话, 载入这个文件 
- `~/.profile`: 登录之后 `~/.bash_login` 不存在的话, 才载入这个文件 

只对单个用户生效，当用户登录时该文件仅执行一次。

- `~/.bashrc`: `bash shell` 只对单个用户生效，当登录以及每次打开新的 shell 时，该文件被读取。
- `~/.bash_logout`  


注意：  

- 使用 `source /etc/environment` 可以使变量设置在当前窗口立即生效，需注销 / 重启之后，才能对每个新终端窗口都生效。
- 如果是 bash 是 zsh 或其他的，需要修改**对应的配置文件**。
- 建议针对当前用户修改
- 详细可移步：[.bash\_profile,profile,bashrc 的区别和启动顺序](https://blog.blogbins.com/bash_profile-profile-bashrcde-qu-bie-he-qi-dong-shun-xu/) 和 [科学网—linux 中 PATH 环境变量的作用和使用方法 - 张志斌的博文](http://blog.sciencenet.cn/blog-1339458-804112.html)

参考至：[设置 Linux 环境变量的方法和区别\_Ubuntu\_给力星](http://www.powerxing.com/linux-environment-variable/)

### 环境变量

- `LIBRARY_PATH`  
  - 环境变量用于在程序编译期间查找动态链接库时指定查找共享库的路径
  - 例如，指定 gcc 编译需要用到的动态链接库的目录。设置方法如下（其中，LIBDIR1 和 LIBDIR2 为两个库目录）：`export LIBRARY_PATH=LIBDIR1:LIBDIR2:$LIBRARY_PATH`
- `LD_LIBRARY_PATH`
  - 环境变量用于在程序加载运行期间查找动态链接库时指定除了系统默认路径之外的其他路径
  - 注意，`LD_LIBRARY_PATH` 中指定的路径会在系统默认路径之前进行查找。
  - 设置方法如下（其中，LIBDIR1 和 LIBDIR2 为两个库目录）：`export LD_LIBRARY_PATH=LIBDIR1:LIBDIR2:$LD_LIBRARY_PATH`
- 概括
  - 开发时，设置 `LIBRARY_PATH`，以便 gcc 能够找到编译时需要的动态链接库。
  - 发布时，设置 `LD_LIBRARY_PATH`，以便程序加载运行时能够自动找到需要的动态链接库。
- 不同操作系统的名称  


OS	|Environment Variable Name
-----|-----
Linux|	`LD_LIBRARY_PATH`
Solaris 32-bit ruby|`LD_LIBRARY_PATH_32 or LD_LIBRARY_PATH`
Solaris 64-bit ruby|`LD_LIBRARY_PATH_64 or LD_LIBRARY_PATH`
HP-UX PA-RISC 32-bit ruby|	`SHLIB_PATH`
HP-UX PA-RISC 64-bit ruby|	`LD_LIBRARY_PATH`
HP-UX IA64|	`LD_LIBRARY_PATH`
Mac OS X|	`DYLD_LIBRARY_PATH`
AIX|	`LIBPATH`


参考至： 

  - [LIBRARY\_PATH 和 LD\_LIBRARY\_PATH 环境变量的区别 - 大圆那些事 - 博客园](http://www.cnblogs.com/panfeng412/archive/2011/10/20/library_path-and-ld_library_path.html)  
  - [LD\_LIBRARY\_PATH 与 LIBPATH - russle 的专栏 - CSDN 博客](http://blog.csdn.net/russle/article/details/7228462)

### TerminalMultiplexers

远程会话窗口管理器，就是让你的远程连接（SSH）不中断，退出后下次登录时程序依然在运行。具体可参考：


- [使用 screen 管理你的远程会话](https://www.ibm.com/developerworks/cn/linux/l-cn-screen/index.html)。简单使用：
  - 创建：`screen -S [name]`
  - 查看：`screen -ls`
  - 进入：`screen -r [name]`
  - 退回到命令行，让程序在 screen 后台自动运行：`Control + a + d`
- 更强大的 Tmux：
  - [tmuxp — tmuxp 1.3.5 documentation](https://tmuxp.git-pull.com/en/latest/)
  - [优雅地使用命令行：Tmux 终端复用 | Harttle Land](http://harttle.land/2015/11/06/tmux-startup.html)
  - [Linux 下终端利器 tmux - OPS Notes By 枯木](http://kumu-linux.github.io/blog/2013/08/06/tmux/)
  - [Tmux Cheat Sheet & Quick Reference](https://tmuxcheatsheet.com/)
- 二者使用对比：[Terminal Multiplexers: Screen, Tmux - Hyperpolyglot](http://hyperpolyglot.org/multiplexers)


## SSH

- [SSH 原理与运用（一）：远程登录 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2011/12/ssh_remote_login.html)
- 优化 SSH（断网不影响连接）：
  - [Mosh: the mobile shell](https://mosh.org/)
  - [Tutorial: Ditch SSH, get started with Mosh | Serverwise](https://blog.ssdnodes.com/blog/tutorial-ditch-ssh-get-started-mosh/)
  - 中文简版：[技术 | mosh：一个基于 SSH 用于连接远程 Unix/Linux 系统的工具](https://linux.cn/article-6262-1.html)
  - [使用 Mosh 来优化 SSH 连接 - 运维之美 - 伪程序员](https://www.dengxiangxing.com/post/25081)
- 服务器本地传输
  - **推荐：SSHFS**: [libfuse/sshfs: A network filesystem client to connect to SSH servers](https://github.com/libfuse/sshfs)
  - 挂载磁盘
  - RSYNC: [rsync](https://rsync.samba.org/)


## GIT

因为很多软件都需要从 GitHub 下载，所以需要优先配置一下。Git 命令不需要专门记，常用的就几个，其他的用时查一下就可以了。  

- 可以当工具用的
  - [常用 Git 命令清单 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2015/12/git-cheat-sheet.html)
  - Git **下载部分内容**：[DownGit](https://minhaskamal.github.io/DownGit/#/home)
  - GitHub [如何选择开源许可证？](http://www.ruanyifeng.com/blog/2011/05/how_to_choose_free_software_licenses.html)
- Git Query 工具：[cloudson/gitql: A git query language](https://github.com/cloudson/gitql)
- 一些技巧
  - [Git 秘籍](https://www.gitbook.com/book/snowdream86/github-cheat-sheet/details/zh)
  - [图解 Git](http://marklodato.github.io/visual-git-guide/index-zh-cn.html#cherry-pick)
  - [Git 的 4 个阶段的撤销更改 - 日新亭 - SegmentFault](https://segmentfault.com/a/1190000011969554)
  - [重新组织 git 本地提交 | yongpoliu.com](http://yongpoliu.com/reorganize-git-local-commits/)


## Terminal

- Terminal: [iTerm2 - macOS Terminal Replacement](https://www.iterm2.com/)
- Bash: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)，需要先安装 Zsh: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)



## 命令行工具

- [20 Command Line Tools to Monitor Linux Performance](https://www.tecmint.com/command-line-tools-to-monitor-linux-performance/)
- [13 Linux Performance Monitoring Tools - Part 2](https://www.tecmint.com/linux-performance-monitoring-tools/)
- 命令行使用代理：[shadowsocks及 ProxyChains-NG 实现终端(iterm2)下代理](https://www.textarea.com/mactive/shadowsocks-ji-proxychains-ng-shixian-zhongduan-iterm2-xia-daili-639/)
- 快速 CD：  
  - [wting/autojump: A cd command](https://github.com/wting/autojump)
  - [rupa/z: z - jump around](https://github.com/rupa/z)
- 命令行处理文本（包括：显示、文件合并、去重、分割）：
  - `sed awk split head `
  - [AWK 简明教程](https://coolshell.cn/articles/9070.html)
  - [使用命令行高效地进行文本编辑](https://www.ibm.com/developerworks/cn/aix/library/au-textedit.html)
  - [linux 文件合并，去重，分割 - 长颈鹿 Giraffe - 博客园](http://www.cnblogs.com/giraffe/p/3193085.html)
  - [klen/atmark: Awk+Sed for humans](https://github.com/klen/atmark)
- 各种命令使用快查：[tldr-pages/tldr: Simplified and community-driven man pages](https://github.com/tldr-pages/tldr)
- [chubin/cheat.sh: the only cheat sheet you need](https://github.com/chubin/cheat.sh)
- [应该知道的 Linux 技巧](https://coolshell.cn/articles/8883.html)

## 查找搜索

- 快速查找：[junegunn/fzf: A command-line fuzzy finder](https://github.com/junegunn/fzf)，这里有一些很好的例子：[Examples · junegunn/fzf Wiki](https://github.com/junegunn/fzf/wiki/examples)
- [mooz/percol: adds flavor of interactive filtering to the traditional pipe concept of UNIX shell](https://github.com/mooz/percol#whats-this)
- 文本搜索：[Geoff Greer's site: The Silver Searcher](https://geoff.greer.fm/ag/)
- 字符串搜索：[pyahocorasick — ahocorasick 1.1.0 documentation](http://pyahocorasick.readthedocs.io/en/latest/)


## 复制粘贴

- Mac: [Copy to and Paste from the Clipboard on the Mac OSX Command Line](http://sweetme.at/2013/11/17/copy-to-and-paste-from-the-clipboard-on-the-mac-osx-command-line/)
- Mac: alfred-clipboard 调出所有复制过的文本
- Mac 一键上传图片到亿方云并生成链接：[jiwenxing/qimage-mac: mac 版本的 markdown 一键贴图工具，基于 alfred 实现，支持本地文件、截图、网络图片一键上传七牛云，使用简单方便](https://github.com/jiwenxing/qimage-mac)


## 版本控制及包管理

- 虚拟机管理：[Vagrant by HashiCorp](https://www.vagrantup.com/)
  - 安装碰到问题：[Ubuntu16.04 安装 VirtualBox & Vagrant 管理 VirtualBox 各种问题总结](http://yam.gift/2016/09/04/2016-09-20-Ubuntu-VirtualBox-Vagrant-questions/)
  - 使用：[Introduction - Vagrant by HashiCorp](https://www.vagrantup.com/intro/index.html)
- 虚拟环境：[Reference Guide — virtualenv 15.1.0 documentation](https://virtualenv.pypa.io/en/stable/reference/#options)
  - 安装：`pip install virtualenv`  
  - 创建虚拟环境：`mkdir name; virtualenv --arguments [name]; cd name`
  - 激活：`source ./bin/activate`
  - 关闭：`deactivate`
- 版本控制：[pyenv/pyenv: Simple Python version management](https://github.com/pyenv/pyenv)，注意 pyenv 的路径是可以改的
  - 安装软件（不是安装 pyenv），举例安装 Anaconda：  
    `wget -P $(pyenv root)/cache https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-4.0.0-MacOSX-x86_64.sh` 
    `pyenv install Anaconda3-4.0.0`
  - 创建虚拟环境：`pyenv virtualenv [version] [name]`
  - 激活：`pyenv activate name` or `source activate name`
  - 关闭：`pyenv deactivate`
- 包管理：[Conda — Conda documentation](https://conda.io/docs/)
  - conda 必须安装 miniconda 或 Anaconda
  - `conda list`
  - `conda search`
  - 创建虚拟环境：`conda create -n [name] python=3.6.2`
  - 激活：`source activate name`
  - 关闭：`source deactivate`
- Python 包管理：[pip — pip 9.0.1 documentation](https://pip.pypa.io/en/stable/)
  - 更换源：[Mac OX 设置 pip 国内镜像，下载速度超快 - 简书](https://www.jianshu.com/p/e993bdfff7b3)
  - 多个源：[pip：指定多个源 / 内部源 - CSDN 博客](http://blog.csdn.net/K_Zombie/article/details/50478577)
- **推荐**的 Python 包**开发**管理工具：
    - [Poetry - Python dependency management and packaging made easy.](https://python-poetry.org/)
    - [Pipenv: Python Dev Workflow for Humans](https://docs.pipenv.org/)
- **推荐**的创建虚拟环境方法：`python3 -m venv [name]`，详见：[venv](https://docs.python.org/3.6/library/venv.html)

**注意**：安装 `Conda` 后，`pyenv` 的虚拟环境会由 `Conda` 接管。详见：[pyenv/pyenv-virtualenv: a pyenv plugin to manage virtualenv (a.k.a. python-virtualenv)](https://github.com/pyenv/pyenv-virtualenv)。

- Mac 上的 Python

  经过不少的实践，在 Mac 上可以使用 homebrew 来管理 python 版本，大多数时候我们只需要一个稳定的版本就够了，具体项目中可以使用 poetry。要安装不同的版本，方法如下：

  - `brew unlink python` 解除现有版本的绑定
  - `brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/hash/Formula/python.rb`，其中的 hash 可在 [History for Formula/python.rb - Homebrew/homebrew-core](https://github.com/Homebrew/homebrew-core/commits/master?path%5B%5D=Formula&path%5B%5D=python.rb) 中找到，如果要的版本太旧，往前翻时并不会显示，但会有提醒告知如何查看。
  - 在你的 bash 或 zsh 配置文件中添加：`export PATH="/usr/local/opt/python/libexec/bin:$PATH"`
  - `brew switch python xxx` 切换各种版本，所有的东西都会自动弄好

  注意：只要这么操作就可以无痛使用（Mac），但如果你想更深入了解一下，下面的内容可以参考：

  - brew 安装的 python 在 `/usr/local/Cellar/python@[version]/`
  - `site-packages` 实际位置在 `/usr/local/lib/python*`
  - brew 安装好后会在两个地方创建链接：
      - `/usr/local/opt/python/libexec/bin/`
      - `/usr/local/bin/`
  - 系统自带的在 `/usr/bin/python`，实际位置在 `/System/Library/Frameworks/Python.framework/Versions/`，`site-packages` 在 `/usr/local/lib/python2.7`下，系统自带有多个版本（2.3 2.5 2.6 2.7），当前为 2.7
  - 升级 Xcode 后会安装 Python3，在 `/usr/bin/python3`，实际位置在 `/Applications/Xcode.app/Contents/Developer/usr/bin/python3`，`site-packages` 有两个，用户的在 `~/Library/Python/3.8/lib/python/`，系统的在 `/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.8/lib/python3.8/site-packages/`
  - 最终 python=python2（系统带的），python3=python3.8.9（Xcode 装的），python3.7，python3.8，python3.9 分别对应各自版本。pip3=pip3.8.9（Xcode 的，在系统的 `site-packages` 里），pip3.7，pip3.8，pip3.9 分别对应各自版本。整体清爽了很多，当然输入时稍微麻烦了些。


## 数据科学常用包

- [IPython](http://ipython.org/)
- 基础运算：[NumPy](https://docs.scipy.org/doc/numpy-dev/index.html)
- 数据清理分析：[Pandas](http://pandas.pydata.org/)
- 画图的：[Matplotlib](http://matplotlib.org/index.html)
- 机器学习：[scikit-learn](http://scikit-learn.org/stable/index.html)
- 可以写代码 + 笔记的 NoteBook：[Project Jupyter | Home](https://jupyter.org/)
  - 安装：`pip install jupyter`
  - [jupyter\_contrib\_nbextensions: A collection of various notebook extensions for Jupyter](https://github.com/ipython-contrib/jupyter_contrib_nbextensions)（推荐，有很多安好的插件）：
  	  - `pip install jupyter_contrib_nbextensions`
  	  - `jupyter contrib nbextension install --user`
  	  - `jupyter nbextension enable codefolding/main`
  - server extension: [jupyter\_nbextensions\_configurator: A jupyter notebook serverextension providing config interfaces for nbextensions.](https://github.com/Jupyter-contrib/jupyter_nbextensions_configurator)（不太推荐）：
  		- `pip install jupyter_nbextensions_configurator`
  		- `jupyter nbextensions_configurator enable --user`
  - 远程服务器 jupyter notebook 创建（如何创建参照网上教程）后，本地访问：本地创建 `ssh remote_name@remote_address -L127.0.0.1:remode_port:127.0.0.1:local_port` 就可以在本地用 `localhost:local_port` 访问了
  - 并行：[ipython/ipyparallel: Interactive Parallel Computing in Python](https://github.com/ipython/ipyparallel)
  		- `pip install ipyparallel`
  		- `ipcluster nbextension enable`

## 配置工具

- [chimpler/pyhocon: HOCON parser for Python](https://github.com/chimpler/pyhocon)
- [rbgirshick/yacs: YACS -- Yet Another Configuration System](https://github.com/rbgirshick/yacs)
- Host 修改工具：[Clockwise](http://clockwise.ee/)

## 数据存储及快速查询


- TAR,GZIP, BZIP2, XZ 对比
  - 需要在内存很小的机器（如小于 128 MB）上解压缩时，选择 gzip 格式。
  - 需要在很简单、沒有什么工具可用的机器上解压缩时，选择 gzip 格式。
  - 需要节省带宽、缩短下载所需时间时，选择 xz 格式。
  - 推荐用 gz 压缩：  
    - `tar zcvf test.tar test` 仅打包，不压缩
    - `tar zcvf test.tar.gz test` 打包后以 gzip 压缩
    - `tar zxvf test.tar.gz -C /to/your/path ` 解压缩到某目录
    - 存储用 xz（速度慢，压缩效率高）：
      - `tar Jcvf file_name.tar.xz dir_name ` 压缩
      - `tar Jxvf file_name.tar.xz` 解压缩

参考至：[Linux 中最佳的壓縮格式：為什麼 bzip2 會被 xz 取代？那 gzip 又如何？ - G. T. Wang](https://blog.gtwang.org/linux/linux-why-are-tar-archive-formats-switching-to-xz-compression-to-replace-bzip2-and-what-about-gzip/)


- 字典存储：[DAWG](http://dawg.readthedocs.io/en/latest/)
- 数据存储：[leveldb 资料整理 - 区块链知识库](http://lib.csdn.net/article/blockchain/46144)
- 数据结构：[Bloom filter - Wikiwand](https://www.wikiwand.com/en/Bloom_filter)

## CUDA

强烈建议看官方文档，不要看各类教程。


- CUDA 
  - 安装包下载：[CUDA Toolkit Archive | NVIDIA Developer](https://developer.nvidia.com/cuda-toolkit-archive)
  - 特定版本：[CUDA Toolkit 11.8 Downloads | NVIDIA Developer](https://developer.nvidia.com/cuda-11-8-0-download-archive)
  - 安装：[Installation Guide Linux :: CUDA Toolkit Documentation](http://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#pre-installation-actions)
  - Docker相关：[Installing the NVIDIA Container Toolkit — NVIDIA Container Toolkit 1.14.3 documentation](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
- cuDNN 
  - 安装包下载：[cuDNN Download | NVIDIA Developer](https://developer.nvidia.com/rdp/cudnn-archive)
  - 安装：[cuDNN Installation Guide :: Deep Learning SDK Documentation](http://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html#installdriver)
- `sudo apt-get install cuda-x-0`: 安装非最新版本
- 卸载
  - `sudo apt-get --purge remove cuda`
  - `sudo apt autoremove`
  - `sudo apt-get clean`
- 找不到 5 时可以软链：`ln -s libcudnn.so.6.* libcudnn.so.5`


## IDE

### SublimeText

- 设置 TAB 键为空格：`{
  "tab_size": 4,
  "translate_tabs_to_spaces": true,
  }`
- pep8 插件，使用：`Ctrl + Shift + 8`

### Emacs

- [GNU Emacs download - GNU Project](https://www.gnu.org/software/emacs/download.html#macos)
- Learn: 
  - [Emacs is sexy](http://emacs.sexy/#learn)
  - [一年成为 Emacs 高手 (像神一样使用编辑器) - redguardtoo 的专栏 - CSDN 博客](https://blog.csdn.net/redguardtoo/article/details/7222501)
- Errors on Mac:
  - [macos - Failed to initialize color list](https://stackoverflow.com/questions/52521587/emacs-error-when-i-call-it-in-the-terminal)
  - iTerm Alt Metakey: [macos - Bash keyboard shortcuts in iTerm like Alt+d and Alt+f - Stack Overflow](https://stackoverflow.com/questions/18923765/bash-keyboard-shortcuts-in-iterm-like-altd-and-altf)
- 快捷键：
    - [emacs cheat sheet](http://www.rgrjr.com/emacs/emacs_cheat.html)
    - [Emacs Keys Basics](http://ergoemacs.org/emacs/emacs_keys_basics.html)

### Vim

- 技巧：
    - [YBlog - Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
    - [中文版](https://coolshell.cn/articles/5426.html)
- 配置：
    - [vim-airline/vim-airline: lean & mean status/tabline for vim that's light as air](https://github.com/vim-airline/vim-airline)
    - [wklken/k-vim: vim 配置](https://github.com/wklken/k-vim)
    - [ma6174/vim: vim 配置文件和插件](https://github.com/ma6174/vim)
- 教程：  
    - [A Good Vimrc](https://dougblack.io/words/a-good-vimrc.html)
    - [vim 插件管理器：Vundle 的介绍及安装](http://blog.csdn.net/zhangpower1993/article/details/52184581)
    - [Vim 与 Python 真乃天作之合](http://codingpy.com/article/vim-and-python-match-in-heaven/)
- 快捷键：
    - [Vim Cheat Sheet](https://vim.rtorr.com/)
    - [vi 與 vim 的指令整理 | Vixual](http://www.vixual.net/blog/archives/234)
    - [給程式設計師的 Vim 入門圖解說明 | vgod's blog](http://blog.vgod.tw/2009/12/08/vim-cheat-sheet-for-programmers/)


## Python 技能

### Resources

- [Awesome Python](https://github.com/vinta/awesome-python)
- [awesome-python-cn: Python 资源大全中文版](https://github.com/jobbole/awesome-python-cn)

- [jackfrued/Python-100-Days: Python - 100 天从新手到大师](https://github.com/jackfrued/Python-100-Days)

### Basic

- [Best practices guidebook](https://github.com/realpython/python-guide)
- [Python Cookbook 3rd](https://python3-cookbook.readthedocs.io/zh_CN/latest/index.html)
- [Python Tips](https://book.pythontips.com/en/latest/index.html)
- [The Hitchhiker's Guide to Python](https://docs.python-guide.org/)
- [Python 3 Module of the Week](https://pymotw.com/3/index.html)

### Trick

- [Python Tricks](https://github.com/brennerm/PyTricks)
- [Python WTF](https://github.com/satwikkansal/wtfpython)

### State

- [FSM](https://github.com/pytransitions/transitions)
- [State](https://pypi.org/project/state/)

### Pipe

- [Pipeline Abstraction](https://github.com/robdmc/consecution)

### FP

- [kachayev/fn.py: Functional programming](https://github.com/kachayev/fn.py)
- [suned/pfun: Pythonic Functional Programming](https://github.com/suned/pfun)

## 数据结构和算法

- [Algorithm Visualizer](https://github.com/algorithm-visualizer/algorithm-visualizer)
- [TheAlgorithms](https://github.com/TheAlgorithms/Python)
- [Minimal Examples](https://github.com/keon/algorithms)
- [Treelib: An efficient Implementation](https://github.com/caesar0301/treelib)
- [Tree Library](https://github.com/c0fec0de/anytree)
- [BTrees](https://github.com/zopefoundation/BTrees)
- [ete: visualising trees](https://github.com/etetoolkit/ete)
- [jciskey/pygraph: graph manipulation](https://github.com/jciskey/pygraph)
- [Coding Interview Challenges](https://github.com/donnemartin/interactive-coding-challenges)
- [GeneticAlgorithmsWithPython](https://github.com/handcraftsman/GeneticAlgorithmsWithPython)

## LLM

### Layout

- [unilm/layoutreader at master · microsoft/unilm](https://github.com/microsoft/unilm/tree/master/layoutreader)
- [PaddleNLP/model_zoo/ernie-layout/README_ch.md at develop · PaddlePaddle/PaddleNLP](https://github.com/PaddlePaddle/PaddleNLP/blob/develop/model_zoo/ernie-layout/README_ch.md)
- [AdvancedLiterateMachinery/Applications/DocXChain at main · AlibabaResearch/AdvancedLiterateMachinery](https://github.com/AlibabaResearch/AdvancedLiterateMachinery/tree/main/Applications/DocXChain/)

### Sheet

- [gventuri/pandas-ai: PandasAI is the Python library that integrates Gen AI into pandas, making data analysis conversational](https://github.com/gventuri/pandas-ai)

### Agent

重点关注MicroSoft。

- [LLaVA-VL/LLaVA-Interactive-Demo: LLaVA-Interactive-Demo](https://github.com/LLaVA-VL/LLaVA-Interactive-Demo/tree/main)
- [yxuansu/PandaGPT: [TLLM'23] PandaGPT: One Model To Instruction-Follow Them All](https://github.com/yxuansu/PandaGPT/tree/main)
- [microsoft/autogen: Enable Next-Gen Large Language Model Applications. Join our Discord: https://discord.gg/pAbnFJrkgZ](https://github.com/microsoft/autogen)
- [microsoft/semantic-kernel: Integrate cutting-edge LLM technology quickly and easily into your apps](https://github.com/microsoft/semantic-kernel/tree/main)
- [visual-openllm/visual-openllm: something like visual-chatgpt, 文心一言的开源版](https://github.com/visual-openllm/visual-openllm)

### VectorSearch

- [paradedb/paradedb: PostgreSQL for Search](https://github.com/paradedb/paradedb)
- [facebookresearch/faiss: A library for efficient similarity search and clustering of dense vectors.](https://github.com/facebookresearch/faiss)
- [milvus-io/milvus: A cloud-native vector database, storage for next generation AI applications](https://github.com/milvus-io/milvus)
- [alibaba/proxima](https://github.com/alibaba/proxima)
- [vearch/vearch: A distributed system for embedding-based vector retrieval](https://github.com/vearch/vearch)
- [castorini/anserini: Anserini is a Lucene toolkit for reproducible information retrieval research](https://github.com/castorini/Anserini)
- [google-research/scann at master · google-research/google-research](https://github.com/google-research/google-research/tree/master/scann)

### Just Skin

- [terry3041/pyChatGPT: An unofficial Python wrapper for OpenAI's ChatGPT API](https://github.com/terry3041/pyChatGPT)
- [acheong08/EdgeGPT: Reverse engineered API of Microsoft's Bing Chat AI](https://github.com/acheong08/EdgeGPT)
- [acheong08/ChatGPT: Reverse engineered ChatGPT API](https://github.com/acheong08/ChatGPT)
- [transitive-bullshit/chatgpt-api: Node.js client for the official ChatGPT API. 🔥](https://github.com/transitive-bullshit/chatgpt-api)
- [terry3041/pyChatGPT: An unofficial Python wrapper for OpenAI's ChatGPT API](https://github.com/terry3041/pyChatGPT)
- [Sha1rholder/use-ChatGPT-in-GFW: 在中国境内使用 OpenAI 服务的方法](https://github.com/Sha1rholder/use-ChatGPT-in-GFW#%E4%BD%BF%E7%94%A8-openai-api)

### Inference

- [Frameworks for Serving LLMs. A comprehensive guide into LLMs inference and serving](https://betterprogramming.pub/frameworks-for-serving-llms-60b7f7b23407)
- [ggerganov/llama.cpp: Port of Facebook's LLaMA model in C/C++](https://github.com/ggerganov/llama.cpp)
- [huggingface/text-generation-inference: Large Language Model Text Generation Inference](https://github.com/huggingface/text-generation-inference)
- [onnxruntime/onnxruntime/python/tools/transformers/notebooks/Inference_GPT2_with_OnnxRuntime_on_CPU](https://github.com/microsoft/onnxruntime/blob/main/onnxruntime/python/tools/transformers/notebooks/Inference_GPT2_with_OnnxRuntime_on_CPU.ipynb)
- [FasterTransformer/docs/gpt_guide.md at main · NVIDIA/FasterTransformer](https://github.com/NVIDIA/FasterTransformer/blob/main/docs/gpt_guide.md)
- [OpenNMT/CTranslate2: Fast inference engine for Transformer models](https://github.com/OpenNMT/CTranslate2)
- [mlc-ai/mlc-llm: Enable everyone to develop, optimize and deploy AI models natively on everyone's devices.](https://github.com/mlc-ai/mlc-llm)
- [vllm-project/vllm: A high-throughput and memory-efficient inference and serving engine for LLMs](https://github.com/vllm-project/vllm)
- [sonos/tract: Tiny, no-nonsense, self-contained, Tensorflow and ONNX inference](https://github.com/sonos/tract)
- [rustformers/llm: An ecosystem of Rust libraries for working with large language models](https://github.com/rustformers/llm)
- [bentoml/OpenLLM: Operating LLMs in production](https://github.com/bentoml/OpenLLM)
- [huggingface/safetensors: Simple, safe way to store and distribute tensors](https://github.com/huggingface/safetensors)
- [huggingface/candle: Minimalist ML framework for Rust](https://github.com/huggingface/candle)
- [tairov/llama2.mojo: Inference Llama 2 in one file of pure 🔥](https://github.com/tairov/llama2.mojo)

### Prompts

- [f/awesome-chatgpt-prompts: This repo includes ChatGPT prompt curation to use ChatGPT better.](https://github.com/f/awesome-chatgpt-prompts)
- [dair-ai/Prompt-Engineering-Guide: 🐙 Guides, papers, lecture, notebooks and resources for prompt engineering](https://github.com/dair-ai/Prompt-Engineering-Guide)

## AI

### Deploy

- [Deep-Learning-in-Production](https://github.com/ahkarami/Deep-Learning-in-Production)
- [tensorflow/serving](https://github.com/tensorflow/serving)
- [pytorch/serve: Model Serving on PyTorch](https://github.com/pytorch/serve)
- [TFX: End-to-End Platform for Deploying Production ML Pipelines](https://github.com/tensorflow/tfx)
- [Kubeflow](https://www.kubeflow.org/)
- [mvitez/thnets: Basic library that can run networks created with Torch](https://github.com/mvitez/thnets)
- [Serving Trained Model (aka Model API) - FloydHub Documentation](https://docs.floydhub.com/guides/serving/)
- [ahkarami/Deep-Learning-in-Production](https://github.com/ahkarami/Deep-Learning-in-Production)
- [hyperonym/basaran: Basaran is an open-source alternative to the OpenAI text completion API. It provides a compatible streaming API for your Hugging Face Transformers-based text generation models.](https://github.com/hyperonym/basaran)

### Demo/WebAPP

- [holoviz/panel: Panel: The powerful data exploration & web app framework for Python](https://github.com/holoviz/panel)
- [rawpython/remi: Python REMote Interface library. Platform independent. In about 100 Kbytes, perfect for your diet.](https://github.com/rawpython/remi)
- [PySimpleGUI](https://www.pysimplegui.org/en/latest/)
- [pywebio/PyWebIO: Write interactive web app in script way.](https://github.com/pywebio/PyWebIO)
- [streamlit/streamlit: Streamlit — A faster way to build and share data apps.](https://github.com/streamlit/streamlit)
- [gradio-app/gradio: Build and share delightful machine learning apps, all in Python. 🌟 Star to support our work!](https://github.com/gradio-app/gradio)

### Toolkit

- [microsoft/hummingbird: Hummingbird compiles trained ML models into tensor computation for faster inference.](https://github.com/microsoft/hummingbird)
- [PyTorchLightning/pytorch-lightning: The lightweight PyTorch wrapper for high-performance AI research. Scale your models, not the boilerplate.](https://github.com/PyTorchLightning/PyTorch-lightning)
- [Deepfakes](https://github.com/deepfakes/faceswap)
- [DeepFaceLab](https://github.com/iperov/DeepFaceLab)
- [Music Generation](https://github.com/salu133445/musegan)
- [AI_Composer](https://github.com/llSourcell/AI_Composer)
- [ChatterBot](https://github.com/gunthercox/ChatterBot)
- [ChatterBot](https://github.com/Decalogue/chat)
- [GPT2 for Chinese Chitchat](https://github.com/yangjianxin1/GPT2-chitchat)
- [FaceBook Detectron2: object detection and segmentation.](https://github.com/facebookresearch/detectron2)
- [Open MMLab Detection Toolbox and Benchmark](https://github.com/open-mmlab/mmdetection)
- [Open MMLab Computer Vision Foundation](https://github.com/open-mmlab/mmcv)
- [esdalmaijer/PyGaze: eye tracking experiments](https://github.com/esdalmaijer/PyGaze)
- [atulapra/Emotion-detection](https://github.com/atulapra/Emotion-detection)
- [ Multi-Person Pose Estimation&Tracking System](https://github.com/MVIG-SJTU/AlphaPose)
- [facebookresearch/dlrm: recommendation](https://github.com/facebookresearch/dlrm)
- [Jupyter Tutorial — Jupyter Tutorial 0.8.0](https://jupyter-tutorial.readthedocs.io/en/latest/)

### Dataset

- [Dataset Search](https://datasetsearch.research.google.com/)
- [Hugging Face – The AI community building the future.](https://huggingface.co/datasets)
- [Find Open Datasets and Machine Learning Projects | Kaggle](https://www.kaggle.com/datasets)
- [Machine Learning Datasets | Papers With Code](https://www.paperswithcode.com/datasets)
- [Datasets](https://www.reddit.com/r/datasets/)
- [中文NLP数据集](https://www.cluebenchmarks.com/dataSet_search.html)
- [Dataset list - A list of the biggest machine learning datasets](https://www.datasetlist.com/)
- [awesomedata/awesome-public-datasets: A topic-centric list of HQ open datasets.](https://github.com/awesomedata/awesome-public-datasets)
- [Data Is Plural](https://www.data-is-plural.com/)
- [OpenML](https://www.openml.org/search?type=data)
- [InsaneLife/ChineseNLPCorpus: 中文自然语言处理数据集，平时做做实验的材料。欢迎补充提交合并。](https://github.com/InsaneLife/ChineseNLPCorpus)

### DataAnnotation

- [opencv/cvat: Computer Vision Annotation Tool](https://github.com/opencv/cvat)
- [wkentaro/labelme: Image Polygonal Annotation with Python (polygon, rectangle, circle, line, point and image-level flag annotation).](https://github.com/wkentaro/labelme)
- [generating training data with weak supervision](https://github.com/snorkel-team/snorkel)
- [make basic image processing operations](https://github.com/jrosebr1/imutils)
- [nlplab/brat: textual annotation](https://github.com/nlplab/brat)
- [doccano/doccano: Open source annotation tool for machine learning practitioners.](https://github.com/doccano/doccano)
- [Overview - CoreNLP](https://stanfordnlp.github.io/CoreNLP/)

### DeepLearning

- [fast.ai · Making neural nets uncool again](https://www.fast.ai/)
- [TensorFlow](https://www.tensorflow.org/tutorials)
- [Tensorflow Models](https://github.com/tensorflow/models)
- [DeepLearning Papers](https://github.com/floodsung/Deep-Learning-Papers-Reading-Roadmap)
- [Awesome-Deep-learning-papers](https://github.com/terryum/awesome-deep-learning-papers)
- [D2L ZH](https://github.com/d2l-ai/d2l-zh)
- [D2L EN](https://github.com/d2l-ai/d2l-en)
- [pytorch/tutorials: PyTorch tutorials.](https://github.com/pytorch/tutorials)
- [Pytorch Examples](https://github.com/pytorch/examples)
- [Tutorials  |  TensorFlow Core](https://www.tensorflow.org/tutorials)
- [简单粗暴 TensorFlow 2 | A Concise Handbook of TensorFlow 2 — 简单粗暴 TensorFlow 2 0.4 beta 文档](https://tf.wiki/zh_hans/)
- [TensorFlow-Examples](https://github.com/aymericdamien/TensorFlow-Examples)
- [microsoft: NLP Best Practices & Examples](https://github.com/microsoft/nlp-recipes)
- [DeepLearning Projects](https://github.com/aymericdamien/TopDeepLearning)
- [Ttensorflow_practice](https://github.com/princewen/tensorflow_practice)


### MachineLearning

- [microsoft/nni: AutoML toolkit](https://github.com/microsoft/nni)
- [Imbalanced Learning](https://github.com/scikit-learn-contrib/imbalanced-learn)
- [Automated Machine Learning tool using genetic programming](https://github.com/EpistasisLab/tpot)
- [Machine learning evaluation metrics](https://github.com/benhamner/Metrics)
- [Awesome Machine Learning](https://github.com/josephmisiti/awesome-machine-learning)

### HyperOptimization

- [autonomio/talos: Hyperparameter Optimization for TensorFlow, Keras and PyTorch](https://github.com/autonomio/talos)
- [scikit-optimize: sequential model-based optimization in Python — scikit-optimize 0.8.1 documentation](https://scikit-optimize.github.io/stable/)
- [fmfn/BayesianOptimization: A Python implementation of global optimization with gaussian processes.](https://github.com/fmfn/BayesianOptimization)
- Ray Tune：[Tune: Scalable Hyperparameter Tuning — Ray v2.0.0.dev0](https://docs.ray.io/en/master/tune/index.html)
- [hyperopt/hyperopt: Distributed Asynchronous Hyperparameter Optimization in Python](https://github.com/hyperopt/hyperopt)
- [Introduction to the Keras Tuner  |  TensorFlow Core](https://www.tensorflow.org/tutorials/keras/keras_tuner)
- Google Vizier：[Vizier 概览  |  AI Platform Vizier  |  Google Cloud](https://cloud.google.com/ai-platform/optimizer/docs/overview)
- Amazon Sagemaker：[Amazon SageMaker 机器学习模型构建训练部署 - AWS 云服务](https://aws.amazon.com/cn/sagemaker/)
- Microsoft NNI：[microsoft/nni: An open source AutoML toolkit for automate machine learning lifecycle, including feature engineering, neural architecture search, model compression and hyper-parameter tuning.](https://github.com/microsoft/nni)
- Microsoft Advisor：[Optimization advisor overview - Finance & Operations | Dynamics 365 | Microsoft Docs](https://docs.microsoft.com/en-us/dynamics365/fin-ops-core/dev-itpro/sysadmin/optimization-advisor-overview)
- [maxpumperla/hyperas: Keras + Hyperopt: A very simple wrapper for convenient hyperparameter optimization](https://github.com/maxpumperla/hyperas) （已存档）
- [Avsecz/kopt: Hyper-parameter optimization for Keras](https://github.com/Avsecz/kopt)（一阵没更新了）
- [rsteca/sklearn-deap: Use evolutionary algorithms instead of gridsearch in scikit-learn](https://github.com/rsteca/sklearn-deap)（一阵没更新了）
- [HIPS/Spearmint: Spearmint Bayesian optimization codebase](https://github.com/HIPS/Spearmint)（一阵没更新了）
- [[1603.06560] Hyperband: A Novel Bandit-Based Approach to Hyperparameter Optimization](https://arxiv.org/abs/1603.06560)

## 工程

### Design

- [toutiaoio/awesome-architecture](https://github.com/toutiaoio/awesome-architecture)
- [System Design](https://github.com/donnemartin/system-design-primer)
- [Design Patterns](https://github.com/faif/python-patterns)

### Test

主要分单元测试和集成测试。

- [Hypothesis: Property-Based Testing](https://github.com/HypothesisWorks/hypothesis)
- [Plugin for providing variables to pytest](https://github.com/pytest-dev/pytest-variables)
- [Example grpc_testing based unittest](https://github.com/alexykot/grpcio-test-example)
- [pytest](https://docs.pytest.org/en/latest/)
- 和 github 做持续集成的服务：[Continuous Integration and Delivery - CircleCI](https://circleci.com/) 

### Style & Analysis

- [Style Checker](https://github.com/PyCQA/pycodestyle)
- [Code Climate · GitHub Marketplace](https://github.com/marketplace/code-climate)
- 代码检查：[flake8 3.4.1 : Python Package Index](https://pypi.python.org/pypi/flake8)
- 代码复杂度检查：[rubik/radon: Various code metrics for Python code](https://github.com/rubik/radon)
- [github/semantic: Parsing, analyzing, and comparing source code across many languages](https://github.com/github/semantic)
- 统计代码行数：
    - [XAMPPRocky/tokei: Count your code, quickly.](https://github.com/XAMPPRocky/tokei)
    - [cgag/loc: Count lines of code quickly.](https://github.com/cgag/loc)
    - [boyter/scc: Sloc, Cloc and Code: scc is a very fast accurate code counter with complexity calculations and COCOMO estimates written in pure Go](https://github.com/boyter/scc)
    - [CLOC -- Count Lines of Code](http://cloc.sourceforge.net/)
- 代码对比：[Scooter Software: Home of Beyond Compare](https://www.scootersoftware.com/)
- 建议阅读 [代码整洁之道 (豆瓣)](https://book.douban.com/subject/4199741/)，初期不需要太追求优化。

### Profile

- [emeryberger/scalene: Scalene: a high-performance, high-precision CPU and memory profiler for Python](https://github.com/emeryberger/scalene)
- [pympler/pympler: memory behavior](https://github.com/pympler/pympler)
- [Line Profile](https://github.com/rkern/line_profiler)
- [Distributed Asynchronous Hyperparameter Optimization](https://github.com/hyperopt/hyperopt)
- [Memory Profiler](https://github.com/pythonprofilers/memory_profiler)
- [PySnooper: Never use print for debugging again](https://github.com/cool-RR/PySnooper)


### Performence

- 尽量使用 Numpy 或 Pandas，因为它们底层是 C
- Numpy 计算深度学习：[tfdeploy](https://github.com/riga/tfdeploy)
- 数据库利用索引和 Cache
  - 索引是将常见的查询在数据库中建好索引表
  - Cache 是数据库常用的操作
- [Boost.Python Tutorial - 1.65.1](http://www.boost.org/doc/libs/1_65_1/libs/python/doc/html/tutorial/index.html)
- [Tutorials — Cython](http://docs.cython.org/en/latest/src/tutorial/)
- [ray-project/ray: A system for parallel and distributed Python that unifies the ML ecosystem.](https://github.com/ray-project/ray)
- [scikit-build/ninja-python-distributions: This project provides a \`setup.py\` script that build Ninja Python wheels.](https://github.com/scikit-build/ninja-python-distributions)
- [arrow/python at master · apache/arrow](https://github.com/apache/arrow/tree/master/python)


### Command Line

- [tiangolo/typer: Typer, build great CLIs. Easy to code. Based on Python type hints.](https://github.com/tiangolo/typer)

### Better Print

- [onelivesleft/PrettyErrors: Prettify Python exception output to make it legible.](https://github.com/onelivesleft/PrettyErrors/)
- [willmcgugan/rich: Rich is a Python library for rich text and beautiful formatting in the terminal.](https://github.com/willmcgugan/rich)

### Debug

- [gotcha/ipdb: Integration of IPython pdb](https://github.com/gotcha/ipdb)
- [pdbpp/pdbpp: pdb++, a drop-in replacement for pdb (the Python debugger)](https://github.com/pdbpp/pdbpp)

### Safety

- [Most advanced XSS scanner](https://github.com/s0md3v/XSStrike)
- [SQL injection and database takeover tool](https://github.com/sqlmapproject/sqlmap)

### Distribute

- [Framework Ray](https://github.com/ray-project/ray)

### FrameWork

- [Async Sanic](https://github.com/huge-success/sanic)
- [Websockets](https://github.com/aaugustin/websockets)
- [tornadoweb/tornado: asynchronous](https://github.com/tornadoweb/tornado)

### Boilerplate

- [Django, React, Bootstrap Webpack Project Boilerplate](https://github.com/vintasoftware/django-react-boilerplate)
- [cookiecutter: project templates](https://github.com/cookiecutter/cookiecutter)

### JWT

- [Django-Rest-Framework-Simplejwt.](https://github.com/SimpleJWT/django-rest-framework-simplejwt)
- [JSON Web Token - 在 Web 应用间安全地传递信息 - 回田园](http://blog.leapoahead.com/2015/09/06/understanding-jwt/)
- [Where to Store JWTs - Cookies vs HTML5 Web Storage | Stormpath](https://stormpath.com/blog/where-to-store-your-jwts-cookies-vs-html5-web-storage)

### Coroutine

- [Curio: Coroutine-Based Library for Concurrent Systems Programming](https://github.com/dabeaz/curio)
- [python-trio/trio: Trio – Pythonic async I/O](https://github.com/python-trio/trio)


### Concurrency

- [Trio: Async Concurrency and I/O](https://github.com/python-trio/trio)

### Memory

- [DAFSA-based dictionary-like read-only objects](https://github.com/pytries/DAWG)

### API

- [FastAPI](https://fastapi.tiangolo.com/)
- [Web API Toolkit](https://github.com/encode/apistar)
- [pyeve/eve: REST API framework designed for human beings](https://github.com/pyeve/eve)
- [timothycrosley/hug](https://github.com/timothycrosley/hug)

### RPC

- [grpc / grpc.io](https://grpc.io/)
- [gRPC-Web implementation](https://github.com/public/sonora)
- [grpc / grpc.io](https://grpc.io/)
- [比起 JSON 更方便、更快速、更簡短的 Protobuf 格式](https://yami.io/protobuf/)
- [apache/thrift: Mirror of Apache Thrift](https://github.com/apache/thrift)
- [JSON-RPC 2.0 Specification](http://www.jsonrpc.org/specification)
- [zerorpc](http://www.zerorpc.io/)

### Deploy

- GitHub 至少两个分支：dev 和 master，均为通过测试的正式版
  - master 为发布版
  - dev 为开发版
- [kubernetes-sigs/kustomize: Customization of kubernetes YAML configurations](https://github.com/kubernetes-sigs/kustomize)
- [composer/docker: Composer in Docker](https://github.com/composer/docker)
- [Docker](https://docs.docker.com/)
- [Kubernetes](https://www.kubernetes.org.cn/docs)
- 自动触发：[Watchman A file watching service | Watchman](https://facebook.github.io/watchman/)


### Database

- [MySQL Client](https://github.com/PyMySQL/PyMySQL)
- [MySQL database connector](https://github.com/PyMySQL/mysqlclient-python)
- [PostgreSQL Database Client](https://github.com/MagicStack/asyncpg)


### Project

- [GitHub-Chinese-Top-Charts](https://github.com/kon9chunkit/GitHub-Chinese-Top-Charts)
- [ A list of practical projects.](https://github.com/karan/Projects)


### Architecture

- 这里是比较经典的一些各公司架构：[All Time Favorites -](http://highscalability.com/all-time-favorites/)
- Quora 做部署的架构，比较适合小公司：[Continuous Deployment at Quora - Engineering at Quora - Quora](https://engineering.quora.com/Continuous-Deployment-at-Quora)
- 参考网站：[Buy/Sell Digital Currency - Coinbase](https://www.coinbase.com/?locale=en)
- [donnemartin/system-design-primer: Learn how to design large-scale systems. Prep for the system design interview. Includes Anki flashcards.](https://github.com/donnemartin/system-design-primer)

### Network

- [High Performance Browser Networking (豆瓣)](https://book.douban.com/subject/21866396/?dt_platform=com.douban.activity.wechat_friends&dt_dapp=1)


## Tool

### Spider

- [pyspider](https://github.com/binux/pyspider)
- [scrapy examples](https://github.com/geekan/scrapy-examples)
- [crawlers](https://github.com/evilcos/crawlers)
- [grab: Web Scraping Framework](https://github.com/lorien/grab)
- [Selenium](https://selenium-python.readthedocs.io/index.html)
  - Mac 安装时，需要重新安装 pycurl，首先 `pip uninstall pycurl`
  - 然后 `export PYCURL_SSL_LIBRARY=openssl`
  - 再 `export LDFLAGS=-L/usr/local/opt/openssl/lib;export CPPFLAGS=-I/usr/local/opt/openssl/include;pip install pycurl==7.43.0.1 --compile --no-cache-dir`
- [Scrapy](https://docs.scrapy.org/en/latest/index.html)
- [scrapinghub/portia: Visual scraping for Scrapy](https://github.com/scrapinghub/portia)，可视化 Scrapy


### Audio

- [Manipulate Audio Interface](https://github.com/jiaaro/pydub)
- [Audio Analysis Library](https://github.com/tyiannak/pyAudioAnalysis)

### Chat

- [API for Wechat](https://github.com/littlecodersh/ItChat)
- [API for Wechat](https://github.com/youfou/wxpy)
- [API for Wechat](https://github.com/littlecodersh/itchatmp)

### Text

- [Chinese Convert 繁简转换](https://github.com/yichen0831/opencc-python)
- [Hanzi Converter 繁简转换](https://github.com/berniey/hanziconv)
- [Wikiextractor](https://github.com/attardi/wikiextractor)
- [汉字转拼音 (pypinyin)](https://github.com/mozillazg/python-pinyin)

### OCR

- [breezedeus/cnocr: 基于 MXNet](https://github.com/breezedeus/cnocr)
- [qjadud1994/Text_Detector](https://github.com/qjadud1994/Text_Detector)

### Task

- [Schedule](https://github.com/dbader/schedule)
- [robdmc/crontabs: A cron-like utility for Python](https://github.com/robdmc/crontabs)

### Visualization

- [altair-viz/altair: Declarative statistical visualization](https://github.com/altair-viz/altair)
- [animated graph visualizations](https://github.com/mapio/GraphvizAnim)
- [plotly/plotly.py: The interactive graphing](https://github.com/plotly/plotly.py)
- [plotly/dash: Interactive, Reactive Web Apps for Python. Dash Is Productive™](https://github.com/plotly/dash)
- [iTerm2 backend for Matplotlib.](https://github.com/daleroberts/itermplot)
- [mingrammer/diagrams: Diagram as Code for prototyping cloud system architectures](https://github.com/mingrammer/diagrams)
- [facebookresearch/hiplot: HiPlot makes understanding high dimensional data easy](https://github.com/facebookresearch/hiplot)
- [lutzroeder/netron: Visualizer for neural network, deep learning, and machine learning models](https://github.com/lutzroeder/netron)

### GUI

- [hoffstadt/DearPyGui: Dear PyGui: A fast and powerful Graphical User Interface Toolkit for Python with minimal dependencies](https://github.com/hoffstadt/DearPyGui)

### Logic

- [Electronic Design Automation](https://github.com/cjdrake/pyeda)

## 设计五原则

- SOLID（单一功能、开闭原则、里氏替换、接口隔离以及依赖反转）


首字母|指代| 概念
-----|------|----
S|	单一功能原则|	对象应该仅具有一种单一功能
O|	开闭原则|	软件体应该是对于扩展开放的，但是对于修改封闭的
L|	里氏替换原则	|程序中的对象应该是可以在不改变程序正确性的前提下被它的子类对象所替换的
I|	接口隔离原则|	多个特定客户端接口要好于一个宽泛用途的接口
D|	依赖反转原则|	高层次的模块不应该依赖于低层次的模块，两者都应该依赖于抽象接口；抽象接口不应该依赖于具体实现，而具体实现则应该依赖于抽象接口。

来源：[如何在 Python 里应用 SOLID 原则 | 阿驹](http://zqpythonic.qiniucdn.com/data/20170115163942/index.html) 


- 当考虑需要什么类以及类要有什么方法时，应该尝试下面的方法。 

  - （1）写下问题的描述（程序要做什么），把所有名词、动词和形容词加下划线。 
  - （2）对于所有名词，用作可能的类。 
  - （3）对于所有动词，用作可能的方法。 
  - （4）对于所有形容词，用作可能的特性。 
  - （5）把所有方法和特性分配到类。 

  现在已经有了面向对象模型的草图了。还可以考虑类和对象之间的关系（比如继承或协作）以及它们的作用，可以用以下步骤精炼模型。 
  
  - （1）写下（或者想象）一系列的使用实例，也就是程序应用时的场景，试着包括所有的功能。  
  - （2）一步步考虑每个使用实例，保证模型包括所有需要的东西。如果有些遗漏的话就添加进来。如果某处不太正确则改正。继续，直到满意为止。

来源：[如何设计好一个 python 的类？ - 知乎](https://www.zhihu.com/question/65622767/answer/233023480) 

- [践行这五条原则，构建优秀的 Python 包 | 编程派 | Coding Python](http://codingpy.com/article/5-simple-rules-for-building-great-python-packages/)


## 刷题

- 在线编程练习
  - [LeetCode](https://leetcode.com/)
  - [hihoCoder](http://hihocoder.com/) 
  - [Train with Programming Challenges/Kata | Codewars](https://www.codewars.com/)
  - [LintCode](http://lintcode.com/)：在线刷题网站，汇集了各大公司的算法面试题。有阶梯式训练题库，帮你选好应该刷的题目，特别适合小白和懒人。评测数独很快，最大的中文在线题库。
  - geeksforgeeks.org —— 据说是印度人搞的刷题网站，上面有很多公司的面试题，也有论坛。不过上面都是英文，估计很多印度人在上面放面经，科科。
  - Codecademy.com —— 包含在线编程练习和课程视频。比较适合小白入门编程语言。网页界面也比较友好。但是，没有算法方面的在线测试。
  - Codehs.com —— 包含数据结构、游戏设计、动画类编程题。
  - programmingpraxis.com —— 此网站编程练习不保存分数、不排名、不竞赛
  - projecteuler.net —— 有 590 道题，会显示难度水平和提交完成率
  - hackerearth.com —— 注册帐号后可参与编程练习（有内推到知名企业的机会）
- 编程竞赛
  - hackerrank.com ——包含编程题和项目开发挑战
  - Codeforces.comtopcoder.com —— 包含大量题库，对解答者进行排名。
  - codechef.com —— 包含编程竞赛、在线程序设计挑战，题目难度从入门、简单、中等到挑战都有，会举办竞赛，获胜者会有奖金。
  - topcoder.com —— 经常在线举行编程竞赛，可以去练练手，找找成就感。不过，有的竞赛题目并不简单，也比较刁钻。
- 各种语言算法实现
  - [String matching - Rosetta Code](https://www.rosettacode.org/wiki/String_matching)

部分参考至：[有程序员专门刷题的网站吗？ - 知乎](https://www.zhihu.com/question/36488823/answer/173370435)

## 面试

- [CyC2018/CS-Notes: 技术面试必备基础知识、Leetcode、计算机操作系统、计算机网络、系统设计、Java、Python、C++](https://github.com/CyC2018/CS-Notes)
- [Snailclimb/JavaGuide: 「Java学习+面试指南」一份涵盖大部分 Java 程序员所需要掌握的核心知识。准备 Java 面试，首选 JavaGuide！](https://github.com/Snailclimb/JavaGuide)

## 论文、会议及期刊

- 汇总：
    - [Conference | Synced](https://syncedreview.com/category/conference/)
    - [ML, DM, and AI Conference Map](http://www.kamishima.net/archive/MLDMAImap.pdf)
    
- 按时间
    - Feb: [AAAI | Association for the Advancement of Artificial Intelligence](https://www.aaai.org/)
    - Apr: [EACL | The European Chapter of the ACL](http://eacl.org/)
    - Jun: [SIGIR | Special Interest Group on Information Retrieval](http://sigir.org/)
    - Jul: [NAACL | North American Chapter of the ACL (Association for Computational Linguistics)](https://naacl.org/)

    - Jul: [ICML | International Conference on Machine Learning](https://icml.cc/)
    - Dec: [NIPS | Conference on Neural Information Processing Systems](https://nips.cc/)


- 自然语言处理（NLP）
  - 会议：[ACL Wiki](https://aclweb.org/aclwiki/Main_Page)
  - 会议：[emnlp2017](http://emnlp2017.net/)
  - 会议：[NAACL: North American Chapter of the ACL](http://naacl.org/)
  - 会议：[COLING 2018](http://coling2018.org/)
  - 会议：[CoNLL 2017 | CoNLL](http://www.conll.org/)
  - 会议（国内）：[CCL 2018](http://www.cips-cl.org/static/CCL2018/index.html)
  - 会议（国内）：[NLPCC 2018 Home](http://tcci.ccf.org.cn/conference/2018/)
  - 会议（国内）：[SMP2018 - 第七届全国社会媒体处理大会](http://smp2018.cips-smp.org/)
  - 会议（国内）：[CFP](https://easychair.org/cfp/ccir2018)
  - 会议（国内）：[机器翻译论坛网 - 首页](http://mtforum.niutrans.com/index.html)
  - 会议（国内）：[中国中文信息学会（CIPS）青年工作委员会 2018 年学术活动安排](http://www.cipsc.org.cn/qngw/?p=1248)
  - 会议（国内）：[中国中文信息学会暑期学校](http://www.cipsc.org.cn/pic_content.php?&xuhao=80)
  - 期刊：[Computational Linguistics | MIT Press Journals](https://www.mitpressjournals.org/loi/coli)
  - 期刊：[中国中文信息学会](http://www.cipsc.org.cn/)
  - 论文：[Computation and Language](https://arxiv.org/list/cs.CL/recent)


- 机器学习（ML）
  - 会议：[NIPS](https://nips.cc/)
  - 会议：[ICML](https://icml.cc/)
  - 会议：[AISTATS](http://www.aistats.org/)
  - 会议：[Association for Uncertainty in Artificial Intelligence](http://www.auai.org/)
  - 论文：[Machine Learning](https://arxiv.org/list/stat.ML/recent)
  - 期刊：[Journal of Machine Learning Research Homepage](http://www.jmlr.org/)
  - 期刊：[Machine Learning](http://www.springer.com/computer/ai/journal/10994)


- 人工智能（AI）
  - 会议：[Association for the Advancement of Artificial Intelligence](https://www.aaai.org/)
  - 会议：[Welcome to IJCAI 2017!](https://ijcai-17.org/)
  - 期刊：[Artificial Intelligence - Journal - Elsevier](https://www.journals.elsevier.com/artificial-intelligence/)
  - 期刊：[JAIR](http://www.jair.org/)


- 数据挖掘（DM)
  - 会议：[KDD](http://www.kdd.org/kdd2017/)
  - 会议：[CIKM 2017](http://www.cikm2017.org/)
  - 会议：[SIGIR | Special Interest Group on Information Retrieval](http://sigir.org/)
  - 会议：[WSDM](http://www.wsdm-conference.org/2018/)


- 推荐系统（RS）
  - [RecSys – ACM Recommender Systems](https://recsys.acm.org/)

## 小工具

- Latex 图片转公式：[Mathpix Snip](https://mathpix.com/)

- 正版软件代理：[数码荔枝 - 专注于分享最新鲜优秀的正版软件](https://www.lizhi.io/)
- [Spectacle](https://www.spectacleapp.com/): Mac 窗口拖拉


## 致谢

- 所有作者，是你们的智慧让我们感受到了知识的力量；所有传播者，是你们的乐于分享让我们在探索路上不再孤单彷徨。


- [童老师](https://github.com/demon386)，资深算法工程师，牛人。其实相当大一部分内容来自童老师，从他身上学到太多东西，以至于现在还才消化了一丢丢。[明生的博客 | Scott's Blog](http://scottming.com/)，自称木讷的程序猿，他的吐槽和对代码优雅的执着追求让我被迫改变了很多。
