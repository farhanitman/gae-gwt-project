/**
 * 
 */
package com.boshanam.exceptions.runtime;

/**
 * @author Sivakumar Y, 
 * RuntimeApplicationException.java Dec 24, 2009 1:18:12 PM
 * www.ibigbang.net
 * shiva.forums@gmail.com
 */
public class RuntimeApplicationException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	public RuntimeApplicationException() {
	}

	/**
	 * @param message
	 */
	public RuntimeApplicationException(String message) {
		super(message);
	}

	/**
	 * @param cause
	 */
	public RuntimeApplicationException(Throwable cause) {
		super(cause);
	}

	/**
	 * @param message
	 * @param cause
	 */
	public RuntimeApplicationException(String message, Throwable cause) {
		super(message, cause);
	}

}
