package Resources;

import Domain.Facilities;
import Services.FacilitiesService;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * Created by elliotb on 10/09/2016.
 */
@Path("/facilities")
@Produces(MediaType.APPLICATION_JSON)
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

}
