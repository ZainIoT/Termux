#!/bin/bash

#修改系统的镜像源
echo "修改 Termux 镜像为清华镜像？"
read -p "确认（Y/y），取消（N/n）" changeSources
if [[ $changeSources = 'Y' || $changeSources = 'y' ]]; then
  echo "确认"
  echo -e "# The main termux repository:\n# deb https://dl.bintray.com/termux/termux-packages-24 stable main\n\n# The termux repository mirror from TUNA:\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main" > $PREFIX/etc/apt/sources.list
else
  echo "已取消"
fi

#扩展键盘
echo "使用扩展键盘？"
read -p "确认（Y/y），取消（N/n）" changeKey
if [[ $changeKey = 'Y' || $changeKey = 'y' ]]; then
  echo "确认"
  echo "extra-keys = [['ESC','TAB','{','}','|','HOME','UP','END','PGUP'],['CTRL','ALT','<','>','-','LEFT','DOWN','RIGHT','PGDN']]" > $HOME/.termux/termux.properties
else
  echo "已取消"
fi