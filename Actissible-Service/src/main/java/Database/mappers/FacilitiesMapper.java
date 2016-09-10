package Database.mappers;

import Domain.Facilities;
import org.skife.jdbi.v2.StatementContext;
import org.skife.jdbi.v2.tweak.ResultSetMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by elliotb on 10/09/2016.
 */
public class FacilitiesMapper implements ResultSetMapper<Facilities> {

    public Facilities map(int i, ResultSet rs, StatementContext statementContext) throws SQLException {

        Facilities facility = new Facilities();

        facility.setLat(rs.getDouble("Y"));
        facility.setLon(rs.getDouble("X"));
        facility.setName(rs.getString("VENUE_NAME"));
        facility.setAddressLine1(rs.getString("ADDRESS_LINE_1"));
        facility.setTown(rs.getString("POST_TOWN"));
        facility.setCounty(rs.getString("POST_CODE"));
        facility.setDistrictCounty(rs.getString("NEW_DISTRICT_COUNCIL"));
        facility.setTelephoneNumber(rs.getString("TELEPHONE"));
        facility.setOwnershipType(rs.getString("OWNERSHIP_TYPE"));
        //facility.setAdventure_sport(rs.getBoolean("ADVENTURE_SPORT"));

        return facility;
    }
}
