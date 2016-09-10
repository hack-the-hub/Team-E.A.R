package Services;

import Database.mappers.FacitiesDAO;
import Domain.Facilities;

import java.util.List;

/**
 * Created by elliotb on 10/09/2016.
 */
public class FacilitiesService {

    private FacitiesDAO dao;

    public FacilitiesService(FacitiesDAO dao){
        this.dao = dao;
    }

    public List<Facilities> getAll(){
        return dao.getAll();
    }

}
