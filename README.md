创建密钥文件

ssh-keygen -t rsa -C "你的github账号邮箱"

默认密钥文件路径在~/.ssh，id_rsa 是私钥文件，id_rsa.pub 是公钥文件

3. 将公钥添加到 Github

将 id_rsa.pub 文件内容全部复制

登陆到 GitHub 上，右上角小头像 ->Setting->SSH and GPG keys 中，点击 new SSH key。
ssh -T git@github.com
如果结果为 “...You've successfully authenticated, but GitHub does not provide shell access”，则说明成功。

## 添加远程分支,选择ssh
git remote add origin git@github.com:diysite/.emacs.d.git
### 如果远程分支存在先删除
git remote rm origin

### 切换分支进行推送
git branch -M main
git push -u origin main

### 今后推送和拉取
git pull
git push


