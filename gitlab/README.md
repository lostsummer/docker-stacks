# docker方式允许gitlab，配备redis

## 服务运行

目录中运行

docker-compose up -d

## 备份脚本

作用是将代码库备份，打包放在 /home/gitlabbackup 目录

需要busybox镜像

可用cron定时运行备份脚本
