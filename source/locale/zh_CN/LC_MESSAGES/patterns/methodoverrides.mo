��          L               |      }   �   �   �   q  9   &  6   `  {  �       �   *  �     9   �  6   �   Adding HTTP Method Overrides Some HTTP proxies do not support arbitrary HTTP methods or newer HTTP methods (such as PATCH).  In that case it's possible to “proxy” HTTP methods through another HTTP method in total violation of the protocol. The way this works is by letting the client do an HTTP POST request and set the ``X-HTTP-Method-Override`` header and set the value to the intended HTTP method (such as ``PATCH``). This can easily be accomplished with an HTTP middleware:: To use this with Flask this is all that is necessary:: Project-Id-Version: Flask 1.1.x
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
 添加HTTP方法覆盖 Some HTTP proxies do not support arbitrary HTTP methods or newer HTTP methods (such as PATCH).  In that case it's possible to “proxy” HTTP methods through another HTTP method in total violation of the protocol. The way this works is by letting the client do an HTTP POST request and set the ``X-HTTP-Method-Override`` header and set the value to the intended HTTP method (such as ``PATCH``). This can easily be accomplished with an HTTP middleware:: To use this with Flask this is all that is necessary:: 