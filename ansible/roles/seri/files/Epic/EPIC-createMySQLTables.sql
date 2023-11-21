drop database epic;
create database epic;
create user if not exists 'epic' identified by 'epic';
grant all on epic.* to 'epic';

use epic;
CREATE TABLE UserTable (
  UserID int not null auto_increment,
  Name varchar(255),
  SystemLoginID int,
  UserAlias varchar(255),
  StartDate date,
  IsPasswordChangeRequired int DEFAULT 0,
  BlockStatus varchar(255),
  EndDate date,
  DefaultLoginDepartmentID varchar(255),
  AuthenticationConfigurationID varchar(255),
  LinkedProviderID varchar(255),
  Primary Key (UserID)
);
INSERT INTO UserTable (Name,SystemLoginID,UserAlias,StartDate,IsPasswordChangeRequired,BlockStatus,EndDate,DefaultLoginDepartmentID,AuthenticationConfigurationID,LinkedProviderID) values ('Jordan.Sullivan',1,'Jordan.Sullivan',DATE'2014-01-01',0,'Active',DATE'2014-12-31','Nursing','','');
INSERT INTO UserTable (Name,SystemLoginID,UserAlias,StartDate,IsPasswordChangeRequired,BlockStatus,EndDate,DefaultLoginDepartmentID,AuthenticationConfigurationID,LinkedProviderID) values ('Elliot.Reid',2,'Elliot.Reid',DATE'2014-01-01',0,'Active',DATE'2014-12-31','Doctors','','');
INSERT INTO UserTable (Name,SystemLoginID,UserAlias,StartDate,IsPasswordChangeRequired,BlockStatus,EndDate,DefaultLoginDepartmentID,AuthenticationConfigurationID,LinkedProviderID) values ('Christopher.Turk',3,'Christopher.Turk',DATE'2014-01-01',0,'Active',DATE'2014-12-31','Doctors','','');
INSERT INTO UserTable (Name,SystemLoginID,UserAlias,StartDate,IsPasswordChangeRequired,BlockStatus,EndDate,DefaultLoginDepartmentID,AuthenticationConfigurationID,LinkedProviderID) values ('Carla.Espinosa',4,'Carla.Espinosa',DATE'2014-01-01',0,'Active',DATE'2014-12-31','Doctors','','');

CREATE TABLE UserLinkedSubtemplateLink (
  UserID int,
  LinkedSubtemplateIDs varchar(255)
);
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) values ("1","HHC HB RWB FINANCIAL ACCESS - READ ONLY");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) values ("1","HHC ER BKR RAD RT");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) values ("2","HHC HB RWB FINANCIAL ACCESS - READ ONLY");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) values ("3","HHC HB RWB FINANCIAL ACCESS - READ ONLY");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("2","RESEARCH PROVIDER");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("2","CADENCE REFERRAL");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("2","RESOLUTE PB IMG CODING SPECIALIST II");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("2","RX DECISION SUPPORT");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("2","PRINTING LEAD");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("2","ROI ADMIN W QUICK DISCLOSURE");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("2","OBSTETRICS MD");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("3","ALLOW RESTRICTED PATIENT ACCESS");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("3","ALLOW RESTRICTED PATIENT ACCESS");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("3","DATA COURIER MOVER");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("3","MU CPOE USER");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("3","CUPID INVASIVE CARDIOLOGIST");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("3","TABLET COCHLEAR IMPLANT");
INSERT INTO epic.UserLinkedSubtemplateLink (UserID,LinkedSubtemplateIDs) VALUES ("3","BEACON PHARMACIST");


CREATE TABLE LinkedSubtemplateTable (
  LinkedSubtemplateIDs varchar(255) NOT NULL
);
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("HHC HB RWB FINANCIAL ACCESS - READ ONLY");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("HHC ER BKR RAD RT");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("RESEARCH PROVIDER");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("CADENCE REFERRAL");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("RESOLUTE PB IMG CODING SPECIALIST II");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("RX DECISION SUPPORT");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("PRINTING LEAD");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("ROI ADMIN W QUICK DISCLOSURE");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("OBSTETRICS MD");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("EPIC_NATIVE_AUTH");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("ALLOW RESTRICTED PATIENT ACCESS ");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("DATA COURIER MOVER");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("MU CPOE USER");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("CUPID INVASIVE CARDIOLOGIST");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("TABLET COCHLEAR IMPLANT");
INSERT INTO epic.LinkedSubtemplateTable (LinkedSubTemplateIDs) VALUES ("BEACON PHARMACIST");


