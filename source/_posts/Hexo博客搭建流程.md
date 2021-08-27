---
title: Hexo博客搭建流程
date: 2021-08-12 16:25:29
categories: 博客创建
---
分享一下搭建个人博客的过程，包括一些细节的处理等等，希望会有帮助。

# Hexo环境配置

我主要参考的文章是这个[知乎专栏](https://www.zhihu.com/column/c_1201860091307458560)：。前三篇是GitHub使用相关，四六篇若不希望改变域名则非必要（穷学生不打算买域名，也没找到免费的方法QAQ）。我是从第五篇开始的，按步骤安装node.js后，在某个文件夹内搭建Hexo环境即可。

接下来是第七篇，我设置的是keep主题，与专栏里的主题设置方法大同小异。最后便是第八篇了，只需要选取一些感兴趣的功能，单独看单独设置即可。Hexo博客的功能是插件式管理的，很方便，只需安装想要的插件，然后在主题配置文件或网站配置文件（_config.yml）内设置一下即可。使用hexo new post title即可创建新文章，写好后在网站根目录运行hexo g和hexo d指令即可完成网页的部署。若有对配置文件进行更改，则最好运行hexo clean之后再运行hexo g，hexo d命令。

# 数学公式配置

为了更新数学笔记，数学公式是必不可少的。一种方法是直接上传pdf（需要相关插件支持），但效果不是很好，因此我打算沿用我在知乎上传笔记的方法，先将LaTeX转成Markdown再处理。这一步利用pandoc实现，可参考[我的文章](https://zhuanlan.zhihu.com/p/355704286)。接下来还需要令网站能够渲染Markdown文件中的数学公式，可参考[文章](https://www.jianshu.com/p/7ab21c7f0674)，需要先卸载初始渲染引擎xxx-marked，更换为xxx-kramed，然后要取消对部分符号的转义，最后在主题配置文件中开启mathjax，并在每篇文章中设置mathjax开关即可。

值得一提的是，和LaTeX一样，Markdown也是回车默认不换行，两次回车才换行的，但Hexo博客的默认设置不是这样。参考[博客](https://longrm.com/2017/08/23/2017-08-23-hexo-mathjax/)，浏览“后续”部分即可。

# 图床配置

笔记没有图片当然不行。一种方法是直接将图片放到博客环境的文件夹里，然后利用md文件上传图片的方法，直接将链接设置为图片（相对）位置即可。这种方法简单但是会占用仓库空间。另一种方法是利用图床，我采用的是[SMMS](https://sm.ms)，免费且API简洁易懂。这样将图片上传到图床上，令链接为图床生成的图片链接，就可以节省仓库空间了。使用sm.ms图床时，需要注册用户，在API token页面生成令牌。

为了让博客上传更加自动化，图床上传图片的过程当然要用程序实现，在此把我的python代码贴出来：

smms.py（参考[GitHub](https://github.com/XavierJiezou/python-sm.ms-api/blob/master/smms.py)）

    import requests
    import json


    class SMMS(object):
        # init
        def __init__(self, username, password):
            self.username = username
            self.password = password
            self.token = None
            self.profile = None
            self.history = None
            self.upload_history = None
            self.url = None
            self.headers = None

        # user
        def get_api_token(self):
            data = {
                'username': self.username,
                'password': self.password,
            }
            url = root+'token'
            res = requests.post(url, data=data).json()
            self.token = res['data']['token']
            self.headers = {'Authorization': self.token}

        # user
        def get_user_profile(self):
            url = root+'profile'
            res = requests.post(url, headers=self.headers).json()
            self.profile = res['data']
            print(json.dumps(res, indent=4))

        # image
        def clear_temporary_history(self):
            data = {
                'format': 'json'
            }
            url = root+'clear'
            res = requests.get(url, data=data).json()
            print(json.dumps(res, indent=4))

        # image
        def view_temporary_history(self):
            url = root+'history'
            res = requests.get(url).json()
            self.history = res['data']
            print(json.dumps(res, indent=4))

        # image
        def delete_image(self, hash):
            url = root+'delete/'+hash
            res = requests.get(url).json()
            print(json.dumps(res, indent=4))

        # image
        def view_upload_history(self):
            url = root+'upload_history'
            res = requests.get(url, headers=self.headers).json()
            self.upload_history = res['data']
            print(json.dumps(res, indent=4))

        # image
        def upload_image(self, path):
            try:
                files = {'smfile': open(path, 'rb')}
                url = root+'upload'
                res = requests.post(url, files=files, headers=self.headers).json()
                if res['success']:
                    self.url = res['data']['url']
                    return self.url
                else:
                    return res['images']
            except Exception as e:
                print(e)
                return 'https://i.loli.net/'


    root = 'https://sm.ms/api/v2/'
    smms = SMMS('username', 'password')
    smms.get_api_token()


    def upload(picture):
        return smms.upload_image(picture)


main.py（补充自[我的文章](https://zhuanlan.zhihu.com/p/355704286)）

    import re
    import smms

    zhihu = open("zhihu.md", "r+", encoding="utf-8")
    contents = zhihu.readlines()

    for i in range(len(contents)):
        if re.match(':::', contents[i]):
            contents[i] = ""
            j = i+1
            while not re.match(':::', contents[j]):
                contents[j] = re.sub(r'\n', ' ', contents[j])
                j = j+1
            contents[j] = "\n"

        if re.match(r'!.*\([\w\d\s]*\.png\)', contents[i]):
            print("Uploading pictures...")
            ret = re.search(r'[\w\d\s]*\.png', contents[i])
            path = ret.group()
            contents[i] = re.sub(path, smms.upload(path), contents[i])
            print("Done.")

        while re.match(r'.*}}', contents[i]):
            contents[i] = re.sub(r'}}', r'} }', contents[i])

        while re.match(r'.*{{', contents[i]):
            contents[i] = re.sub(r'{{', r'{ {', contents[i])

        while re.match(r'.*{#.*}', contents[i]):
            contents[i] = re.sub(r'{#.*}', r'', contents[i])

    zhihu.seek(0)
    zhihu.truncate()
    zhihu.writelines(contents)
    zhihu.close()

这样基本的配置就已经完成了，其它自动化的部分我单开一篇文章继续说明。