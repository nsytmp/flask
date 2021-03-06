��          t               �   �   �      �  �   �  Z   �     �  �   �  ~   �  {   J  �   �     �  {  �  �        �  �   �  T   �     	  �   	  s   �	  �   [
  �   �
     �   Besides CSS, other types of static files might be files with JavaScript functions, or a logo image. They are all placed under the ``flaskr/static`` directory and referenced with ``url_for('static', filename='...')``. Continue to :doc:`blog`. Flask automatically adds a ``static`` view that takes a path relative to the ``flaskr/static`` directory and serves it. The ``base.html`` template already has a link to the ``style.css`` file: Go to http://127.0.0.1:5000/auth/login and the page should look like the screenshot below. Static Files The authentication views and templates work, but they look very plain right now. Some `CSS`_ can be added to add style to the HTML layout you constructed. The style won't change, so it's a *static* file rather than a template. This tutorial isn't focused on how to write CSS, so you can just copy the following into the ``flaskr/static/style.css`` file: You can find a less compact version of ``style.css`` in the :gh:`example code <examples/tutorial/flaskr/static/style.css>`. You can read more about CSS from `Mozilla's documentation <CSS_>`_. If you change a static file, refresh the browser page. If the change doesn't show up, try clearing your browser's cache. ``flaskr/static/style.css`` Project-Id-Version: Flask 1.1.x
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-06-20 10:49+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 除了CSS之外, 其他类型的静态文件可能是具有JavaScript功能的文件或徽标图像. 它们都放在``flaskr / static``目录下, 并用``url_for('static', filename ='...')``引用.  继续 :doc:`blog`. Flask自动添加一个``static``视图, 该视图采用相对于``flaskr / static``目录的路径并提供服务.  ``base.html``模板已经有一个指向``style.css``文件的链接: 转到http://127.0.0.1:5000/auth/login, 该页面应如下面的屏幕截图所示.  静态文件 身份验证视图和模板可以正常工作, 但它们现在看起来很简单. 可以添加一些`CSS`_来为您构建的HTML布局添加样式. 样式不会改变, 因此它是*静态*文件而不是模板.  本教程不关注如何编写CSS, 因此您只需将以下内容复制到``flaskr / static / style.css``文件中: 你可以在:gh:`example code <examples / tutorial / flaskr / static / style.css>`中找到一个不太紧凑的``style.css``版本.  您可以从`Mozilla的文档<CSS_>`_中了解有关CSS的更多信息. 如果更改静态文件, 请刷新浏览器页面. 如果更改未显示, 请尝试清除浏览器的缓存.  ``flaskr/static/style.css`` 