
SET FOREIGN_KEY_CHECKS = 0;
truncate floor_inf;
truncate tiezi_inf;
truncate user_inf;
truncate document_inf;

INSERT INTO `document_inf` VALUES (1,'/images/avatars/','defaultavatar.jpg','defaultavatar.jpg','avatar',1);
/*!40000 ALTER TABLE `document_inf` ENABLE KEYS */;


INSERT INTO `user_inf` VALUES (1,'test1','test1',1),(5,'test111','test111',1),(6,'test112','test112',1);
/*!40000 ALTER TABLE `user_inf` ENABLE KEYS */;


INSERT INTO `tiezi_inf` VALUES (1,1,'title1','content1'),(3,1,'title2','fdf');
/*!40000 ALTER TABLE `tiezi_inf` ENABLE KEYS */;

INSERT INTO `floor_inf` VALUES (1,1,1,'fdsf'),(4,1,1,'fsdf');
/*!40000 ALTER TABLE `floor_inf` ENABLE KEYS */;

SET FOREIGN_KEY_CHECKS = 1;