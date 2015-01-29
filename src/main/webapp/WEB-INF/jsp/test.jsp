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

        <p>If you don't see a banner above then, perhaps you are not in an EU country.
        You can show it if you pass your country code in like this:
        <a href="?excludeCountries=GB,FR,DE">?excludeCountries=GB,FR,DE</a>
        <p>By <a href="http://www.mattburns.co.uk">Matt Burns</a>
    </div>

    <script type="text/javascript">
    (function() {
        function async_load(){
            var s = document.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = 'http://euvatbanner.appspot.com/banner.js?excludeCountries=${it.excludeCountries}';
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
</body>
</html>
