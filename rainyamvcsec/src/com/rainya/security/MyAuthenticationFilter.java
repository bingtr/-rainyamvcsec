package com.rainya.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

public class MyAuthenticationFilter extends UsernamePasswordAuthenticationFilter{
	
	private static final String USERNAME = "username";
	private static final String PASSWORD = "password";
	
	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
			throws AuthenticationException {
		 if (!request.getMethod().equals("POST")) {
	            throw new AuthenticationServiceException("Authentication method not supported: " + request.getMethod());
	        }

	        String username = obtainUsername(request);
	        String password = obtainPassword(request);

	        username = username.trim();

	        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(username, password);

	        // Allow subclasses to set the "details" property
	        setDetails(request, authRequest);

	        return this.getAuthenticationManager().authenticate(authRequest);
	}
	@Override
	protected String obtainPassword(HttpServletRequest request) {
		String password = request.getParameter(PASSWORD);
		return password==null?"":password;
	}
	@Override
	protected String obtainUsername(HttpServletRequest request) {
		String username = request.getParameter(USERNAME);
		return username==null?"":username;
	}
	@Override
	protected void setDetails(HttpServletRequest request, UsernamePasswordAuthenticationToken authRequest) {
		// TODO Auto-generated method stub
		super.setDetails(request, authRequest);
	}
	
	
}
