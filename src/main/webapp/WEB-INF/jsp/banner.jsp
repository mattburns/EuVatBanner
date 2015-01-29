<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ page contentType="application/javascript;charset=UTF-8" language="java"%>

var theBanner = document.createElement("div");

if(${it.showBanner}) {
    theBanner.style["background-color"] = "#FDF434";
    theBanner.style["padding"] = "10px";
    theBanner.style["font-family"] = "sans-serif";


    theBanner.innerHTML = "Thanks to the new <a href='https://mobile.twitter.com/search?q=%23euvat'>#EUVAT</a> rules, it is no longer viable for us to continue selling in your country (${it.country}). Please visit <a href='http://euvataction.org/'>euvataction.org</a> for more info.";

}

theBanner.className = "eu-vat-banner";
theBanner.setAttribute('data-country', '${it.country}');
theBanner.setAttribute('data-is-eu', '${it.isEu}');

// prepend theBanner to the body
document.body.insertBefore(theBanner, document.body.firstChild);
