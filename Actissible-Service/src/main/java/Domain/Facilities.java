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

}
