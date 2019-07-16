package org.acme;


import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


@Path("/matchs")
public class MatchResurce {
 
    @Inject
    MatchService mService = new MatchService(); 
    
    /*
    @GET
    @Path("/{match}")
    @Produces(MediaType.TEXT_PLAIN)
    public String getMe(@PathParam("match") String name) {
        return mService.getMe(name);
    }
    */
    
    @GET
    @Path("/all")
    @Produces(MediaType.TEXT_PLAIN)
    public String getAll() {
        return mService.getAll();
    }
    
    @POST
    @Consumes("application/json")
    public void addMatch(Match m) {
        mService.addMatch(m.getName(), m.getDescription());
    }
    
    @GET
    @Produces("application/json")
    @Consumes("application/json")   
    public Response getMatchByName(Match m) {
        Match buffer = mService.getByName(m);
        
        if (buffer == null) {
            return Response.noContent().build();
        } else {
            return Response.ok(buffer).build();
        }
    }

}
