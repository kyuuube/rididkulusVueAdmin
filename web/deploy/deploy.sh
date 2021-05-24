#!/bin/bash
# 网站的根目录
WEB_PATH='/qbcloud/vue-ops-static'

echo "start deployment"
cd $WEB_PATH
echo "fetching from remote..."
# 为了避免冲突，强制更新本地文件
git fetch --all
git reset --hard origin/deploy
echo "done"
