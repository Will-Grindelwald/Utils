# VHD 相关 bat 脚本

## 开机自动加载 vhd/vhdx 文件

1. 将 install.bat instsrv.exe srvany.exe uninstall.bat 四个文件 及 vhd 文件 放到 一个单独的目录
1. install.bat 用安装服务，会在该目录下生成 mount.txt，不要删
1. uninstall.bat 用卸载服务

## 参考

* http://blog.sina.com.cn/s/blog_56799b500102vndh.html
* http://lizbj.blog.51cto.com/1575934/487523
* http://dl.pconline.com.cn/download/558946.html
