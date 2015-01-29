# EuVatBanner
Automatically adds a banner only visible to visitors from the EU

## Demo
See <a href="http://euvatbanner.appspot.com/">http://euvatbanner.appspot.com/</a> for an example


## Usage
I recommend you lazy-load the javascript asynchronously by pasting this snippet before your closing body tag:

```
    <script type="text/javascript">
    (function() {
        function async_load(){
            var s = document.createElement('script');
            s.type = 'text/javascript';
            s.async = true;
            s.src = 'http://euvatbanner.appspot.com/banner.js';
            var x = document.getElementsByTagName('script')[0];
            x.parentNode.insertBefore(s, x);
        }
        if (window.attachEvent)
            window.attachEvent('onload', async_load);
        else
            window.addEventListener('load', async_load, false);
    })();
    </script>
```

Or if you prefer simplicity, you can simply include the javascript like this:
```
<script type="text/javascript">http://euvatbanner.appspot.com/banner.js</script>
```

### Specifying countries

If you don't want to show the banner to some countries (such as GB and FR for example) then you
can pass a comma-separated list of country codes to exclude directly into the js script request:
```
http://euvatbanner.appspot.com/banner.js?excludeCountries=GB,FR
```

### Customisation

You can style the banner as it has the class 'eu-vat-banner'.

You can also build your own by accessing the data members of the injected div:

```
<div class="eu-vat-banner" data-country="GB" data-is-eu="true"></div>
```