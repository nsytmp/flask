��    9      �              �  �   �  c  K  m   �  �          s  1  !   �     �  ;  �  �   
  |  �
  �   s       %   0  H  V  �  �  �   N  �   D     �  �   �  M  �     &     >     O  �   b  �   B  h     �     �   6  �     w   �  L   C     �  �     �  �  �   �  �   $     �     �       N     R  l  0   �  9   �  *   *   *   U   9   �   Q   �   D   !  S   Q!  P   �!  I   �!  J   @"  D   �"  �   �"  �   Q#  {  �#  �   t%  c  &  ]   v'  �   �'     �(  s  �(     V*     o*  ;  �*  �   �+  |  �,  �   .     �.     �.  H  �.  �  00  �   �1  �   �2  
   o3  �   z3  M  f4     �5     �5     �5  �   �5  �   �6  Q   �7  �   �7  �   �8  �   |9  b   7:  D   �:  q   �:  �   Q;  �  .<  q   �=  �   N>     ?     &?     6?  9   G?  R  �?  &   �@  4   �@  +   0A  *   \A  9   �A  Q   �A  D   B  S   XB  P   �B  I   �B  J   GC  D   �C  t   �C  �   LD   Another big problem is CSRF.  This is a very complex topic and I won't outline it here in detail just mention what it is and how to theoretically prevent it. Another thing that is very important are unquoted attributes.  While Jinja2 can protect you from XSS issues by escaping HTML, there is one thing it cannot protect you from: XSS by attribute injection.  To counter this possible attack vector, be sure to always quote your attributes with either double or single quotes when using Jinja expressions in them: Be careful when enabling this, as it is very difficult to undo if you set up or upgrade your key incorrectly. Browsers recognize various response headers in order to control security. We recommend reviewing each of the headers below for use in your application. The `Flask-Talisman`_ extension can be used to manage HTTPS and the security headers for you. Content Security Policy (CSP) Cross site scripting is the concept of injecting arbitrary HTML (and with it JavaScript) into the context of a website.  To remedy this, developers have to properly escape text so that it cannot include arbitrary HTML tags.  For more information on that have a look at the Wikipedia article on `Cross-Site Scripting <https://en.wikipedia.org/wiki/Cross-site_scripting>`_. Cross-Site Request Forgery (CSRF) Cross-Site Scripting (XSS) ECMAScript 5 closed this vulnerability, so only extremely old browsers are still vulnerable. All of these browsers have `other more serious vulnerabilities <https://github.com/pallets/flask/issues/248#issuecomment-59934857>`_, so this behavior was changed and :func:`~flask.jsonify` now supports serializing arrays. Flask configures Jinja2 to automatically escape all values unless explicitly told otherwise.  This should rule out all XSS problems caused in templates, but there are still other places where you have to be careful: For the session cookie, if :attr:`session.permanent <flask.session.permanent>` is set, then :data:`PERMANENT_SESSION_LIFETIME` is used to set the expiration. Flask's default cookie implementation validates that the cryptographic signature is not older than this value. Lowering this value may help mitigate replay attacks, where intercepted cookies can be sent at a later time. :: Forces the browser to honor the response content type instead of trying to detect it, which can be abused to generate a cross-site scripting (XSS) attack. :: HTTP Public Key Pinning (HPKP) HTTP Strict Transport Security (HSTS) How can you prevent that?  Basically for each request that modifies content on the server you would have to either use a one-time token and store that in the cookie **and** also transmit it with the form data. After receiving the data on the server again, you would then have to compare the two tokens and ensure they are equal. If your authentication information is stored in cookies, you have implicit state management.  The state of "being logged in" is controlled by a cookie, and that cookie is sent with each request to a page. Unfortunately that includes requests triggered by 3rd party sites.  If you don't keep that in mind, some people might be able to trick your application's users with social engineering to do stupid things without them knowing. Imagine you were to run Facebook with millions of concurrent users and someone would send out links to images of little kittens.  When users would go to that page, their profiles would get deleted while they are looking at images of fluffy cats. In Flask 0.10 and lower, :func:`~flask.jsonify` did not serialize top-level arrays to JSON. This was because of a security vulnerability in ECMAScript 4. JSON Security Prevents external sites from embedding your site in an ``iframe``. This prevents a class of attacks where clicks in the outer frame can be translated invisibly to clicks on your page's elements. This is also known as "clickjacking". :: Say you have a specific URL that, when you sent ``POST`` requests to will delete a user's profile (say ``http://example.com/user/delete``).  If an attacker now creates a page that sends a post request to that page with some JavaScript they just have to trick some users to load that page and their profiles will end up being deleted. Security Considerations Security Headers Set-Cookie options Specifying ``Expires`` or ``Max-Age`` options, will remove the cookie after the given time, or the current time plus the age, respectively. If neither option is set, the cookie will be removed when the browser is closed. :: Tell the browser where it can load various types of resource from. This header should be used whenever possible, but requires some work to define the correct policy for your site. A very strict policy would be:: Tells the browser to convert all HTTP requests to HTTPS, preventing man-in-the-middle (MITM) attacks. :: The browser will try to prevent reflected XSS attacks by not loading the page if the request contains something that looks like JavaScript and the response contains the same data. :: There is one class of XSS issues that Jinja's escaping does not protect against. The ``a`` tag's ``href`` attribute can contain a `javascript:` URI, which the browser will execute when clicked if not secured properly. These options can be added to a ``Set-Cookie`` header to improve their security. Flask has configuration options to set these on the session cookie. They can be set on other cookies too. This tells the browser to authenticate with the server using only the specific certificate key to prevent MITM attacks. To prevent this, you'll need to set the :ref:`security-csp` response header. Use :class:`itsdangerous.TimedSerializer` to sign and validate other cookie values (or any values that need secure signatures). Web applications usually face all kinds of security problems and it's very hard to get everything right.  Flask tries to solve a few of these things for you, but there are a couple more you have to take care of yourself. When the user would then move with the mouse over the input, the cookie would be presented to the user in an alert window.  But instead of showing the cookie to the user, a good attacker might also execute any other JavaScript code.  In combination with CSS injections the attacker might even make the element fill out the entire page so that the user would just have to have the mouse anywhere on the page to trigger the attack. Why does Flask not do that for you?  The ideal place for this to happen is the form validation framework, which does not exist in Flask. Why is this necessary?  Because if you would not be doing that, an attacker could easily inject custom JavaScript handlers.  For example an attacker could inject this piece of HTML+JavaScript: X-Content-Type-Options X-Frame-Options X-XSS-Protection ``HttpOnly`` protects the contents of cookies from being read with JavaScript. ``SameSite`` restricts how cookies are sent with requests from external sites. Can be set to ``'Lax'`` (recommended) or ``'Strict'``. ``Lax`` prevents sending cookies with CSRF-prone requests from external sites, such as submitting a form. ``Strict`` prevents sending cookies with all external requests, including following regular links. ``Secure`` limits cookies to HTTPS traffic only. calling :class:`~flask.Markup` on data submitted by users generating HTML without the help of Jinja2 https://csp.withgoogle.com/docs/index.html https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection https://developer.mozilla.org/en-US/docs/Web/HTTP/Public_Key_Pinning sending out HTML from uploaded files, never do that, use the ``Content-Disposition: attachment`` header to prevent that problem. sending out textfiles from uploaded files.  Some browsers are using content-type guessing based on the first few bytes so users could trick a browser to execute HTML. Project-Id-Version: Flask 1.1.x
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
 Another big problem is CSRF.  This is a very complex topic and I won't outline it here in detail just mention what it is and how to theoretically prevent it. Another thing that is very important are unquoted attributes.  While Jinja2 can protect you from XSS issues by escaping HTML, there is one thing it cannot protect you from: XSS by attribute injection.  To counter this possible attack vector, be sure to always quote your attributes with either double or single quotes when using Jinja expressions in them: 启用此功能时要小心, 因为如果您错误地设置或升级密钥, 则很难撤消.  Browsers recognize various response headers in order to control security. We recommend reviewing each of the headers below for use in your application. The `Flask-Talisman`_ extension can be used to manage HTTPS and the security headers for you. 内容安全政策(CSP) Cross site scripting is the concept of injecting arbitrary HTML (and with it JavaScript) into the context of a website.  To remedy this, developers have to properly escape text so that it cannot include arbitrary HTML tags.  For more information on that have a look at the Wikipedia article on `Cross-Site Scripting <https://en.wikipedia.org/wiki/Cross-site_scripting>`_. 跨站请求伪造(CSRF) 跨站点脚本(XSS) ECMAScript 5 closed this vulnerability, so only extremely old browsers are still vulnerable. All of these browsers have `other more serious vulnerabilities <https://github.com/pallets/flask/issues/248#issuecomment-59934857>`_, so this behavior was changed and :func:`~flask.jsonify` now supports serializing arrays. Flask configures Jinja2 to automatically escape all values unless explicitly told otherwise.  This should rule out all XSS problems caused in templates, but there are still other places where you have to be careful: For the session cookie, if :attr:`session.permanent <flask.session.permanent>` is set, then :data:`PERMANENT_SESSION_LIFETIME` is used to set the expiration. Flask's default cookie implementation validates that the cryptographic signature is not older than this value. Lowering this value may help mitigate replay attacks, where intercepted cookies can be sent at a later time. :: Forces the browser to honor the response content type instead of trying to detect it, which can be abused to generate a cross-site scripting (XSS) attack. :: HTTP公钥固定(HPKP) HTTP严格传输安全(HSTS) How can you prevent that?  Basically for each request that modifies content on the server you would have to either use a one-time token and store that in the cookie **and** also transmit it with the form data. After receiving the data on the server again, you would then have to compare the two tokens and ensure they are equal. If your authentication information is stored in cookies, you have implicit state management.  The state of "being logged in" is controlled by a cookie, and that cookie is sent with each request to a page. Unfortunately that includes requests triggered by 3rd party sites.  If you don't keep that in mind, some people might be able to trick your application's users with social engineering to do stupid things without them knowing. Imagine you were to run Facebook with millions of concurrent users and someone would send out links to images of little kittens.  When users would go to that page, their profiles would get deleted while they are looking at images of fluffy cats. In Flask 0.10 and lower, :func:`~flask.jsonify` did not serialize top-level arrays to JSON. This was because of a security vulnerability in ECMAScript 4. JSON安全 Prevents external sites from embedding your site in an ``iframe``. This prevents a class of attacks where clicks in the outer frame can be translated invisibly to clicks on your page's elements. This is also known as "clickjacking". :: Say you have a specific URL that, when you sent ``POST`` requests to will delete a user's profile (say ``http://example.com/user/delete``).  If an attacker now creates a page that sends a post request to that page with some JavaScript they just have to trick some users to load that page and their profiles will end up being deleted. 安全考虑因素 安全标题 Set-Cookie选项 Specifying ``Expires`` or ``Max-Age`` options, will remove the cookie after the given time, or the current time plus the age, respectively. If neither option is set, the cookie will be removed when the browser is closed. :: Tell the browser where it can load various types of resource from. This header should be used whenever possible, but requires some work to define the correct policy for your site. A very strict policy would be:: 告诉浏览器将所有HTTP请求转换为HTTPS, 防止中间人(MITM)攻击. :: The browser will try to prevent reflected XSS attacks by not loading the page if the request contains something that looks like JavaScript and the response contains the same data. :: There is one class of XSS issues that Jinja's escaping does not protect against. The ``a`` tag's ``href`` attribute can contain a `javascript:` URI, which the browser will execute when clicked if not secured properly. These options can be added to a ``Set-Cookie`` header to improve their security. Flask has configuration options to set these on the session cookie. They can be set on other cookies too. 这告诉浏览器仅使用特定证书密钥对服务器进行身份验证, 以防止MITM攻击.  为防止这种情况, 您需要设置:ref:`security-csp`响应头.  使用:class:`itsdangerous.TimedSerializer`来签名并验证其他cookie值(或任何需要安全签名的值).  Web applications usually face all kinds of security problems and it's very hard to get everything right.  Flask tries to solve a few of these things for you, but there are a couple more you have to take care of yourself. When the user would then move with the mouse over the input, the cookie would be presented to the user in an alert window.  But instead of showing the cookie to the user, a good attacker might also execute any other JavaScript code.  In combination with CSS injections the attacker might even make the element fill out the entire page so that the user would just have to have the mouse anywhere on the page to trigger the attack. 为什么Flask不适合你呢？发生这种情况的理想之处是表单验证框架, 它在Flask中不存在.  Why is this necessary?  Because if you would not be doing that, an attacker could easily inject custom JavaScript handlers.  For example an attacker could inject this piece of HTML+JavaScript: X-Content-Type-Options X-Frame-Options X-XSS-Protection ``HttpOnly``保护cookie的内容不被JavaScript读取.  ``SameSite`` restricts how cookies are sent with requests from external sites. Can be set to ``'Lax'`` (recommended) or ``'Strict'``. ``Lax`` prevents sending cookies with CSRF-prone requests from external sites, such as submitting a form. ``Strict`` prevents sending cookies with all external requests, including following regular links. ``Secure``仅限cookie到HTTPS流量.  对用户提交的数据调用:class:`~flask.Markup` 在没有Jinja2帮助的情况下生成HTML https://csp.withgoogle.com/docs/index.html https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection https://developer.mozilla.org/en-US/docs/Web/HTTP/Public_Key_Pinning 从上传的文件发送HTML, 从不这样做, 使用``Content-Disposition:attachment``标题来防止这个问题.  sending out textfiles from uploaded files.  Some browsers are using content-type guessing based on the first few bytes so users could trick a browser to execute HTML. 