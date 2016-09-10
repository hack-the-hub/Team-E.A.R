package Services;

import Database.FacitiesDAO;
import Database.mappers.FacilitiesMapper;
import Domain.Facilities;
import Domain.queryObj;
import org.skife.jdbi.v2.Handle;
import org.skife.jdbi.v2.Query;
import org.skife.jdbi.v2.util.StringMapper;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by elliotb on 10/09/2016.
 */
public class FacilitiesService {

    private FacitiesDAO dao;
    private Handle handle;

    public FacilitiesService(FacitiesDAO dao, Handle handle){
        this.dao = dao;
        this.handle = handle;
    }

    public List<Facilities> getAll(){
        return dao.getAll();
    }

    public List<Facilities> custom(queryObj qo){

        String query = qryBuild(qo);
        List<Facilities> temp = new ArrayList<>();

        try{
            Connection connection = handle.getConnection();
            Statement st = connection.createStatement();

            System.out.println(query);
            ResultSet rs = st.executeQuery(query);
            FacilitiesMapper fm = new FacilitiesMapper();

            while (rs.next()){

                temp.add(fm.map(0, rs, null));

            }


        }catch (Exception ex){
            ex.printStackTrace();
            temp = dao.getAll();
        }

        return temp;
    }

    private static String qryBuild(queryObj q){

        String query = "SELECT * FROM facilities WHERE ";
        ArrayList<String> fields = new ArrayList<>();

        if (q.isAdventure_sport()){

            fields.add("ADVENTURE_SPORT");

        }
        if (q.isAthletics()){

            fields.add("ATHLETICS");

        }
        if (q.isBowling()){

            fields.add("BOWLING");

        }
        if (q.isBoxing()){

            fields.add("BOXING");

        }
        if (q.isCricket()){

            fields.add("CRICKET");

        }
        if (q.isFitness()){

            fields.add("FITNESS");
        }
        if (q.isGolf()){

            fields.add("GOLF");

        }
        if(q.isMotorsport()){

            fields.add("MOTORSPORT");

        }
        if (q.isMountain_biking()){

            fields.add("MOUNTAIN_BIKING");

        }
        if (q.isPitches_grass()){

            fields.add("PITCHES_GRASS");

        }
        if (q.isPitches_sand()){

            fields.add("PITCHES_SAND");

        }
        if (q.isPitches_third_gen()){

            fields.add("PITCHES_THIRD_GEN");

        }
        if (q.isPitches_water()){

            fields.add("PITCHES_WATER");

        }
        if (q.isSports_hall()){

            fields.add("SPORTS_HALL");

        }
        if (q.isSquash_handball()){

            fields.add("SQUASH_HANDBALL");

        }
        if (q.isSwimming()){

            fields.add("SWIMMING");

        }
        if (q.isWatersports()){

            fields.add("WATERSPORTS");

        }

        if (fields.size() > 0){

            query += fields.get(0) + " = \'YES\'";
            for (int i = 1; i < fields.size(); i++){

                query += " OR " + fields.get(i) + " = \'YES\'";

            }

        }else{

            query = "SELECT * FROM facilities";

        }

        return query;

    }

}
