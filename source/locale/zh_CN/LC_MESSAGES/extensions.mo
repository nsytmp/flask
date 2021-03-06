��    	      d               �      �   D  �   
            !  �   4     +  �   <  {       �  D  �     �    �     	  �   	     
  �   
   Building Extensions Consult each extension's documentation for installation, configuration, and usage instructions. Generally, extensions pull their own configuration from :attr:`app.config <flask.Flask.config>` and are passed an application instance during initialization. For example, an extension called "Flask-Foo" might be used like this:: Extensions Extensions are extra packages that add functionality to a Flask application. For example, an extension might add support for sending email or connecting to a database. Some extensions add entire new frameworks to help build certain types of applications, like a ReST API. Finding Extensions Flask extensions are usually named "Flask-Foo" or "Foo-Flask". Many extensions are listed in the `Extension Registry`_, which can be updated by extension developers. You can also search PyPI for packages tagged with `Framework :: Flask <pypi_>`_. Using Extensions While the `Extension Registry`_ contains many Flask extensions, you may not find an extension that fits your need. If this is the case, you can create your own. Read :ref:`extension-dev` to develop your own Flask extension. Project-Id-Version: Flask 1.1.x
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
 构建扩展 Consult each extension's documentation for installation, configuration, and usage instructions. Generally, extensions pull their own configuration from :attr:`app.config <flask.Flask.config>` and are passed an application instance during initialization. For example, an extension called "Flask-Foo" might be used like this:: 扩展 Extensions are extra packages that add functionality to a Flask application. For example, an extension might add support for sending email or connecting to a database. Some extensions add entire new frameworks to help build certain types of applications, like a ReST API. 寻找扩展 Flask extensions are usually named "Flask-Foo" or "Foo-Flask". Many extensions are listed in the `Extension Registry`_, which can be updated by extension developers. You can also search PyPI for packages tagged with `Framework :: Flask <pypi_>`_. 使用扩展程序 虽然`Extension Registry`_包含许多Flask扩展, 但您可能找不到符合您需求的扩展. 如果是这种情况, 您可以创建自己的. 阅读:ref:`extension-dev`来开发你自己的Flask扩展.  