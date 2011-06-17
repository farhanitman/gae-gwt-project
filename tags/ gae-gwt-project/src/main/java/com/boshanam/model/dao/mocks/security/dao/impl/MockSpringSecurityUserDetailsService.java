package com.boshanam.model.dao.mocks.security.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.security.GrantedAuthority;
import org.springframework.security.userdetails.UserDetails;
import org.springframework.security.userdetails.UserDetailsService;
import org.springframework.security.userdetails.UsernameNotFoundException;

import com.boshanam.model.vos.domain.user.GrantedAuthorityImplVO;

/**
 * @author Swetha
 * 
 */
public class MockSpringSecurityUserDetailsService implements UserDetailsService {

    private static Log log = LogFactory.getLog(MockSpringSecurityUserDetailsService.class);
    
    public MockSpringSecurityUserDetailsService() {
    }

    /*
     * (non-Javadoc)
     * 
     * @seeorg.springframework.security.userdetails.UserDetailsService#
     * loadUserByUsername(java.lang.String)
     */
    @Override
    public UserDetails loadUserByUsername(String usename)
	    throws UsernameNotFoundException, DataAccessException {
	log.warn("This is mock user service, consider using real implementation...");
	if ("siva".equalsIgnoreCase(usename)) {
	    return createUser("siva", "sairam", new String[] { "ROLE_USER",
		    "ROLE_ADMIN" });

	} else if ("santhi".equalsIgnoreCase(usename)) {
	    return createUser("santhi", "sairam", new String[] { "ROLE_USER" });
	} else if ("sai".equalsIgnoreCase(usename)) {
	    return createUser("sai", "sairam", new String[] { "ROLE_USER" });
	}
	throw new UsernameNotFoundException("Invalid username");
    }

    private UserDetails createUser(final String username, final String pwd,
	    final String[] authorities) {
	return new UserDetails() {

	    private static final long serialVersionUID = 42842969858417228L;

	    @Override
	    public boolean isEnabled() {
		return true;
	    }

	    @Override
	    public boolean isCredentialsNonExpired() {
		return true;
	    }

	    @Override
	    public boolean isAccountNonLocked() {
		return true;
	    }

	    @Override
	    public boolean isAccountNonExpired() {
		return true;
	    }

	    @Override
	    public String getUsername() {
		return username;
	    }

	    @Override
	    public String getPassword() {
		return pwd;
	    }

	    @Override
	    public GrantedAuthority[] getAuthorities() {
		return createGrantedAuthorities(authorities);
	    }

	    private GrantedAuthority[] createGrantedAuthorities(
		    String[] authorities) {
		List<GrantedAuthority> gas = new ArrayList<GrantedAuthority>();
		for (String s : authorities) {
		    gas.add(new GrantedAuthorityImplVO(s));
		}
		GrantedAuthority[] gaArray = new GrantedAuthority[gas.size()];
		return (GrantedAuthority[]) gas.toArray(gaArray);
	    }
	};
    }

}
