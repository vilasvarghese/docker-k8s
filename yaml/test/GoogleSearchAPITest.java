import org.junit.Test;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import java.io.IOException;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class GoogleSearchAPITest {

    @Test
    public void testGoogleSearchAPI() throws IOException {
        String url = "https://www.google.com/search?q=example";

        HttpClient httpClient = HttpClients.createDefault();
        HttpGet request = new HttpGet(url);

        org.apache.http.HttpResponse response = httpClient.execute(request);

        int statusCode = response.getStatusLine().getStatusCode();
        String responseBody = EntityUtils.toString(response.getEntity());

        assertEquals(200, statusCode);
        assertTrue(responseBody.contains("example"));
    }
}