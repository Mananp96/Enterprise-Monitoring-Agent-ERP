/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.0.27-community-nt : Database - pluto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `contactnote` */

CREATE TABLE `contactnote` (
  `contactNoteid` int(11) NOT NULL auto_increment,
  `contactNoteDesc` varchar(255) default NULL,
  `contactNoteSubject` varchar(255) default NULL,
  `ownerContactVo_contactid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  PRIMARY KEY  (`contactNoteid`),
  KEY `FK_gq7ry3rxwku39mulfwhhvbp8d` (`ownerContactVo_contactid`),
  KEY `FK_hp6f54jny6ar80ox7eysd7v0t` (`loginVo_logid`),
  CONSTRAINT `FK_gq7ry3rxwku39mulfwhhvbp8d` FOREIGN KEY (`ownerContactVo_contactid`) REFERENCES `ownercontact` (`contactid`),
  CONSTRAINT `FK_hp6f54jny6ar80ox7eysd7v0t` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contactnote` */

/*Table structure for table `country_data` */

CREATE TABLE `country_data` (
  `countryid` int(11) NOT NULL auto_increment,
  `country_code` varchar(255) default NULL,
  `country_desc` varchar(255) default NULL,
  `country_name` varchar(255) default NULL,
  PRIMARY KEY  (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `country_data` */

insert  into `country_data`(`countryid`,`country_code`,`country_desc`,`country_name`) values (1,'+91','dsjkhdsh masjkshjk','India');

/*Table structure for table `dealnote` */

CREATE TABLE `dealnote` (
  `dealNoteid` int(11) NOT NULL auto_increment,
  `dealNoteDesc` varchar(255) default NULL,
  `dealNoteSubject` varchar(255) default NULL,
  `delvo_dealid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  PRIMARY KEY  (`dealNoteid`),
  KEY `FK_i72udb7erir42nja3l8hq2to6` (`delvo_dealid`),
  KEY `FK_p1oqjb0w0vrqrw1s8w56j2fjv` (`loginVo_logid`),
  CONSTRAINT `FK_i72udb7erir42nja3l8hq2to6` FOREIGN KEY (`delvo_dealid`) REFERENCES `ownerdeal` (`dealid`),
  CONSTRAINT `FK_p1oqjb0w0vrqrw1s8w56j2fjv` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dealnote` */

/*Table structure for table `documents` */

CREATE TABLE `documents` (
  `fileid` int(11) NOT NULL auto_increment,
  `fileName` varchar(255) default NULL,
  `filePath` varchar(255) default NULL,
  `folderName` varchar(255) default NULL,
  `dealVo_dealid` int(11) default NULL,
  `taskVo_taskid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  `regvo_regid` int(11) default NULL,
  PRIMARY KEY  (`fileid`),
  KEY `FK_1cnq453jwbcxrwqjljs4bv0wg` (`dealVo_dealid`),
  KEY `FK_pdubowbljlfo84s0jlahnnro6` (`taskVo_taskid`),
  KEY `FK_ix0cjlwnvhblm9fox7fmr2l35` (`loginVo_logid`),
  KEY `FK_1uvu92d5wqo67bus6hyvhf5o6` (`regvo_regid`),
  CONSTRAINT `FK_1cnq453jwbcxrwqjljs4bv0wg` FOREIGN KEY (`dealVo_dealid`) REFERENCES `ownerdeal` (`dealid`),
  CONSTRAINT `FK_1uvu92d5wqo67bus6hyvhf5o6` FOREIGN KEY (`regvo_regid`) REFERENCES `user_register` (`regid`),
  CONSTRAINT `FK_ix0cjlwnvhblm9fox7fmr2l35` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`),
  CONSTRAINT `FK_pdubowbljlfo84s0jlahnnro6` FOREIGN KEY (`taskVo_taskid`) REFERENCES `task` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `documents` */

insert  into `documents`(`fileid`,`fileName`,`filePath`,`folderName`,`dealVo_dealid`,`taskVo_taskid`,`loginVo_logid`,`regvo_regid`) values (9,NULL,NULL,'deal',3,NULL,NULL,NULL);
insert  into `documents`(`fileid`,`fileName`,`filePath`,`folderName`,`dealVo_dealid`,`taskVo_taskid`,`loginVo_logid`,`regvo_regid`) values (10,'bedroom.jpg','F:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\Remote_Reporter\\','deal',31,NULL,NULL,NULL);

/*Table structure for table `documentstable` */

CREATE TABLE `documentstable` (
  `fileid` int(11) NOT NULL auto_increment,
  `fileName` varchar(255) default NULL,
  `filePath` varchar(255) default NULL,
  `folderName` varchar(255) default NULL,
  `dealVo_dealid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  `regvo_regid` int(11) default NULL,
  `taskVo_taskid` int(11) default NULL,
  PRIMARY KEY  (`fileid`),
  KEY `FK_rbf8usgt6r7abi2qyas90c1hq` (`dealVo_dealid`),
  KEY `FK_l7pn2t8ggycoh69t2o9k4ygpw` (`loginVo_logid`),
  KEY `FK_fbd2rqsjbsa92spfduit05d3d` (`regvo_regid`),
  KEY `FK_l0udy6hwfxiyhjlfrojpkq7v2` (`taskVo_taskid`),
  CONSTRAINT `FK_fbd2rqsjbsa92spfduit05d3d` FOREIGN KEY (`regvo_regid`) REFERENCES `user_register` (`regid`),
  CONSTRAINT `FK_l0udy6hwfxiyhjlfrojpkq7v2` FOREIGN KEY (`taskVo_taskid`) REFERENCES `ownertask` (`taskid`),
  CONSTRAINT `FK_l7pn2t8ggycoh69t2o9k4ygpw` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`),
  CONSTRAINT `FK_rbf8usgt6r7abi2qyas90c1hq` FOREIGN KEY (`dealVo_dealid`) REFERENCES `ownerdeal` (`dealid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `documentstable` */

insert  into `documentstable`(`fileid`,`fileName`,`filePath`,`folderName`,`dealVo_dealid`,`loginVo_logid`,`regvo_regid`,`taskVo_taskid`) values (1,'kitchen.jpg','F:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\Remote_Reporter\\','task',NULL,NULL,NULL,14);
insert  into `documentstable`(`fileid`,`fileName`,`filePath`,`folderName`,`dealVo_dealid`,`loginVo_logid`,`regvo_regid`,`taskVo_taskid`) values (2,'living room.jpg','F:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\Remote_Reporter\\','task',NULL,2,NULL,15);
insert  into `documentstable`(`fileid`,`fileName`,`filePath`,`folderName`,`dealVo_dealid`,`loginVo_logid`,`regvo_regid`,`taskVo_taskid`) values (3,'living room6.jpg','F:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp8\\wtpwebapps\\Remote_Reporter\\','task',NULL,2,NULL,16);

/*Table structure for table `login` */

CREATE TABLE `login` (
  `logid` int(11) NOT NULL auto_increment,
  `enabled` int(11) default NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`logid`,`enabled`,`password`,`role`,`username`) values (1,1,'10196','ROLE_OWNER','manan007');
insert  into `login`(`logid`,`enabled`,`password`,`role`,`username`) values (2,1,'389','ROLE_OWNER','khyati389');
insert  into `login`(`logid`,`enabled`,`password`,`role`,`username`) values (3,1,'sdmsghj','ROLE_OWNER','hjdsfhjds');
insert  into `login`(`logid`,`enabled`,`password`,`role`,`username`) values (4,0,'manan',NULL,NULL);

/*Table structure for table `ownercompany` */

CREATE TABLE `ownercompany` (
  `companyid` int(11) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `companyDate` datetime default NULL,
  `company_name` varchar(255) default NULL,
  `company_url` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `country_vo_countryid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  PRIMARY KEY  (`companyid`),
  KEY `FK_aiskh4mbxyoq5fd83a28olxfp` (`country_vo_countryid`),
  KEY `FK_cxam62p0nx4te2jjee1nca7aw` (`loginVo_logid`),
  CONSTRAINT `FK_aiskh4mbxyoq5fd83a28olxfp` FOREIGN KEY (`country_vo_countryid`) REFERENCES `country_data` (`countryid`),
  CONSTRAINT `FK_cxam62p0nx4te2jjee1nca7aw` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownercompany` */

insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (1,'halifax',NULL,'Dalhousie','www.dalhousieuniversity.com','helwood@daluni.com','DR. malcolm','Heywood','789562530','sdjhd',NULL,2);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (2,'20,umiyadham society,near navyug school,naroda',NULL,'Apple','www.apple.com','manan00740@gmail.com','Manan','Prajapati','9601440488','',1,2);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (7,'xvcjsxb',NULL,'Microsoft','www.microsoft.com','microsoft@gmail.com','Khyati','chudhary','46654','',1,NULL);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (8,'',NULL,'sddsf','dvsdfsd','ddsfds','dsfdsf','vdssdf','323','',1,2);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (10,'california',NULL,'Microsoft','www.microsoft.com','microsoft@gmail.com','Adom','smith','998587542','',1,2);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (11,'S G highway',NULL,'Agile','www.agilecrm.com','agile@gmail.com','Kal','jacob','+919886533213','',1,2);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (13,NULL,NULL,'Microsoft',NULL,NULL,NULL,NULL,'895512458',NULL,1,2);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (14,NULL,NULL,'Dalhousie',NULL,NULL,NULL,NULL,'676465465',NULL,1,2);
insert  into `ownercompany`(`companyid`,`address`,`companyDate`,`company_name`,`company_url`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`loginVo_logid`) values (15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `ownercontact` */

CREATE TABLE `ownercontact` (
  `contactid` int(11) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `contactDate` datetime default NULL,
  `email` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `country_vo_countryid` int(11) default NULL,
  `ownerCompanyVo_companyid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  PRIMARY KEY  (`contactid`),
  KEY `FK_oy7r3otmtegmult7n2v7prjvt` (`country_vo_countryid`),
  KEY `FK_6i17hbfivbgy4237i8yb7n92b` (`ownerCompanyVo_companyid`),
  KEY `FK_lllld146ke4bk4mxe3x76mkcs` (`loginVo_logid`),
  CONSTRAINT `FK_6i17hbfivbgy4237i8yb7n92b` FOREIGN KEY (`ownerCompanyVo_companyid`) REFERENCES `ownercompany` (`companyid`),
  CONSTRAINT `FK_lllld146ke4bk4mxe3x76mkcs` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`),
  CONSTRAINT `FK_oy7r3otmtegmult7n2v7prjvt` FOREIGN KEY (`country_vo_countryid`) REFERENCES `country_data` (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownercontact` */

insert  into `ownercontact`(`contactid`,`address`,`contactDate`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`ownerCompanyVo_companyid`,`loginVo_logid`) values (3,'',NULL,'helwood@daluni.com','Khyati','Chaudhary','6456+','',1,1,2);
insert  into `ownercontact`(`contactid`,`address`,`contactDate`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`ownerCompanyVo_companyid`,`loginVo_logid`) values (6,'20,umiyadham society,near navyug school,naroda',NULL,'manan96.mb@gmail.com','Manan','Prajapati','9601440488','CEO',1,2,NULL);
insert  into `ownercontact`(`contactid`,`address`,`contactDate`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`ownerCompanyVo_companyid`,`loginVo_logid`) values (7,'california',NULL,'adom@gmail.com','Adom','smith','9601440488','',1,2,NULL);
insert  into `ownercontact`(`contactid`,`address`,`contactDate`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`ownerCompanyVo_companyid`,`loginVo_logid`) values (16,'odhav,Ahmedabad',NULL,'anuj@gmail.com','anuj ','Prajapati','8946565468','manager',1,14,2);
insert  into `ownercontact`(`contactid`,`address`,`contactDate`,`email`,`first_name`,`last_name`,`phone`,`tags`,`country_vo_countryid`,`ownerCompanyVo_companyid`,`loginVo_logid`) values (17,'39,Shriji Bunglows,Naroda',NULL,'khyatikhyati389@gmail.com','Khyati','Chaudhary','9662752729','dsmgh',1,15,2);

/*Table structure for table `ownerdeal` */

CREATE TABLE `ownerdeal` (
  `dealid` int(11) NOT NULL auto_increment,
  `closeDate` datetime default NULL,
  `dealDate` datetime default NULL,
  `dealDesc` varchar(255) default NULL,
  `dealName` varchar(255) default NULL,
  `dealValue` varchar(255) default NULL,
  `milestone` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `ownerCompanyVo_companyid` int(11) default NULL,
  `ownerContactVo_contactid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  PRIMARY KEY  (`dealid`),
  KEY `FK_oubjdthut36qixfirb7guuhm3` (`ownerCompanyVo_companyid`),
  KEY `FK_nrnieg46up010xr0uqc6g20td` (`ownerContactVo_contactid`),
  KEY `FK_a7fhi82ushaxl95072mttg7qv` (`loginVo_logid`),
  CONSTRAINT `FK_a7fhi82ushaxl95072mttg7qv` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`),
  CONSTRAINT `FK_nrnieg46up010xr0uqc6g20td` FOREIGN KEY (`ownerContactVo_contactid`) REFERENCES `ownercontact` (`contactid`),
  CONSTRAINT `FK_oubjdthut36qixfirb7guuhm3` FOREIGN KEY (`ownerCompanyVo_companyid`) REFERENCES `ownercompany` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownerdeal` */

insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (3,'2081-08-11 00:00:00','2017-04-05 17:35:17','sbc ass ssw qwj wkw ddsd,asdj ewd jasdhas mnasn isds kajd das,,mnasdd dksjsk as.','software','$50,000','Proposal','CEO,manager',1,3,NULL);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (10,'2061-08-01 00:00:00','2017-02-08 19:03:51','kjn vkcn kd vdskvsdj dsknjsd sdsdjsi  nfbjib  nsnnjisfji','Nike Endorsement2','$25000','won','',2,6,NULL);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (13,'2017-02-09 00:00:00','2017-05-05 15:02:00','sc,hsd ckjsbcksn dcsmcbsmnc mndbjsn','man software','25000','New','sdfh',1,6,NULL);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (14,'2017-01-12 00:00:00','2017-03-04 15:02:44','dmgewhdb','AWS Software','205555','Prospect','d&#7717;d',2,6,NULL);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (15,'2017-02-10 00:00:00','2017-09-01 15:03:21','asdhjd wdkbmx ,h wqbdqhw qbdhqjd sbdk','Dell','24666','won','sdjg',1,3,NULL);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (19,'2017-02-05 00:00:00','2017-01-01 15:08:36','','java','$50,000','Prospect','zxcxc',1,3,NULL);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (22,'2081-08-11 00:00:00','2017-04-10 16:50:26','','Nike Endorsement1','$50,000','New','Important',2,16,2);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (24,'2017-02-05 00:00:00','2017-04-05 12:32:45','hgfyudc hgdrdrduyvuifytfyuguhjkhh','manan home','$25000','Proposal','hgjhg',1,16,2);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (25,'2017-03-08 00:00:00','2017-04-07 12:33:19','','software','$2000','won','ghhgvh',10,16,2);
insert  into `ownerdeal`(`dealid`,`closeDate`,`dealDate`,`dealDesc`,`dealName`,`dealValue`,`milestone`,`tags`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (31,'2018-08-05 00:00:00',NULL,'','Donuts','$25000','Prospect','',1,3,2);

/*Table structure for table `ownertask` */

CREATE TABLE `ownertask` (
  `taskid` int(11) NOT NULL auto_increment,
  `Category` varchar(255) default NULL,
  `closeDate` datetime default NULL,
  `milestone` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `taskDate` datetime default NULL,
  `taskDesc` varchar(255) default NULL,
  `TaskName` varchar(255) default NULL,
  `taskPriority` varchar(255) default NULL,
  `taskStatus` varchar(255) default NULL,
  `taskTime` varchar(255) default NULL,
  `ownerCompanyVo_companyid` int(11) default NULL,
  `ownerContactVo_contactid` int(11) default NULL,
  `loginVo_logid` int(11) default NULL,
  PRIMARY KEY  (`taskid`),
  KEY `FK_riyk5lacsjuc5bsxki9y0m2qs` (`ownerCompanyVo_companyid`),
  KEY `FK_eopyu7w4ysg7f2ako7m1pdpu3` (`ownerContactVo_contactid`),
  KEY `FK_efd5m2ubcsl87q7wl5m58lfyc` (`loginVo_logid`),
  CONSTRAINT `FK_efd5m2ubcsl87q7wl5m58lfyc` FOREIGN KEY (`loginVo_logid`) REFERENCES `login` (`logid`),
  CONSTRAINT `FK_eopyu7w4ysg7f2ako7m1pdpu3` FOREIGN KEY (`ownerContactVo_contactid`) REFERENCES `ownercontact` (`contactid`),
  CONSTRAINT `FK_riyk5lacsjuc5bsxki9y0m2qs` FOREIGN KEY (`ownerCompanyVo_companyid`) REFERENCES `ownercompany` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownertask` */

insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (1,'Call','2018-08-05 00:00:00','Overdue','','2017-04-03 17:14:24','','Deal','Low','New','',1,6,1);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (2,'Followup','2019-01-04 00:00:00','Today','','2017-04-03 17:14:57','','Cloud Learning','Low','In-Progress','',1,6,1);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (3,'Meeting','2019-04-04 00:00:00','Tomorrow','','2017-04-03 17:15:35','','Send Project','Low','New','',1,6,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (4,'Email','2018-08-05 00:00:00','Overdue','','2017-04-03 17:16:02','','Delete Contacts','Low','New','',1,3,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (6,'Call',NULL,'Today',NULL,NULL,NULL,'Deal of softcare',NULL,NULL,NULL,2,6,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (10,'Followup','2018-08-05 00:00:00','Later','Important','2017-04-10 17:16:43','','Cloud Learning','Low','Closed','20:02',2,3,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (11,'Followup','2018-08-05 00:00:00','Later','Important','2017-04-10 17:29:01','','Cloud Learning','Low','Closed','20:02',2,3,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (12,'Followup','2018-08-03 00:00:00','Today','',NULL,'','Deal','Low','In-Progress','',1,3,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (13,'Call','2019-06-12 00:00:00','Overdue','','2017-04-10 18:06:11','','Complete Project1','Low','In-Progress','20:02',1,16,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (14,'Call','2019-01-02 00:00:00','Tomorrow','','2017-04-10 18:19:33','','Send Project repo','Low','In-Progress','20:02',2,3,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (15,'Call','2019-01-07 00:00:00','Today','sdsfsdfd','2017-04-10 18:27:24','dsfhdskjadlka','manan','Low','New','21:00',2,17,2);
insert  into `ownertask`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`,`loginVo_logid`) values (16,'Call','2019-01-03 00:00:00','Overdue','','2017-04-10 18:30:09','','Complete Project1','Low','Completed','15:00',1,16,2);

/*Table structure for table `task` */

CREATE TABLE `task` (
  `taskid` int(11) NOT NULL auto_increment,
  `Category` varchar(255) default NULL,
  `closeDate` datetime default NULL,
  `milestone` varchar(255) default NULL,
  `tags` varchar(255) default NULL,
  `taskDate` datetime default NULL,
  `taskDesc` varchar(255) default NULL,
  `TaskName` varchar(255) default NULL,
  `taskPriority` varchar(255) default NULL,
  `taskStatus` varchar(255) default NULL,
  `taskTime` varchar(255) default NULL,
  `ownerCompanyVo_companyid` int(11) default NULL,
  `ownerContactVo_contactid` int(11) default NULL,
  PRIMARY KEY  (`taskid`),
  KEY `FK_tmwu1175jhk2hb6ygbh2kefio` (`ownerCompanyVo_companyid`),
  KEY `FK_5sx6axnr9pm747u7np0aabpg3` (`ownerContactVo_contactid`),
  CONSTRAINT `FK_5sx6axnr9pm747u7np0aabpg3` FOREIGN KEY (`ownerContactVo_contactid`) REFERENCES `ownercontact` (`contactid`),
  CONSTRAINT `FK_tmwu1175jhk2hb6ygbh2kefio` FOREIGN KEY (`ownerCompanyVo_companyid`) REFERENCES `ownercompany` (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `task` */

insert  into `task`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`) values (3,'Email','2019-07-03 00:00:00','Today','',NULL,'','Send an Email','Low','In-Progress','05:00 PM',1,NULL);
insert  into `task`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`) values (4,'Email',NULL,'Overdue','',NULL,'ghfhgfjjh jhgghjg','Send Project rep','Medium','Completed','02:00 PM',1,NULL);
insert  into `task`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`) values (5,'Meeting','2018-11-04 00:00:00','Tomorrow','',NULL,'bhf kkgjhgn jjh','Cloud Learning','Low','Completed','02:00 PM',1,NULL);
insert  into `task`(`taskid`,`Category`,`closeDate`,`milestone`,`tags`,`taskDate`,`taskDesc`,`TaskName`,`taskPriority`,`taskStatus`,`taskTime`,`ownerCompanyVo_companyid`,`ownerContactVo_contactid`) values (6,'Milestone','2019-01-03 00:00:00','Later','',NULL,'','Delete Contacts','Low','New','',1,NULL);

/*Table structure for table `user_register` */

CREATE TABLE `user_register` (
  `regid` int(11) NOT NULL auto_increment,
  `company_name` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `lvo_logid` int(11) default NULL,
  PRIMARY KEY  (`regid`),
  KEY `FK_4cvdb7bo0ymd0vccytrra1y76` (`lvo_logid`),
  CONSTRAINT `FK_4cvdb7bo0ymd0vccytrra1y76` FOREIGN KEY (`lvo_logid`) REFERENCES `login` (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_register` */

insert  into `user_register`(`regid`,`company_name`,`first_name`,`last_name`,`lvo_logid`) values (1,'EMA','Manan','Prajapati',1);
insert  into `user_register`(`regid`,`company_name`,`first_name`,`last_name`,`lvo_logid`) values (2,'Apple','Khyati','Chaudhary',2);
insert  into `user_register`(`regid`,`company_name`,`first_name`,`last_name`,`lvo_logid`) values (3,'sdjhasgj','Manan ','Prajapati',3);
insert  into `user_register`(`regid`,`company_name`,`first_name`,`last_name`,`lvo_logid`) values (4,'Apple','Manan ','Prajapati',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
