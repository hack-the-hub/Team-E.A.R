import org.eclipse.jetty.proxy.ProxyServlet;

import javax.servlet.http.HttpServletRequest;
import java.net.URI;

/**
 * Created by elliotb on 10/09/2016.
 */
public class Proxy extends ProxyServlet {

    @Override
    protected URI rewriteURI(HttpServletRequest request) {

        // Forward all requests to another port on this machine
        String uri = "http://localhost:8080";

        // Take the current path and append it to the new url
        String path = request.getRequestURI();
        path = path.substring(4);
        uri += path;

        // Add query params
        String query = request.getQueryString();
        if (query != null && query.length() > 0) {
            uri += "?" + query;
        }
        System.out.println(uri);
        return URI.create(uri).normalize();

    }
}
