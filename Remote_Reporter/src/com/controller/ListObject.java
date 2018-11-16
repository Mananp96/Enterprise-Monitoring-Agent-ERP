package com.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.Collection;
import java.util.Enumeration;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpUpgradeHandler;
import javax.servlet.http.Part;

import org.springframework.http.HttpRequest;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.S3ObjectSummary;

public class ListObject {

	private static String profileName = "default";
	private static Regions region=Regions.AP_SOUTHEAST_1;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ProfileCredentialsProvider awsCredentials = new ProfileCredentialsProvider(profileName);
		AmazonS3Client amazonS3Client=new AmazonS3Client(awsCredentials);
		amazonS3Client.setRegion(Region.getRegion(region));

		ObjectListing objectListing= amazonS3Client.listObjects("s3.demo.ema","abc/ffo");
		List<S3ObjectSummary> ls = objectListing.getObjectSummaries();		
		
		ListIterator<S3ObjectSummary> list = ls.listIterator();
		
		while(list.hasNext()){
			S3ObjectSummary s3ObjectSummary=list.next();
			System.out.println(s3ObjectSummary.getKey() + "\n");
			
		}
		
	}
}
