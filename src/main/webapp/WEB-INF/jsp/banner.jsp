<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ page contentType="application/javascript;charset=UTF-8" language="java"%>

if(${it.is-eu}) {
    theBanner = document.createElement("div");
    theBanner.style["background-color"] = "#FDF434";
    theBanner.style["padding"] = "10px";
    theBanner.style["font-family"] = "sans-serif";
    theBanner.className = "eu-vat-banner";

    theBanner.innerHTML = "Thanks to the new <a href='https://mobile.twitter.com/search?q=%23euvat'>#EUVAT</a> rules, it is no longer viable for us to continue selling in your country (${it.country}). Please visit <a href='http://euvataction.org/'>euvataction.org</a> for more info.";

    // prepend theBanner to the body
    document.body.insertBefore(theBanner, document.body.firstChild);
}