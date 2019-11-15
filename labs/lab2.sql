USE asmitl;

DROP TABLE IF EXISTS `modorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modorg` (
  `id` int(11) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `genus` varchar(45) DEFAULT NULL,
  `species` varchar(45) DEFAULT NULL,
  `nchr` int(11) DEFAULT NULL,
  `gsize` double DEFAULT NULL,
  `draft` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


LOCK TABLES `modorg` WRITE;

INSERT INTO `modorg` VALUES (1,'Bacteria','Escherichia','coli',1,4.639,'1997-09-05 00:00:00'),(2,'Fungi','Saccharomyces','cerevisiae',16,0.672,'1996-10-25 00:00:00'),(3,'Roundworms','Caenorhabditis','elegans',6,100,'1998-12-16 00:00:00'),(4,'Insects','Drosophila','melanogester',4,180,'2000-03-25 00:00:00'),(5,'Insects','Apis','melifera',16,218,'2003-12-19 00:00:00'),(6,'Mammals','Mus','musculus',21,2651,'2010-09-23 00:00:00'),(7,'Mammals','Rattus','norvegicus',21,6597,'2004-04-02 00:00:00'),(8,'Mammals','Gorilla','gorilla',24,3076,'2008-11-03 00:00:00'),(9,'Mammals','Homo','sapiens',23,3038,'2007-05-22 00:00:00'),(10,'Aliens','Alienus','area51us',NULL,NULL,NULL);

UNLOCK TABLES;

