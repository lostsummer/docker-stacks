# CentOS7上搭建私有docker registry (https, local CA)

## 使用镜像

- nginx
- redis
- registry:v2

## 预生成文件

nginx配置文件和密钥，证书都在 nginx/ 目录下

证书使用域名"emregistry.com", 使用其他域名需要根据参考教程(2)重新生成

用户只添加了一个emoney，增加用户需要根据参考教程(2)使用 htpasswd 添加

## 使用方法

### 服务器

- 安装docker, docker-compose
- 脚本目录下运行 docker-compose up -d

### 客户端

- 安装docker
- 添加hosts 
    /etc/hosts 添加行： 
    ```
    192.168.240.29   emregistry.com
    ```    
- 添加信任证书
    脚本目录下
    ```
    ./add_trust_ca.sh
    ```

### push镜像

1. 给已有镜像添加tag
    ```
    docker tag 8140d0c64310 registry.com/centos:7
    ```
2. 登录registry验证
    ```
    docker login
    ```
3. push
    ```
    docker push registry.com/centos:7
    ```

## web面板

使用脚本 ./start_frontend.sh

目前私有库emregistry.com(192.168.240.29)中有镜像 emregistry.com/konradkleine/docker-registry-frontend:v2

也可以从dockerhub上pull konradkleine/docker-registry-frontend:v2



## 参考

1. [Docker doc: registry/deploying.md](https://github.com/docker/docker.github.io/blob/master/registry/deploying.md)
2. [How To Set Up a Private Docker Registry on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-private-docker-registry-on-ubuntu-14-04)
3. [Github: xianlubird/docker-notes](https://github.com/xianlubird/docker-notes/tree/master/registry-compose)
4. [Github: Jamlee/docker-compose-registry](https://github.com/Jamlee/docker-compose-registry)
