# Termux

### Android 上的终端命令行

### 帮助你在手机上学习 Linux

### 个人在线笔记：
[https://zainiot.github.io/Termux/#/](https://zainiot.github.io/Termux/#/)

### Termux 的环境变量

|Termux|Linux|
|-|-|
|`$PREFIX/bin`|`/bin` 和 `/usr/bin`|
|`$PREFIX/lib`|`/lib` 和 `/usr/lib`|
|`$PREFIX/var`|`/var`|
|`$PREFIX/etc`|`/etc`|

### my-termux-init.sh 脚本注意事项

#### 更换的镜像源为清华大学镜像

##### 该镜像的报错与修复

>! 在Android P上使用TUNA源在 `upgrade` 的时候会出现报错 `bash CANNOT LINK EXECUTABLE "dpkg-deb": library "libz.so.1" not found dpkg: error processing archive` 此时退出 termux的进程，重新打开并 `pkg up` 即可修复。
	
>! 也可能出现以下报错 `bash CANNOT LINK EXECUTABLE "/data/data/com.termux/files/usr/lib/apt/methods/https": library "libnghttp2.so" not found CANNOT LINK EXECUTABLE "/data/data/com.termux/files/usr/lib/apt/methods/https": library "libnghttp2.so" not found` 并且卡进度条，此时退出termux的进程,重新打开，并运行 `dpkg --configure -a` 即可修复。

### 其他

获取存储权限：
`termux-setup-storage`

```
vim
git 
python  
python -m pip install --upgrade pip
mariadb
tmux
ssh
termux-api
```


### 安装顺序记录

安装vim
创建文件夹，扩展键盘
更换镜像源
更换启动页