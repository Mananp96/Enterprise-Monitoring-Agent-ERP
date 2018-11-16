package com.controller;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class Handler implements AuthenticationSuccessHandler
{

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,HttpServletResponse response, Authentication authentication) 
			throws IOException,ServletException
	{

		
		
		
	        String targetUrl = determineTarget(authentication); 
	        redirectStrategy.sendRedirect(request, response, targetUrl);
		
	}

	private String determineTarget(Authentication authentication)
	{
		// TODO Auto-generated method stub
		 Set<String> authorities = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
	        if (authorities.contains("ROLE_ADMIN"))
	        {
	        	return "/index.do";
	        } 
	        else if (authorities.contains("ROLE_OWNER")) 
	        {
	        	return "/owner_index.do";
	        } 
	        	
		else 
		{
            throw new IllegalStateException();
        }
    }

	public RedirectStrategy getRedirectStrategy() 
	{
		return redirectStrategy;
	}

	public void setRedirectStrategy(RedirectStrategy redirectStrategy)
	{
		this.redirectStrategy = redirectStrategy;
	}
}
