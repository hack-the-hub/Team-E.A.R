import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

/**
 * Created by elliotb on 10/09/2016.
 */
public class Webapp {

    public static void main(String[] args) throws Exception {

        Server server = new Server(9000);
        WebAppContext root = new WebAppContext();

        root.setContextPath("/");
        root.setDescriptor("src/main/webapp/WEB-INF/web.xml");
        root.setResourceBase("src/main/webapp");

        root.setParentLoaderPriority(true);

        server.setHandler(root);

        server.start();
        server.join();

    }

}
