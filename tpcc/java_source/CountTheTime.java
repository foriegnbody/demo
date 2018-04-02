import java.net.URL;
import java.util.HashSet;
import java.util.Set;

public class CountTheTime implements AutoCloseable {
	private long _start;
    private long _end;
    private String _method;
	public  CountTheTime (String method) {
		_start = System.currentTimeMillis();
		this._method = method;
    
	}
	
	public void close() {
		_end = System.currentTimeMillis();
		System.out.println(_method + ":" + (_end-_start));
		Set<URL> sites = new HashSet<URL>();  // Noncompliant
		System.out.print(sites.toString());
		
	}
	
}





