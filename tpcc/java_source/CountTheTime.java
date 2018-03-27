

public class CountTheTime implements AutoCloseable {
	private long _start;
    private long _end;
    private String _method;
	public  CountTheTime (String method) {
		this._start = System.currentTimeMillis();
		this._method = method;
	}
	
	public void close() {
		 _end = System.currentTimeMillis();
		//System.out.println(_method + ":" + (_end-_start));
	}
	
}





