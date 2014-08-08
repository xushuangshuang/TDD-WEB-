CREATE TABLE `contant` (
  `id` bigint(20) NOT NULL,
  `contant_name` varchar(1000) NOT NULL,
  `contant_email` varchar(1000) NOT NULL,
  `phone` int(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
