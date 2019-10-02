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

!> 该镜像的报错与修复

!> 在`Android P`上使用TUNA源在执行 `pkg upgrade` 的时候会出现报错：
>
> `bash CANNOT LINK EXECUTABLE "dpkg-deb": library "libz.so.1" not found dpkg: error >processing archive`
>
>此时退出 termux 的进程，重新打开并执行 `pkg up` 即可修复。
	
!> 也可能出现以下报错：
>
> `bash CANNOT LINK EXECUTABLE "/data/data/com.termux/files/usr/lib/apt/methods/https": library "libnghttp2.so" not found CANNOT LINK EXECUTABLE "/data/data/com.termux/files/usr/lib/apt/methods/https": library "libnghttp2.so" not found`
>
>关键字：<<<**libnghttp2.so**>>>
>
>并且卡进度条，此时退出 termux 的进程，重新打开，并运行 `dpkg --configure -a` 即可修复。

### 扩展软键盘

在home目录下，创建目录 `.termux`

然后执行如下指令：

```
echo "extra-keys = [['ESC','TAB','{','}','|','HOME','UP','END','PGUP'],['CTRL','ALT','<','>','-','LEFT','DOWN','RIGHT','PGDN']]" > $HOME/.termux/termux.properties
```

若发现报错，执行 `pkg install vim`

然后在执行 `echo` 开头的指令

### 修改开机提示语

开机提示语文件在如下路径： `$PREFIX/etc/motd`

修改 `motd` 文件的内容，即可修改

### Termux 设置开机密码

Termux 开机是没有密码输入的，任何人可以直接进入并使用

在此我们可以创建一个伪密码，可以做到部分保护的作用

之所以叫伪密码，是因为这个密码过程可以被终止，进而进入shell命令终端

### 获取存储权限：

`termux-setup-storage`