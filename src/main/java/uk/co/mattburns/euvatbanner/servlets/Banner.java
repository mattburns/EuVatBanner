package uk.co.mattburns.euvatbanner.servlets;

import com.google.appengine.labs.repackaged.com.google.common.collect.Maps;
import com.sun.jersey.api.view.Viewable;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import java.util.Map;

@Path("/banner.js")
public class Banner {

    @GET
    @Produces("application/javascript")
    public Viewable view(@Context HttpServletRequest req) {
        Map<String, Object> it = Maps.newHashMap();
        it.put("country", req.getHeader("X-AppEngine-Country"));
        it.put("is-eu", isEU(req));
        return new Viewable("/banner", it);
    }

    public static boolean isEU(HttpServletRequest req) {
        boolean isEU = false;
        String countryCode = req.getHeader("X-AppEngine-country");
        if (countryCode == null) {
            countryCode = "GB"; // dev server
        }
        // taken from
        // https://www.gov.uk/vat-eu-country-codes-vat-numbers-and-vat-in-other-languages
        switch (countryCode) {
            case "AT":
            case "BE":
            case "BG":
            case "HR":
            case "CY":
            case "CZ":
            case "DK":
            case "EE":
            case "FI":
            case "FR":
            case "DE":
            case "EL":
            case "HU":
            case "IE":
            case "IT":
            case "LV":
            case "LT":
            case "LU":
            case "MT":
            case "NL":
            case "PL":
            case "PT":
            case "RO":
            case "SK":
            case "SI":
            case "ES":
            case "SE":
                isEU = true;
                break;
        }
        return isEU;
    }
}
