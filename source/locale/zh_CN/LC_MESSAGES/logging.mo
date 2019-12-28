��          �               �     �     �  �   �  �   j     �         '  �   -  Y  �     !     ?     G  �   W     $  9  A  �   {  �   	  �   �	     6
  �   ?
    �
  -  �  {  -     �     �  �   �  �   v  $        0    >  �   D  Y  �     8     K     R  �   b     /  9  H  y   �  �   �  �   �     .  �   7    �  -  �   Basic Configuration Default Configuration Depending on the situation, an extension may choose to log to :meth:`app.logger <flask.Flask.logger>` or its own named logger. Consult each extension's documentation for details. Depending on your project, it may be more useful to configure each logger you care about separately, instead of configuring only the root logger. :: Email Errors to Admins Flask Extensions Flask uses standard Python :mod:`logging`. All Flask-related messages are logged under the ``'flask'`` logger namespace. :meth:`Flask.logger <flask.Flask.logger>` returns the logger named ``'flask.app'``, and can be used to log messages for your application. :: If you configured logging after accessing :meth:`app.logger <flask.Flask.logger>`, and need to remove the default handler, you can import and remove it:: If you do not configure logging yourself, Flask will add a :class:`~logging.StreamHandler` to :meth:`app.logger <flask.Flask.logger>` automatically. During requests, it will write to the stream specified by the WSGI server in ``environ['wsgi.errors']`` (which is usually :data:`sys.stderr`). Outside a request, it will log to :data:`sys.stderr`. Injecting Request Information Logging Other Libraries Other libraries may use logging extensively, and you want to see relevant messages from those logs too. The simplest way to do this is to add handlers to the root logger instead of only the app logger. :: Removing the Default Handler Seeing more information about the request, such as the IP address, may help debugging some errors. You can subclass :class:`logging.Formatter` to inject your own fields that can be used in messages. You can change the formatter for Flask's default handler, the mail handler defined above, or any other handler. :: This example uses :func:`~logging.config.dictConfig` to create a logging configuration similar to Flask's default, except for all logs:: This requires that you have an SMTP server set up on the same server. See the Python docs for more information about configuring the handler. To be proactive about discovering and fixing bugs, you can configure a :class:`logging.handlers.SMTPHandler` to send an email when errors and higher are logged. :: Werkzeug Werkzeug logs basic request/response information to the ``'werkzeug'`` logger. If the root logger has no handlers configured, Werkzeug adds a :class:`~logging.StreamHandler` to its logger. When running the application on a remote server for production, you probably won't be looking at the log messages very often. The WSGI server will probably send log messages to a file, and you'll only check that file if a user tells you something went wrong. When you want to configure logging for your project, you should do it as soon as possible when the program starts. If :meth:`app.logger <flask.Flask.logger>` is accessed before logging is configured, it will add a default handler. If possible, configure logging before creating the application object. Project-Id-Version: Flask 1.1.x
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
 基本配置 默认配置 Depending on the situation, an extension may choose to log to :meth:`app.logger <flask.Flask.logger>` or its own named logger. Consult each extension's documentation for details. Depending on your project, it may be more useful to configure each logger you care about separately, instead of configuring only the root logger. :: 向管理员发送电子邮件错误  Flask 扩展 Flask uses standard Python :mod:`logging`. All Flask-related messages are logged under the ``'flask'`` logger namespace. :meth:`Flask.logger <flask.Flask.logger>` returns the logger named ``'flask.app'``, and can be used to log messages for your application. :: If you configured logging after accessing :meth:`app.logger <flask.Flask.logger>`, and need to remove the default handler, you can import and remove it:: If you do not configure logging yourself, Flask will add a :class:`~logging.StreamHandler` to :meth:`app.logger <flask.Flask.logger>` automatically. During requests, it will write to the stream specified by the WSGI server in ``environ['wsgi.errors']`` (which is usually :data:`sys.stderr`). Outside a request, it will log to :data:`sys.stderr`. 注入请求信息 记录 其他图书馆 Other libraries may use logging extensively, and you want to see relevant messages from those logs too. The simplest way to do this is to add handlers to the root logger instead of only the app logger. :: 删除默认处理程序 Seeing more information about the request, such as the IP address, may help debugging some errors. You can subclass :class:`logging.Formatter` to inject your own fields that can be used in messages. You can change the formatter for Flask's default handler, the mail handler defined above, or any other handler. :: 此示例使用:func:`~logging.config.dictConfig`创建类似于Flask默认的日志记录配置, 但所有日志除外:: This requires that you have an SMTP server set up on the same server. See the Python docs for more information about configuring the handler. To be proactive about discovering and fixing bugs, you can configure a :class:`logging.handlers.SMTPHandler` to send an email when errors and higher are logged. :: Werkzeug Werkzeug logs basic request/response information to the ``'werkzeug'`` logger. If the root logger has no handlers configured, Werkzeug adds a :class:`~logging.StreamHandler` to its logger. When running the application on a remote server for production, you probably won't be looking at the log messages very often. The WSGI server will probably send log messages to a file, and you'll only check that file if a user tells you something went wrong. When you want to configure logging for your project, you should do it as soon as possible when the program starts. If :meth:`app.logger <flask.Flask.logger>` is accessed before logging is configured, it will add a default handler. If possible, configure logging before creating the application object. 