package uk.co.mattburns.euvatbanner.servlets;

import com.sun.jersey.api.view.Viewable;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import java.util.HashMap;
import java.util.Map;

@Path("/")
public class Test {

    @GET
    @Produces("application/javascript")
    public Viewable view(@QueryParam("excludeCountries") String excludeCountries, @Context HttpServletRequest req) {
        Map<String, Object> it = new HashMap<>();
        it.put("excludeCountries", excludeCountries);
        return new Viewable("/test", it);
    }
}
