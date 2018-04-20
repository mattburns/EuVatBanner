package uk.co.mattburns.euvatbanner.servlets;

import com.sun.jersey.api.view.Viewable;
import org.apache.commons.lang.ArrayUtils;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import java.util.HashMap;
import java.util.Map;

@Path("/banner.js")
public class Banner {

    @GET
    @Produces("application/javascript")
    public Viewable view(@QueryParam("excludeCountries") String excludeCountries, @Context HttpServletRequest req) {
        Map<String, Object> it = new HashMap<>();
        String[] excludeCountriesArray = new String[0];
        if (excludeCountries != null) {
            excludeCountriesArray = excludeCountries.split(",");
        }
        String country = getCountryCode(req);
        it.put("country", country);
        it.put("isEu", isEU(req));
        it.put("showBanner", isEU(req) && !ArrayUtils.contains(excludeCountriesArray, country));
        return new Viewable("/banner", it);
    }

    private String getCountryCode(HttpServletRequest req) {
        String countryCode = req.getHeader("X-AppEngine-country");
        if (countryCode == null) {
            countryCode = "GB"; // dev server
        }
        return countryCode;
    }

    private boolean isEU(HttpServletRequest req) {
        boolean isEU = false;
        String countryCode = getCountryCode(req);
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
            case "GB":
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
