import java.net.URL;
import java.util.HashSet;
import java.util.Set;

public class CountTheTime implements AutoCloseable {
	private long start;
    private long end;
    private String method;
	public  CountTheTime (String method) {
		start = System.currentTimeMillis();
		this.method = method;
    
	}
	
	public void close() {
		end = System.currentTimeMillis();
		System.out.println(method + ":" + (end-start));
		Set<URL> sites = new HashSet<URL>();  // Noncompliant
		System.out.print(sites.toString());
		
	}
	
}





