package Resources;

import Domain.Facilities;
import Domain.queryObj;
import Services.FacilitiesService;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * Created by elliotb on 10/09/2016.
 */
@Path("/facilities")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class FacilitiesResource {

    private FacilitiesService service;

    public FacilitiesResource(FacilitiesService service){
        this.service = service;
    }

    @GET
    @Path("/")
    public List<Facilities> getAll(){
        return service.getAll();
    }

    @POST
    @Path("/query")
    public List<Facilities> customQuery(queryObj query){
        return service.custom(query);
    }

}
