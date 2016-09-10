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
        facility.setCounty(rs.getString("COUNTY"));
        facility.setPostcode(rs.getString("POST_CODE"));
        facility.setDistrictCounty(rs.getString("NEW_DISTRICT_COUNCIL"));
        facility.setTelephoneNumber(rs.getString("TELEPHONE"));
        facility.setOwnershipType(rs.getString("OWNERSHIP_TYPE"));
        facility.setAdventure_sport(ynToBool(rs.getString("ADVENTURE_SPORT")));
        facility.setAthletics(ynToBool(rs.getString("ATHLETICS")));
        facility.setBowling(ynToBool(rs.getString("BOWLING")));
        facility.setBoxing(ynToBool(rs.getString("BOXING")));
        facility.setCricket(ynToBool(rs.getString("CRICKET")));
        facility.setFitness(ynToBool(rs.getString("FITNESS")));
        facility.setGolf(ynToBool(rs.getString("GOLF")));
        facility.setMotorsport(ynToBool(rs.getString("MOTORSPORT")));
        facility.setSwimming(ynToBool(rs.getString("SWIMMING")));
        facility.setSquash_handball(ynToBool(rs.getString("SQUASH_HANDBALL")));
        facility.setTennis(ynToBool(rs.getString("TENNIS")));
        facility.setSports_hall(ynToBool(rs.getString("SPORTS_HALL")));
        facility.setWatersports(ynToBool(rs.getString("WATERSPORTS")));
        facility.setMountain_biking(ynToBool(rs.getString("MOUNTAIN_BIKING")));
        facility.setPitches_grass(ynToBool(rs.getString("PITCHES_GRASS")));
        facility.setPitches_water(ynToBool(rs.getString("PITCHES_WATER")));
        facility.setPitches_third_gen(ynToBool(rs.getString("PITCHES_THIRD_GEN")));
        facility.setPitches_sand(ynToBool(rs.getString("PITCHES_SAND")));

        return facility;
    }

    //returns true of false if string is yes or no
    public static boolean ynToBool(String yn){
        if (yn.equalsIgnoreCase("yes")){
            return true;
        }else {
            return false;
        }
    }
}
