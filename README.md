# AI 基础工具箱



>**说明**：  
>
>1. 来源于新手日常工作积累、踩坑，目的是方便更多新人快速上手，少像我一样走弯路。  
>2. 默认顺序是一台新电脑开始配置，也可以直接看需要的部分。  
>3. 不会列特别详细的内容，但是会给出链接，部分会有特别提醒注意事项。  
>4. 涉及到的库很多是基于 Python 的。
>5. 不定期持续更新，有任何疑问欢迎 Issue。


## 目录


- [更改源](#更改源)
- [Terminal&Bash](#Terminal&Bash)
- [系统配置文件](#系统配置文件)
- [环境变量](#环境变量)
- [TerminalMultiplexers:Screen&Tmux](#TerminalMultiplexers:Screen&Tmux)
- [SSH&MOSH](#SSH&MOSH)
- [GIT](#GIT)
- [命令行工具](#命令行工具)
- [查找搜索](#查找搜索)
- [复制粘贴](#复制粘贴)
- [版本控制及包管理](#版本控制及包管理)
- [数据科学常用包](#数据科学常用包)
- [数据存储及快速查询](#数据存储及快速查询)
- [CUDA&CUDNN](#CUDA&CUDNN)
- [IDE](#IDE)
- [代码检查](#代码检查)
- [代码测试](#代码测试)
- [代码部署](#代码部署)
- [性能](#性能)
- [工程](#工程)
- [设计五原则](#设计五原则)
- [刷题](#刷题)
- [论文、会议及期刊](#论文、会议及期刊)
- [其他](#其他)
- [致谢](#致谢)




## 更改源

更改 Linux 系统软件源，让下载个更新更快。常用源有以下几个：

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


参考至（好网站）：  

- [修改软件源为国内加速镜像 - 技术分享 - 社区 - 好雨，让云落地](https://t.goodrain.com/t/topic/236)
- [LUG's repo file generator](https://mirrors.ustc.edu.cn/repogen/)


## Terminal&Bash

- Terminal: [iTerm2 - macOS Terminal Replacement](https://www.iterm2.com/)
- Bash: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)，需要先安装 Zsh: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)


## 系统配置文件

### 所有用户

- `/etc/profile`: 此文件为系统的每个用户设置环境信息。当用户登录时，该文件被执行一次，并从 `/etc/profile.d` 目录的配置文件中搜集 shell 的设置。一般用于设置所有用户使用的全局变量。
- `/etc/bashrc`: 当 bash shell 被打开时，该文件被读取。也就是说，每次新打开一个终端 shell，该文件就会被读取。
- `/etc/paths` 
- [echo 变量内容删除和替换](http://blog.51cto.com/sndapk/1093073)

### 单个用户

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

## 环境变量

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



## TerminalMultiplexers:Screen&Tmux

远程会话窗口管理器，就是让你的远程连接（SSH）不中断，退出后下次登录时程序依然在运行。具体可参考：


- [使用 screen 管理你的远程会话](https://www.ibm.com/developerworks/cn/linux/l-cn-screen/index.html)。简单使用：
  - 创建：`screen -S name（随便输一个名字）`
  - 查看：`screen -ls`
  - 进入：`screen -r name（随便输的那个名字）`
  - 退回到命令行，让程序在 screen 后台自动运行：`Control + a + d`
- 更强大的 Tmux：
  - [tmuxp — tmuxp 1.3.5 documentation](https://tmuxp.git-pull.com/en/latest/)
  - [优雅地使用命令行：Tmux 终端复用 | Harttle Land](http://harttle.land/2015/11/06/tmux-startup.html)
  - [Linux 下终端利器 tmux - OPS Notes By 枯木](http://kumu-linux.github.io/blog/2013/08/06/tmux/)
- 二者使用对比：[Terminal Multiplexers: Screen, Tmux - Hyperpolyglot](http://hyperpolyglot.org/multiplexers)


## SSH&MOSH

- [SSH 原理与运用（一）：远程登录 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2011/12/ssh_remote_login.html)
- 优化 SSH（断网不影响连接）：
  - [Mosh: the mobile shell](https://mosh.org/)
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


## 命令行工具

- [20 Command Line Tools to Monitor Linux Performance](https://www.tecmint.com/command-line-tools-to-monitor-linux-performance/)
- [13 Linux Performance Monitoring Tools - Part 2](https://www.tecmint.com/linux-performance-monitoring-tools/)
- 命令行使用代理：[使用 shadowsocks 及 ProxyChains-NG 实现终端 (iterm) 下代理](https://segmentfault.com/a/1190000004607285)
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
- [应该知道的 Linux 技巧](https://coolshell.cn/articles/8883.html)



## 查找搜索

- 快速查找：[junegunn/fzf: A command-line fuzzy finder](https://github.com/junegunn/fzf)，这里有一些很好的例子：[Examples · junegunn/fzf Wiki](https://github.com/junegunn/fzf/wiki/examples)
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
- **推荐**的 Python 包**开发**管理工具：[Pipenv: Python Dev Workflow for Humans](https://docs.pipenv.org/)
- **推荐**的创建虚拟环境方法：`python3 -m venv [name]`，详见：[venv](https://docs.python.org/3.6/library/venv.html)

**注意**：安装 `Conda` 后，`pyenv` 的虚拟环境会由 `Conda` 接管。详见：[pyenv/pyenv-virtualenv: a pyenv plugin to manage virtualenv (a.k.a. python-virtualenv)](https://github.com/pyenv/pyenv-virtualenv)。

- Mac 上的 Python

  经过不少的实践，在 Mac 上可以使用 homebrew 来管理 python 版本，大多数时候我们只需要一个稳定的版本就够了，具体项目中可以使用 pipenv。要安装不同的版本，方法如下：

  - `brew unlink python` 解除现有版本的绑定
  - `brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/hash/Formula/python.rb`，其中的 hash 可在 [History for Formula/python.rb - Homebrew/homebrew-core](https://github.com/Homebrew/homebrew-core/commits/master?path%5B%5D=Formula&path%5B%5D=python.rb) 中找到，如果要的版本太旧，往前翻时并不会显示，但会有提醒告知如何查看。
  - 在你的 bash 或 zsh 配置文件中添加：`export PATH="/usr/local/opt/python/libexec/bin:$PATH"`
  - `brew switch python xxx` 切换各种版本，所有的东西都会自动弄好

  注意：只要这么操作就可以无痛使用（Mac），但如果你想更深入了解一下，下面的内容可以参考：

  - `which python` --> `/usr/local/opt/python/libexec/bin/python`，切换到这个目录会发现这里的所有东西都指向你当前的 python 版本
  - 上面目录指向的地方其实在 `/usr/local/opt/python/Frameworks/Python.framework/Versions`
  - 真正的地方应该在 `/usr/local/Cellar/python` 目录，该目录下有所有的 python 版本。


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



## CUDA & CUDNN

强烈建议看官方文档，不要看各类教程。

- CUDA 
  - 安装包下载：[CUDA Toolkit Archive | NVIDIA Developer](https://developer.nvidia.com/cuda-toolkit-archive)
  - 安装：[Installation Guide Linux :: CUDA Toolkit Documentation](http://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#pre-installation-actions)
- cuDNN 
  - 安装包下载：[cuDNN Download | NVIDIA Developer](https://developer.nvidia.com/rdp/cudnn-download)
  - 安装：[cuDNN Installation Guide :: Deep Learning SDK Documentation](http://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html#installdriver)
- `sudo apt-get install cuda-x-0`: 安装非最新版本
- 卸载
  - `sudo apt-get --purge remove cuda`
  - `sudo apt autoremove`
  - `sudo apt-get clean`
- 找不到 5 时可以软链：`ln -s libcudnn.so.6.* libcudnn.so.5`


## IDE

- SublimeText:
  - 设置 TAB 键为空格：`{
    "tab_size": 4,
    "translate_tabs_to_spaces": true,
}`
  - pep8 插件，使用：`Ctrl + Shift + 8`
- Vim
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


## 代码检查

- 代码检查：[flake8 3.4.1 : Python Package Index](https://pypi.python.org/pypi/flake8)
- 代码复杂度检查：[rubik/radon: Various code metrics for Python code](https://github.com/rubik/radon)
- 统计代码行数：[CLOC -- Count Lines of Code](http://cloc.sourceforge.net/)
- 代码对比：[Scooter Software: Home of Beyond Compare](https://www.scootersoftware.com/)
- 建议阅读[代码整洁之道 (豆瓣)](https://book.douban.com/subject/4199741/)，初期不需要太追求优化。


## 代码测试

主要分单元测试和集成测试。

- 和 github 做持续集成的服务：[Continuous Integration and Delivery - CircleCI](https://circleci.com/)  
- Python 写测试的框架，可以参考：[pytest: helps you write better programs — pytest documentation](https://docs.pytest.org/en/latest/)  


## 代码部署  

- GitHub 至少两个分支：dev 和 master，均为通过测试的正式版
  - master 为发布版
  - dev 为开发版
- 自动触发：[Watchman A file watching service | Watchman](https://facebook.github.io/watchman/)



## 性能  

- 尽量使用 Numpy 或 Pandas，因为它们底层是 C
- Numpy 计算深度学习：[tfdeploy](https://github.com/riga/tfdeploy)
- 数据库利用索引和 Cache
  - 索引是将常见的查询在数据库中建好索引表
  - Cache 是数据库常用的操作
- [Boost.Python Tutorial - 1.65.1](http://www.boost.org/doc/libs/1_65_1/libs/python/doc/html/tutorial/index.html)
- [Tutorials — Cython](http://docs.cython.org/en/latest/src/tutorial/)



## 工程


- 可视化
  - [plotly/dash: Interactive, Reactive Web Apps for Python. Dash Is Productive™](https://github.com/plotly/dash)
- 部署
  - [composer/docker: Composer in Docker](https://github.com/composer/docker)
  - [Docker](https://docs.docker.com/)
  - [Kubernetes](https://www.kubernetes.org.cn/docs)
- python 协程库：
  - [dabeaz/curio: Curio - The Small Coroutine Library You Were Warned About](https://github.com/dabeaz/curio)
  - [python-trio/trio: Trio – Pythonic async I/O for humans and snake people 🐍](https://github.com/python-trio/trio)
- web 框架
  - [Asynchronous and non-Blocking I/O — Tornado 4.5.2 documentation](http://www.tornadoweb.org/en/stable/guide/async.html) 
  - [channelcat/sanic: Async Python 3.5+ web server that's written to go fast](https://github.com/channelcat/sanic)
- 数据库
  - [MagicStack/asyncpg: A fast PostgreSQL Database Client Library for Python/asyncio.](https://github.com/MagicStack/asyncpg)
- JWT
  - [JSON Web Token - 在 Web 应用间安全地传递信息 - 回田园](http://blog.leapoahead.com/2015/09/06/understanding-jwt/)
  - [Where to Store JWTs - Cookies vs HTML5 Web Storage | Stormpath](https://stormpath.com/blog/where-to-store-your-jwts-cookies-vs-html5-web-storage)
- RPC
  - [grpc / grpc.io](https://grpc.io/)
      - [比起 JSON 更方便、更快速、更簡短的 Protobuf 格式](https://yami.io/protobuf/)
  - [apache/thrift: Mirror of Apache Thrift](https://github.com/apache/thrift)
  - [JSON-RPC 2.0 Specification](http://www.jsonrpc.org/specification)
  - [zerorpc](http://www.zerorpc.io/)
- RestfulAPI  
  - [timothycrosley/hug: Embrace the APIs of the future](https://github.com/timothycrosley/hug)
  - [sseemayer/hug\_middleware_cors](https://github.com/sseemayer/hug_middleware_cors)
- 工程架构参考
  - 这里是比较经典的一些各公司架构：[All Time Favorites -](http://highscalability.com/all-time-favorites/)
  - Quora 做部署的架构，比较适合小公司：[Continuous Deployment at Quora - Engineering at Quora - Quora](https://engineering.quora.com/Continuous-Deployment-at-Quora)
  - 参考网站：[Buy/Sell Digital Currency - Coinbase](https://www.coinbase.com/?locale=en)
  - [donnemartin/system-design-primer: Learn how to design large-scale systems. Prep for the system design interview. Includes Anki flashcards.](https://github.com/donnemartin/system-design-primer)
- [High Performance Browser Networking (豆瓣)](https://book.douban.com/subject/21866396/?dt_platform=com.douban.activity.wechat_friends&dt_dapp=1)


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



## 论文、会议及期刊

- 汇总
  - [ML, DM, and AI Conference Map](http://www.kamishima.net/archive/MLDMAImap.pdf)
  - 会议汇总：[ACL Anthology](https://aclanthology.coli.uni-saarland.de/)


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



## 其他

- 正版软件代理：[数码荔枝 - 专注于分享最新鲜优秀的正版软件](https://www.lizhi.io/)
- [Spectacle](https://www.spectacleapp.com/): Mac 窗口拖拉




## 致谢


- 所有作者，是你们的智慧让我们感受到了知识的力量。
- 所有传播者，是你们的乐于分享让我们在探索路上不再孤单彷徨。
- [童老师](https://github.com/demon386)，资深算法工程师，牛人。其实相当大一部分内容来自童老师，从他身上学到太多东西，以至于现在还才消化了一丢丢。
- [明生的博客 | Scott's Blog](http://scottming.com/)，自称木讷的程序猿，他的吐槽和对代码优雅的执着追求让我被迫改变了很多。
