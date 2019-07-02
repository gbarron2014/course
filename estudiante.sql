
DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE IF NOT EXISTS `estudiante` (
  `numeroControl` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `grupo` varchar(10) NOT NULL,
  `edad` smallint(6) NOT NULL,
  PRIMARY KEY (`numeroControl`),
  KEY `grupo` (`grupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `estudiante` (`numeroControl`, `nombre`, `apellidos`, `grupo`, `edad`) VALUES
('1218100891', 'CARLOS MANUEL', 'CONTRERAS RUIZ ', 'GIR0131', 19),
('1218100390', 'ANGEL ALEJANDRO', 'GARCIA RAMIREZ ', 'GIR0131', 19),
('1218100494', 'CONCEPCIÓN GUADALUPE', 'GONZÁLEZ BARRIENTOS', 'GIR0131', 19),
('1218100511', 'ARELY LIZBETH', 'GUZMAN JUÁREZ', 'GIR0132', 18),
COMMIT;
