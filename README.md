<!--
 * @Author: 喵二
 * @Date: 2023-10-13 22:12:21
 * @LastEditors: 喵二
 * @LastEditTime: 2023-10-13 22:38:30
 * @FilePath: \undefinedn:\Git\catwrt-repo\README.md
-->
# catwrt_repo

CatWrt 一键换源脚本，自动优选可用软件源。

Tips: 为了防止滥用资源，默认源并未作出修改需要使用本工具替换。

使用公约: 软件源内容与固件作者无关，软件源使用后不应该滥用，使用后关闭方法。

```bash
mv /etc/opkg/distfeeds.conf.bak /etc/opkg/distfeeds.conf
rm -f /var/lock/opkg.lock
opkg update
```

**在线使用**

```bash
curl https://fastly.jsdelivr.net/gh/miaoermua/catwrt-repo/catwrt-repo | bash
```

**安装**

```bash
curl https://fastly.jsdelivr.net/gh/miaoermua/catwrt-repo/installer.sh | bash
```

运行

```bash
catwrt-repo

# /usr/bin/catwrt-repo
```