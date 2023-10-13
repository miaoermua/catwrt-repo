###
 # @Author: 喵二
 # @Date: 2023-09-30 18:34:35
 # @LastEditors: 喵二
 # @LastEditTime: 2023-10-13 22:16:34
 # @FilePath: \undefinedn:\Git\catwrt-repo\installer.sh
### 
#!/bin/bash

if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root user"
    exit 1
fi

release=$(cat /etc/openwrt_release)

if [[ $release =~ "CatWrt" ]]; then
  echo "$(date) - Starting CatWrt Network Diagnostics Installer"  
else
  echo "Abnormal system environment..."
  echo " "
  exit 1
fi

curl -O /usr/bin/catwrt-repo https://fastly.jsdelivr.net/gh/miaoermua/catwrt-repo@main/catwrt-repo

chmod +x /usr/bin/catwrt-repo

echo "Installation successful!"

echo "Type 'catwrt-repo' to use the CatWrt-Repo script!"
