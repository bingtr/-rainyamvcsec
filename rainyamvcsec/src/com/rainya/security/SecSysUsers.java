package com.rainya.security;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import com.rainya.po.SecSysUsersRoles;

public class SecSysUsers implements UserDetails, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8144223374479322800L;

	private String userId;  
    private String username;  
    private String name;  
    private String password;  
    private Date dtCreate;  
    private Date lastLogin;  
    private Date deadline;  
    private String loginIp;  
    private String VQzjgid;  
    private String VQzjgmc;  
    private String depId;  
    private String depName;  
    private boolean enabled;  
    private boolean accountNonExpired;  
    private boolean accountNonLocked;  
    private boolean credentialsNonExpired;
    
    private Set<SecSysUsersRoles> sysUsersRoleses = new HashSet<SecSysUsersRoles>(0);
    
    private Collection<GrantedAuthority>  authorities;
    
    public String getCurrentUsername() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			
		}
		return null;
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUsername() {
		return null;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

}
