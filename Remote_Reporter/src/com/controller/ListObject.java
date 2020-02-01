package com.controller;

import java.util.List;
import java.util.ListIterator;

import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.S3ObjectSummary;

public class ListObject {

	private static String profileName = "default";
	private static Regions region = Regions.AP_SOUTHEAST_1;

	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		
		ProfileCredentialsProvider awsCredentials = new ProfileCredentialsProvider(profileName);
		AmazonS3Client amazonS3Client = new AmazonS3Client(awsCredentials);
		amazonS3Client.setRegion(Region.getRegion(region));

		ObjectListing objectListing = amazonS3Client.listObjects("s3.demo.ema", "abc/ffo");
		List<S3ObjectSummary> ls = objectListing.getObjectSummaries();

		ListIterator<S3ObjectSummary> list = ls.listIterator();

		while (list.hasNext()) {
			S3ObjectSummary s3ObjectSummary = list.next();
			System.out.println(s3ObjectSummary.getKey() + "\n");
		}
	}
}
