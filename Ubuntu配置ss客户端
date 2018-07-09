# 1. 检查
#### ubuntu 14.04 LTS默认就安装了Python，可以检查一下python的版本，需要2.6或2.7
``` python –V ```


# 2. 安装 python-pip
```sudo apt-get install python-pip ```

# 3. 然后通过pip安装shadowsocs
```  pip install shadowsocks ```
# 4. 启动服务
```sslocal  -s ip -p port -k "password"```
###  ip               是你的shadows服务器的ip
###	port	          是你的shadows服务器的port
###  password  是你的shadows服务器的密码
### 其余的设置默认就可以，如果你有多余的设置可以自己查
# 5. 新建一个文件(～/ss.sh),路径，名字可以自定义，前后一致就可以
```
文件内容 ：
#!/bin/bash 
#文件名:ss.sh
sslocal  -s ip -p port -k "password"
```
###看可不可以我们到终端执行命令 sh ～/ss.sh ,如果成功的下会有信息输出的。你也可以到浏览器去试试。这个时候你虽然输入的少了，可是关了终端还是会掉的，我们可以让他后台运行 nohup sh ~/ss.sh &     提示： “&”   符号不要忘记，  试试看关掉终端还可以科学上网不。

# 6. 服务设置位开机启动
 ``` sudo vi  /etc/rc.local ```
### 添加 nohup bash ～/ss.sh >～/log.txt &
### 到exit0 之前
然后把sslocal 和ssserver这两个文件是被存在 /usr/local/bin/下面的，，直接把这两个文件移动到/bin下（同样需要root权限，你可以在root终端下使用cp复制命令）

```
sudo cp  /usr/local/bin/sslocal /bin
sudo cp  /usr/local/bin/ssserver /bin
```

这个时候reboot试试看？没错，现在你不用操心代理的事情了，开机直接科学自由网络冲浪！奔跑吧～少年！
![这里写图片描述](http://img.blog.csdn.net/20160107214626361)
# 7. 查看 服务 
```  ps -aux|grep sslocal ```
# 8. 关闭服务
```  pkill sslocal ```
#9 chrome浏览器的相关配置
http://blog.csdn.net/li740207611/article/details/50479320

