package uk.co.mattburns.euvatbanner.servlets;

import com.google.appengine.labs.repackaged.com.google.common.collect.Maps;
import com.sun.jersey.api.view.Viewable;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import java.util.Map;

@Path("/")
public class Test {

    @GET
    @Produces("application/javascript")
    public Viewable view(@Context HttpServletRequest req) {
        Map<String, Object> it = Maps.newHashMap();
        return new Viewable("/test", it);
    }
}