CREATE TABLE UserLinkedTemplateLink (
  UserID int,
  LinkedTemplateID varchar(255)
);
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) values ("1","HHC ER RESP LINK");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) values ("2","HHC ER RESP LINK");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) values ("3","HHC ER RESP LINK");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","HOME HEALTH ADMINISTRATOR");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","EMERGENCY ADMINISTRATOR");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","EXECUTIVE");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","CADENCE ADMINISTRATOR");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","CADENCE ADT ACCESS ADMINISTRATOR");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","HB ADMINISTRATOR");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","SBO ADMINISTRATOR");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","NURSE PRACTITIONER");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","NURSE PRACTITIONER");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","SBO BILLING OFFICE MANAGEMENT");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","ANCILLARY USER");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","THERAPY ASSISTANT");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","SBO BILLING OFFICE NON-MANAGEMENT");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","ADT ADMIT SUPERVISOR");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","OUTPATIENT SOCIAL WORKER");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","CADENCE FRONT DESK");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("2","ANESTHESIA RESIDENT");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("3","ANESTHESIA RESIDENT");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("4","ANESTHESIA RESIDENT");
INSERT INTO epic.UserLinkedTemplateLink (UserID,LinkedTemplateID) VALUES ("4","CLINIC NURSE");
CREATE TABLE LinkedTemplateTable (
  LinkedTemplateID varchar(255) NOT NULL
);
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("HHC ER RESP LINK");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("HOME HEALTH ADMINISTRATOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("EMERGENCY ADMINISTRATOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("EXECUTIVE");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("CADENCE ADMINISTRATOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("CADENCE ADT ACCESS ADMINISTRATOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("HB ADMINISTRATOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("SBO ADMINISTRATOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("NURSE PRACTITIONER");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("SBO BILLING OFFICE MANAGEMENT");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("ANCILLARY USER");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("THERAPY ASSISTANT");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("ABSTRACTOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("SBO BILLING OFFICE NON-MANAGEMENT");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("ADT ADMIT SUPERVISOR");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("OUTPATIENT SOCIAL WORKER");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("CADENCE FRONT DESK");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("ANESTHESIA RESIDENT");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("CLINIC NURSE");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("CARE MANAGER NURSE");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("NURSE MANAGER TRANSPLANT");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("ANESTHESIA NURSE PRACTITIONER");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("AFFILIATE NURSE");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("INPATIENT NURSE");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("CALL CENTER NURSE SUPERUSER");
INSERT INTO epic.LinkedTemplateTable (LinkedTemplateID) VALUES ("CC NURSE");


CREATE TABLE UserRolesLink (
  UserID int,
  UserRoles varchar(255)
);
INSERT INTO epic.UserRolesLink (UserID,UserRoles) values ("1","SMP MR_IP_PROV_SCHED_DAR");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) values ("1","SMP_ER_NURSE");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) values ("1","HAH SMP PATIENT LIST");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) values ("2","HAH SMP PATIENT LIST");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) values ("3","HAH SMP PATIENT LIST");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","ADT ACCESS ADMINISTRATOR");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","FRONT DESK");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","PHYSICIAN");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","ED PROJECT TEAM");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","MODEL AMB ADMIN");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","ONCBCN PROJECT TEAM");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","MODEL ES PROJECT TEAM");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","MODEL AR PROJECT TEAM");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","MODEL RPT REPORTING ADMIN FOR RADAR");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","MODEL PHYSICIAN BUILDER");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","MODEL USER SEC ADMIN");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","HB PROJECT TEAM");
INSERT INTO epic.UserRolesLink (UserID,UserRoles) VALUES ("2","MODEL HH ADMINISTRATOR");




CREATE TABLE UserRolesTable (
  UserRoles varchar(255) NOT NULL
);
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("SMP MR_IP_PROV_SCHED_DAR");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("SMP_ER_NURSE");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("HAH SMP PATIENT LIST");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("ADT ACCESS ADMINISTRATOR");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("FRONT DESK");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("PHYSICIAN");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("ED PROJECT TEAM");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("MODEL AMB ADMIN");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("ONCBCN PROJECT TEAM");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("MODEL ES PROJECT TEAM");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("MODEL AR PROJECT TEAM");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("MODEL RPT REPORTING ADMIN FOR RADAR");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("MODEL PHYSICIAN BUILDER");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("MODEL USER SEC ADMIN");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("HB PROJECT TEAM");
INSERT INTO epic.UserRolesTable (UserRoles) VALUES ("MODEL HH ADMINISTRATOR");
