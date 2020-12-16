package com.hsbg.dockercompose.errorhandler;


/**
 * The {@code ErrorResponse} class represents response for any Exception.
 * <p>
 * Feature identifies which feature Exception Occured.
   Code uniquely defined exception
 * <p>
 * @author Vilas Varghese
 * @since  06/10/2019.
 */
public class ErrorResponse {
    String feature;
    String code;
    String message;
	public ErrorResponse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
    
    
}
