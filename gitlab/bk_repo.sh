#!/bin/sh

 docker run  --rm  -v gitlab_gitlab-data:/home/git/data  -v /home/gitlabbackup:/backup busybox tar czf /backup/git-repo-$(date +%F-%H%M%S).tgz /home/git/data/repositories

