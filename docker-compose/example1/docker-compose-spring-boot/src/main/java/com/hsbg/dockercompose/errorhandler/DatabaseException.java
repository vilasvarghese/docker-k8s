package com.hsbg.dockercompose.errorhandler;



/**
 * Created by Lenovo on 08/10/2019.
 */
public class DatabaseException extends Exception  {
    private String code;
    private String feature;
    private String reason;

    public DatabaseException(String feature, String code, String reason) {
        super(reason);
        this.reason=reason;
        this.feature = feature;
        this.code = code;
    }

	public DatabaseException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DatabaseException(String arg0, Throwable arg1, boolean arg2, boolean arg3) {
		super(arg0, arg1, arg2, arg3);
		// TODO Auto-generated constructor stub
	}

	public DatabaseException(String arg0, Throwable arg1) {
		super(arg0, arg1);
		// TODO Auto-generated constructor stub
	}

	public DatabaseException(String arg0) {
		super(arg0);
		// TODO Auto-generated constructor stub
	}

	public DatabaseException(Throwable arg0) {
		super(arg0);
		// TODO Auto-generated constructor stub
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

    
}
