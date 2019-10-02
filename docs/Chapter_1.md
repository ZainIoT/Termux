### Termux 的环境变量

Termux 与 Linux 相关变量的对应关系

|Termux|Linux|
|-|-|
|`$PREFIX/bin`|`/bin` 和 `/usr/bin`|
|`$PREFIX/lib`|`/lib` 和 `/usr/lib`|
|`$PREFIX/var`|`/var`|
|`$PREFIX/etc`|`/etc`|

### 更换镜像源

使用下面一条 shell 指令可直接将官方镜像替换为清华大学镜像：

```
echo -e "# The main termux repository:\n# deb https://dl.bintray.com/termux/termux-packages-24 stable main\n\n# The termux repository mirror from TUNA:\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main" > $PREFIX/etc/apt/sources.list
```

设置镜像文件的路径为：`$PREFIX/etc/apt/sources.list`；

如果需要修改自己的镜像为其他镜像，可以在此文件中更改：

>将字符 `deb https://dl.bintray.com/termux/termux-packages-24 stable main` 替换为自己想要设置的镜像即可。

>! 该镜像的报错与修复

>! 在`Android P`上使用TUNA源在执行 `pkg upgrade` 的时候会出现报错：
>
> `bash CANNOT LINK EXECUTABLE "dpkg-deb": library "libz.so.1" not found dpkg: error >processing archive`
>
>此时退出 termux 的进程，重新打开并执行 `pkg up` 即可修复。
	
>! 也可能出现以下报错：
>
> `bash CANNOT LINK EXECUTABLE "/data/data/com.termux/files/usr/lib/apt/methods/https": library "libnghttp2.so" not found CANNOT LINK EXECUTABLE "/data/data/com.termux/files/usr/lib/apt/methods/https": library "libnghttp2.so" not found`
>
>关键字：<<<**libnghttp2.so**>>>
>
>并且卡进度条，此时退出 termux 的进程，重新打开，并运行 `dpkg --configure -a` 即可修复。

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