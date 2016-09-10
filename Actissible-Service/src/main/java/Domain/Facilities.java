package Domain;

import lombok.Data;

/**
 * Created by elliotb on 10/09/2016.
 */
@Data
public class Facilities {

    private double lat;
    private double lon;
    private String name;
    private String addressLine1;
    private String town;
    private String county;
    private String postcode;
    private String districtCounty;
    private String telephoneNumber;
    private String ownershipType;
    private boolean adventure_sport;
    private boolean athletics;
    private boolean bowling;
    private boolean boxing;
    private boolean cricket;
    private boolean fitness;
    private boolean golf;
    private boolean motorsport;
    private boolean swimming;
    private boolean squash_handball;
    private boolean tennis;
    private boolean sports_hall;
    private boolean watersports;
    private boolean mountain_biking;
    private boolean pitches_grass;
    private boolean pitches_water;
    private boolean pitches_third_gen;
    private boolean pitches_sand;

}
