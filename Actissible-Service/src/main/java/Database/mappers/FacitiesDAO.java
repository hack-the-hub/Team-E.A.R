package Database.mappers;

import Domain.Facilities;
import org.skife.jdbi.v2.sqlobject.SqlQuery;
import org.skife.jdbi.v2.sqlobject.customizers.RegisterMapper;

import java.util.List;

/**
 * Created by elliotb on 10/09/2016.
 */
public interface FacitiesDAO {

    @RegisterMapper(FacilitiesMapper.class)
    @SqlQuery("SELECT * FROM facilities")
    public List<Facilities> getAll();

}
