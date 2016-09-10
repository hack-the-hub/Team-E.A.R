import io.dropwizard.Application;
import io.dropwizard.jersey.setup.JerseyEnvironment;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

/**
 * Created by elliotb on 10/09/2016.
 */
public class Actissible_Service extends Application<Config> {

    public static void main(String[] args) throws Exception {

        new Actissible_Service().run(args);

    }

    @Override
    public void initialize(Bootstrap<Config> bootstrap) {
        super.initialize(bootstrap);
    }

    @Override
    public void run(String... arguments) throws Exception {

        arguments = new String[2];

        arguments[0] = "server";
        arguments[1] = "src/config.yml";

        super.run(arguments);
    }

    @Override
    public void run(Config config, Environment environment) throws Exception {

        JerseyEnvironment jerseyEnvironment = environment.jersey();

    }
}
