<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>

<body>

    <div class="container">
        <h1>
            Test
        </h1>
        <p>This is just an example website to demonstrate the <a href='https://github.com/mattburns/EuVatBanner'>EuVatBanner</a></p>

        <p>If you don’t see a banner above then, perhaps you are not in an EU country?</p>

        <p>If you want to hide the banner for some EU countries, just pass a comma-separated list:
        <a href="?excludeCountries=GB,FR,DE">?excludeCountries=GB,FR,DE</a>
        <p>By <a href="http://www.mattburns.co.uk">Matt Burns</a>
    </div>

    <script type="text/javascript">
    (function() {
        function async_load(){
            var s = document.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = '//euvatbanner.appspot.com/banner.js?excludeCountries=${it.excludeCountries}';
            // s.src = 'http://localhost:8888/banner.js?excludeCountries=${it.excludeCountries}';
            var x = document.getElementsByTagName('script')[0];
            x.parentNode.insertBefore(s, x);
        }
        if (window.attachEvent)
            window.attachEvent('onload', async_load);
        else
            window.addEventListener('load', async_load, false);
    })();
    </script>

    <script>
      // Google Analytics
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-59187396-1', 'auto');
      ga('send', 'pageview');

    </script>
</body>
</html>
