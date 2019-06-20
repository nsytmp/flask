��                        �  Y  �     G  �   H     .  �   I  �   *  �  #  �  �     �
  �   �
     [     d  	   t  �   ~     Z  �  j  �   .  S   �  R   ?  S  �  r  �  $   Y  '   ~     �  f   �  _   ,  \   �  �   �  {  �  Y  B     �  �   �     �  �   �  �     �  x  �  *     �  �   �     �     �     �  �   �     �   �  �   �   �"  S   =#  R   �#  S  �#  r  8%  $   �&  '   �&     �&  f   '  _   ~'  \   �'  �   ;(   :data:`g` is automatically available in templates. Based on if ``g.user`` is set (from ``load_logged_in_user``), either the username and a log out link are displayed, otherwise links to register and log in are displayed. :func:`url_for` is also automatically available, and is used to generate URLs to views instead of writing them out manually. A useful pattern used here is to place ``{% block title %}`` inside ``{% block header %}``. This will set the title block and then output the value of it into the header block, so that both the window and page share the same title without writing it twice. After the page title, and before the content, the template loops over each message returned by :func:`get_flashed_messages`. You used :func:`flash` in the views to show error messages, and this is the code that will display them. Continue to :doc:`static`. Each page in the application will have the same basic layout around a different body. Instead of writing the entire HTML structure in each template, each template will *extend* a base template and override specific sections. Fill out a username and password and you'll be redirected to the login page. Try entering an incorrect username, or the correct username and incorrect password. If you log in you'll get an error because there's no ``index`` view to redirect to yet. In your application, you will use templates to render `HTML`_ which will display in the user's browser. In Flask, Jinja is configured to *autoescape* any data that is rendered in HTML templates. This means that it's safe to render user input; any characters they've entered that could mess with the HTML, such as ``<`` and ``>`` will be *escaped* with *safe* values that look the same in the browser but don't cause unwanted effects. Jinja looks and behaves mostly like Python. Special delimiters are used to distinguish Jinja syntax from the static data in the template. Anything between ``{{`` and ``}}`` is an expression that will be output to the final document. ``{%`` and ``%}`` denotes a control flow statement like ``if`` and ``for``. Unlike Python, blocks are denoted by start and end tags rather than indentation since static text within a block could change indentation. Log In Now that the authentication templates are written, you can register a user. Make sure the server is still running (``flask run`` if it's not), then go to http://127.0.0.1:5000/auth/register. Register Register A User Templates Templates are files that contain static data as well as placeholders for dynamic data. A template is rendered with specific data to produce a final document. Flask uses the `Jinja`_ template library to render templates. The Base Layout The ``input`` tags are using the ``required`` attribute here. This tells the browser not to submit the form until those fields are filled in. If the user is using an older browser that doesn't support that attribute, or if they are using something besides a browser to make requests, you still want to validate the data in the Flask view. It's important to always fully validate the data on the server, even if the client does some validation as well. The base template is directly in the ``templates`` directory. To keep the others organized, the templates for a blueprint will be placed in a directory with the same name as the blueprint. There are three blocks defined here that will be overridden in the other templates: This is identical to the register template except for the title and submit button. Try clicking the "Register" button without filling out the form and see that the browser shows an error message. Try removing the ``required`` attributes from the ``register.html`` template and click "Register" again. Instead of the browser showing an error, the page will reload and the error from :func:`flash` in the view will be shown. You've written the authentication views for your application, but if you're running the server and try to go to any of the URLs, you'll see a ``TemplateNotFound`` error. That's because the views are calling :func:`render_template`, but you haven't written the templates yet. The template files will be stored in the ``templates`` directory inside the ``flaskr`` package. ``flaskr/templates/auth/login.html`` ``flaskr/templates/auth/register.html`` ``flaskr/templates/base.html`` ``{% block content %}`` is where the content of each page goes, such as the login form or a blog post. ``{% block header %}`` is similar to ``title`` but will change the title displayed on the page. ``{% block title %}`` will change the title displayed in the browser's tab and window title. ``{% extends 'base.html' %}`` tells Jinja that this template should replace the blocks from the base template. All the rendered content must appear inside ``{% block %}`` tags that override blocks from the base template. Project-Id-Version: Flask 1.1.x
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
 :data:`g` is automatically available in templates. Based on if ``g.user`` is set (from ``load_logged_in_user``), either the username and a log out link are displayed, otherwise links to register and log in are displayed. :func:`url_for` is also automatically available, and is used to generate URLs to views instead of writing them out manually. A useful pattern used here is to place ``{% block title %}`` inside ``{% block header %}``. This will set the title block and then output the value of it into the header block, so that both the window and page share the same title without writing it twice. After the page title, and before the content, the template loops over each message returned by :func:`get_flashed_messages`. You used :func:`flash` in the views to show error messages, and this is the code that will display them. Continue to :doc:`static`. Each page in the application will have the same basic layout around a different body. Instead of writing the entire HTML structure in each template, each template will *extend* a base template and override specific sections. Fill out a username and password and you'll be redirected to the login page. Try entering an incorrect username, or the correct username and incorrect password. If you log in you'll get an error because there's no ``index`` view to redirect to yet. In your application, you will use templates to render `HTML`_ which will display in the user's browser. In Flask, Jinja is configured to *autoescape* any data that is rendered in HTML templates. This means that it's safe to render user input; any characters they've entered that could mess with the HTML, such as ``<`` and ``>`` will be *escaped* with *safe* values that look the same in the browser but don't cause unwanted effects. Jinja looks and behaves mostly like Python. Special delimiters are used to distinguish Jinja syntax from the static data in the template. Anything between ``{{`` and ``}}`` is an expression that will be output to the final document. ``{%`` and ``%}`` denotes a control flow statement like ``if`` and ``for``. Unlike Python, blocks are denoted by start and end tags rather than indentation since static text within a block could change indentation. Log In Now that the authentication templates are written, you can register a user. Make sure the server is still running (``flask run`` if it's not), then go to http://127.0.0.1:5000/auth/register. Register Register A User 模板 Templates are files that contain static data as well as placeholders for dynamic data. A template is rendered with specific data to produce a final document. Flask uses the `Jinja`_ template library to render templates. The Base Layout The ``input`` tags are using the ``required`` attribute here. This tells the browser not to submit the form until those fields are filled in. If the user is using an older browser that doesn't support that attribute, or if they are using something besides a browser to make requests, you still want to validate the data in the Flask view. It's important to always fully validate the data on the server, even if the client does some validation as well. The base template is directly in the ``templates`` directory. To keep the others organized, the templates for a blueprint will be placed in a directory with the same name as the blueprint. There are three blocks defined here that will be overridden in the other templates: This is identical to the register template except for the title and submit button. Try clicking the "Register" button without filling out the form and see that the browser shows an error message. Try removing the ``required`` attributes from the ``register.html`` template and click "Register" again. Instead of the browser showing an error, the page will reload and the error from :func:`flash` in the view will be shown. You've written the authentication views for your application, but if you're running the server and try to go to any of the URLs, you'll see a ``TemplateNotFound`` error. That's because the views are calling :func:`render_template`, but you haven't written the templates yet. The template files will be stored in the ``templates`` directory inside the ``flaskr`` package. ``flaskr/templates/auth/login.html`` ``flaskr/templates/auth/register.html`` ``flaskr/templates/base.html`` ``{% block content %}`` is where the content of each page goes, such as the login form or a blog post. ``{% block header %}`` is similar to ``title`` but will change the title displayed on the page. ``{% block title %}`` will change the title displayed in the browser's tab and window title. ``{% extends 'base.html' %}`` tells Jinja that this template should replace the blocks from the base template. All the rendered content must appear inside ``{% block %}`` tags that override blocks from the base template. 