#！/bin/bash
A=`ps -C nginx -no-header |wc =l`
if [ $A -eq 0 ];then
    /usr/local/nginx/sbin/nginx		#启动nginx脚本的位置
    sleep 2
    if [ `ps -C nginx -no-header |wc -l` -eq 0 ];then
        killall keepalived
    fi
fi