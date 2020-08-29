-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lead_processing_task
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_lead` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendinng',
  `resolved_by` int(11) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'RE: schedule a call, Lauren','Hi Stephen,\r \r  \r \r Many thanks for your email to Lauren below.\r \r  \r \r I am now managing Linkedin for 2020 from a B2B perspective and would be interested to know more.\r \r I have some availability next week – does 9.30/10am work for you on Monday?\r \r  \r \r Best wishes,\r \r Katie\r \r  \r \r  \r \r Katie Moulton\r \r Corporate Account Executive\r \r 020 3409 6629\r \r Biscuiteers Baking Company, Unit 2, Greenlea Park, Prince Georges Road, Wimbledon, SW19 2JD\r \r  \r \r www.biscuiteers.com \r \r Why send flowers when you can send Biscuiteers instead?\r \r All rights reserved. © Biscuiteers.com\r \r  \r \r Want one of our lovely catalogues?\r \r','lindaw@parama.ca','pending',1,1,'2020.01.31','2020-08-29 12:46:37'),(2,'RE: schedule a call, Tamara','Hi Stephen –\n\n \n\nI would like to use Linked In  to generate more sales and could do a 5 minute phone call.\n\n \n\nTammy     WE ARE HIRING!\n\n \n\nTamara A. Kiesa, Marketing Director & Assistant to Gary A. Grossman, CPA, CFP\n110 West Fayette Street | Suite 900 | Syracuse, New York 13202-1387\n\nP 315.701.6350 | F 315.423.2883 | Email: tkiesa@gsacpas.com | Web: www.gsacpas.com\n\n\n \n\nFIND US ON FACEBOOK | FIND US ON LINKED IN | FIND US ON TWITTER\n\n \n\ncid:image002.jpg@01D270F2.948E3570\n\n \n\n   cid:image009.jpg@01D270F2.397D1160            cid:image011.jpg@01D270F2.948E3570\n\n \n\nConfidentiality Notice:  The information contained in this email transmission is confidential and may be privileged from disclosure.  This email transmission is for the use of the intended recipient only.  If you are not the intended recipient, you are hereby notified that any dissemination, distribution, printing, copying or any other use of this email transmission is strictly prohibited and may constitute a violation of law. If you have received this email transmission and you are not the intended recipient, please notify us immediately by phone or by reply email and delete this email transmission from your system(s) and destroy all copies hereof.  Thank you.','tkiesa@gsacpas.com','pending',1,1,'2020.02.03','2020-08-29 12:46:47'),(3,'POC - Nikhil Goka','Hello Nikhil – thank you for reaching out.\n\nAs a first step, please explain how you ‘fund’ future sales.\n\n \n\nThank you.\n\n \n\nScott Macwilliam, MBA\nPresident\n\nElby Mobility\n1 + 905-302-1287\n\nVisit us @ \n\nwww.elbymobility.com and,\n\nhttps://business.elbymobility.com/\n\n\nFollow us @\n\nhttps://www.instagram.com/elbymobility/\n\nhttps://www.facebook.com/ElbyBike/','scott.macwilliam@elbybike.com','pending',1,1,'2020.02.15','2020-08-29 06:57:02'),(4,'question','Adrian too busy right now, catch up end of March,\n\nthx','lindaw@parama.ca','pending',1,1,'2020.01.24','2020-08-29 11:51:28'),(5,'follow up','Dear Saumil,\n\nI’m copying Jawwad who will be the in charge person for any insurance subject.\n\n \n\n \n\n \n\nBest regards,\n\n \n\nIbrahim Bala’awi\n\nManaging Director\n\n \n\nm\n\n+971 5o 6149641\n\nt\n\n+971 4 457 9119\n\ne\n\nibrahim.balaawi@waseela.com\n\n','ibrahim.balaawi@waseela.com','pending',1,1,'2020.01.29','2020-08-29 12:13:37'),(6,'previous email','Thank you Sukhi, we are not interested, please remove my address from your contact list.\n\n \n\nKind regards\n\n \n\nDany','DanyO@avdynamics.com.au','pending',1,1,'2020.02.07','2020-08-29 06:56:57'),(7,'I\'d love your feedback on that meeting, Nicole','Hi Brian\n\nThis isn’t relevant to our business, we do not generate sales. \n\nNicole\n\nSent from my iPhone','ng@betterbankside.co.uk','pending',1,2,'2020.02.03','2020-08-29 12:46:53'),(8,'EXT: schedule a call, Mutasem','Hi Nathan,\n\n \n\nThanks for reaching out.\n\n \n\nHonestly I do not understand the below message. What sort of solutions you are offering and how this will benefit our business?\n\n \n\nRegards,\n\n \n\nMutasem','mutasem.alkhalili@bakerhughes.com','pending',1,1,'2020.01.15','2020-08-29 12:52:04'),(9,'question','Hi Brian\n\n\nThanks for getting in touch. However, we’re a public sector organisation and as such, don’t sell anything, so the answer to your question is no, we’re not looking to generate more sales.\n\n \n\nKind regards\n\nKatherine\n\n \n\n \n\nKatherine Goodwin\n\nHead of Communications & Marketing\n\nFood Standards Scotland\n\nPilgrim House, Old Ford Road, Aberdeen, AB11 5RL\n\n01224 285120\n\n07780 227431\n\n \n\nkatherine.goodwin@fss.scot\n\nfoodstandards.gov.scot','Katherine.Goodwin@fss.scot','pending',1,2,'2020.01.27','2020-08-29 09:29:17'),(10,'follow-up','Hi Daley,\n\n \n\nThanks for the email and I have copied in Martin our Business Development Director at Greyline who is the best person to talk to with regards to your proposal.\n\n \n\n \n\n \n\nKind regards,​\n\nTony Rogers\n\nManaging Director','trogers@greylineltd.com','pending',1,1,'2020.01.29','2020-08-29 12:46:24'),(11,'last email','Hi Mark\n\nAll of this is under review right now, can I suggest you get back in touch in 4 weeks time and we will see where we have got to and what our plans will be.\n\nThanks\n\nEmma','emma@chikas.co.uk','pending',1,1,'2020.01.15','2020-08-29 12:13:36'),(12,'schedule a call, Steve','Hi Brian, this isn’t part of my domain but in any event, we are comfortable with regard to our use of LinkedIn at the moment.\n\n \n\nThanks,\n\nSteve.\n\n \n\nStephen Cannon\nHead of Digital Services \n\nT: +44(0) 131 297 2270  M: +44(0) 7879 407544\n\nwww.agenor.co.uk','steve.cannon@agenor.co.uk','pending',1,1,'2020.02.03','2020-08-29 12:46:54'),(13,'5 minute call','Nathan,\n\n \n\nSorry for the delayed response.\n\nYou may contact Tom McAllister, who is the Director for Training globally.\n\n \n\nTom.McAllister@nov.com\n\n \n\n \n\n \n\nRegards,\n\n \n\nSujith Mohan | Director of Service, MENA & Asia, Marine & Construction\n\nNOV Rig Technologies\n\nAftermarket Operations\n\nM +971-50-538 08 63','Sujith.Mohan@nov.com','pending',1,3,'2020.01.21','2020-08-29 12:05:44'),(14,'re: question','Ivy,\n\n \n\nThanks so much for your email.  Currently, CBIS is not in need of a video production service.  However, we do have a full-suite of offerings to help get JLB Media in front of the right people in the association space.\n\n \n\nI’ve copied my colleague Marlayna, who can assist you in getting access to the tool that’ll get you to the decision makers who might be interested in your powerful video production service.\n\n \n\nAs well, we host a dozen events throughout the year, a good chunk of them with focus to our technology partners.  Perhaps it’d make sense to have JLB present here for branding as well.\n\n \n\nLet us know if we can help with any of the above and we’ll go from there!\n\n \n\nSHARONPARE\n\nBusiness Development Executive, Industry Partners\n\nwww.associationtrends.com\n\n1560 Wilson Blvd #825 | Rosslyn, VA 22209\n\nDirect | 240-235-0272\n\nFind me on LinkedIn!','spare@columbiabooks.com','pending',1,2,'2020.01.29','2020-08-29 12:46:30'),(15,'Hi Alex','Hi Adrian,\n\n \n\nThanks for reaching out. Sure, always nice to have a chat and see if there is anything that might help.\n\nHow about giving me a call at 3pm?\n\n \n\nThanks\n\nAlex\n\n \n\nAlex McCloy\n\nBusiness Development Manager\n\n \n\nMobile: +44 (0)7447 740 591\n\n \n\nProvek - enabling change\nTel: 01635 279868 | Fax: 01635 524620 | Web: www.provek.co.uk\nAssessment Centre / Training and Development / Consultancy\n\nProvek provides unique assessment-led programme and project management solutions','alex.mccloy@provek.co.uk','pending',1,1,'2020.01.20','2020-08-29 11:52:22'),(16,'schedule a call, Jonathan','Hi,\n\n \n\nSend me a time suggestion.\n\n \n\nBest regards\n\n/ Jonathan\n\n \n\nJonathan Wadström\n\n+46 73-660 69 02\n\nwww.zcooly.com','jonathan@zcooly.com','pending',1,3,'2020.01.31','2020-08-29 12:46:42'),(17,'schedule a call, Kimberley','Hi Stephen\n\n \n\nThanks for your email. Unfortunately this is not something we’re looking to do either now or in the future.\n\n \n\nKind regards\n\n \n\n \n\nKimberley Hamilton-Young\n\nHead of Marketing & Planning\n\n \n\nTel: +44 (0)20 7096 1960\n\nMob: +44 (0) 7930 506678\n\n \n\nInogesis\n\nSuite 316 | Linen Hall | 162-168 Regent Street | London | W1B 5TD','Kimberley@inogesis.com','pending',1,1,'2020.02.10','2020-08-29 06:56:59'),(18,'Hi Stuar','Hi Stephen,\n\n \n\nThanks for your email. This doesn’t really fit with our profile I’m afraid as we distribute via the Wholesale channel.\n\n \n\nWith regards\n\n \n\n \n\nStuart Eglin\nSales Director\nstuart.eglin@cromptonlamps.com\nwww.cromptonlamps.com','stuart.eglin@cromptonlamps.com','pending',1,3,'2020.01.29','2020-08-29 12:46:34'),(19,'schedule a call, Tish','Hi Stephen,\n\nThank you for your email.\n\nAt present we primarily use LinkedIn for recruitment purposes - not to generate sales.\n\nIf this were to change in the future I’ll be in touch.\n\nKind Regards,\n\nTish','Tish.Jayanetti@postalmuseum.org','pending',1,1,'2020.02.03','2020-08-29 06:56:51'),(20,'call on Thursday?','Thanks Stephen, this is not relevant for us. \n\nAll the best.\n\n-Patrik','patrik.korhonen@dingle.fi','pending',1,1,'2020.02.04','2020-08-29 06:56:55');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-29 19:05:32
