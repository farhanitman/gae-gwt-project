package com.boshanam.model.vos.domain.user;

import org.springframework.security.GrantedAuthority;

/**
 * @author Swetha
 *
 */
public class GrantedAuthorityImplVO implements GrantedAuthority {

    // ~ Instance fields
    // ========================================================

    private static final long serialVersionUID = 1L;

    private String role;

    // ~ Constructors
    // ============================================================

    /**
	 * 
	 */
    public GrantedAuthorityImplVO() {
	super();
    }

    /**
     * Constructor of the GrantedAuthority, it takes a String role name and
     * converts it to upper case and trims it before adding it to this object.
     * 
     * @param role
     */
    public GrantedAuthorityImplVO(String role) {
	super();
	this.role = role.trim().toUpperCase();
    }

    // ~ Methods
    // ================================================================

    public String getRole() {
	return role;
    }

    public void setRole(String role) {
	this.role = role;
    }

    /*
     * (non-Javadoc)
     * 
     * This method compares the given object with this GrantedAuthority object,
     * and returns true if the role Strings in both of them are equal (Care
     * insensitive comparison), first trim the given object role name then
     * comapres the both rolename strings with
     * this.equalsIgnoreCase(tarObjRole.trim()); so it ignores leading and
     * trailing whitespace and case of the both objects. It returns true even we
     * pass the role name as a String. i.e it takes String or GrantedAuthority
     * as the parameter and compares this GrantedAuthority with the given String
     * or GrantedAuthority objects role name.
     * 
     * @see java.lang.Object#equals(java.lang.Object)
     */
    public boolean equals(Object obj) {
	if (obj instanceof String) {
	    return ((String) obj).trim().equalsIgnoreCase(this.role);
	}

	if (obj instanceof GrantedAuthority) {
	    GrantedAuthority attr = (GrantedAuthority) obj;

	    return this.role.equalsIgnoreCase(attr.getAuthority());
	}
	return false;
    }

    public String getAuthority() {
	return this.role;
    }

    public int hashCode() {
	return this.role.hashCode();
    }

    public String toString() {
	return this.role;
    }

    @Override
    public int compareTo(Object o) {
	if (o instanceof GrantedAuthorityImplVO) {
	    GrantedAuthorityImplVO o2 = (GrantedAuthorityImplVO) o;
	    return this.role.compareTo(o2.role);
	} else {
	    return -1;
	}
    }

}