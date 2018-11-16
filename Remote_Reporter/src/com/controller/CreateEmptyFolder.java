package com.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class CreateEmptyFolder {
	
	 private static Regions region = Regions.AP_SOUTHEAST_1;

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ProfileCredentialsProvider credentialsProvider = new ProfileCredentialsProvider("default");
		AmazonS3Client amazonS3 = new AmazonS3Client(credentialsProvider);
		amazonS3.setRegion(Region.getRegion(region));
		String bucketName = "";
		String folderName = "";
		String userName = "";
		ObjectMetadata metadata = new ObjectMetadata();
	    metadata.setContentLength(0);

	    // create empty content
	    InputStream emptyContent = new ByteArrayInputStream(new byte[0]);

	    // create a PutObjectRequest passing the folder name suffixed by /
	    PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName,
	                userName + "/" + folderName , emptyContent, metadata);

	    // send request to S3 to create folder
	    amazonS3.putObject(putObjectRequest);
	}

}
