	CREATE DATABASE XDT0400

	CREATE TABLE `XDTA000`.`000PRO` (
		`id` BIGINT NOT NULL AUTO_INCREMENT,
		`descripcion` VARCHAR(100) NOT NULL ,
		`precio` FLOAT(10) NOT NULL ,
		`categoria` VARCHAR(100) NOT NULL ,
		PRIMARY KEY (`id`)
	) ENGINE = MyISAM COMMENT = 'Maestro de productos';

	CREATE TABLE `XDTA000`.`000PAK` (
		`id` BIGINT NOT NULL AUTO_INCREMENT,
		`descripcion` VARCHAR(100) NOT NULL ,
		`descuento` INT(10) NOT NULL ,
		`subtotal` FLOAT(10) NOT NULL ,
		`total` FLOAT(10) NOT NULL ,
		PRIMARY KEY (`id`)
	) ENGINE = MyISAM COMMENT = 'Header paquetes';

	CREATE TABLE `XDTA000`.`000PAK_PRO` (
		`id` BIGINT NOT NULL AUTO_INCREMENT,
		`id_PAK` BIGINT NOT NULL ,
		`id_PRO` BIGINT NOT NULL ,
		`cantidad` INT(4) NOT NULL ,
		`monto` FLOAT(10) NOT NULL ,
		PRIMARY KEY (`id`)
	) ENGINE = MyISAM COMMENT = 'Detalle paquetes';

	CREATE TABLE `XDTA000`.`000COT` (
		`id` BIGINT NOT NULL AUTO_INCREMENT,
		`descripcion` VARCHAR(100) NOT NULL ,
		`cliente` VARCHAR(100) NOT NULL ,
		`ruc` VARCHAR(10) NOT NULL ,
		`vendedor` VARCHAR(100) NOT NULL ,
		`descuento` INT(10) NOT NULL ,
		`impuesto` INT(3) NOT NULL ,
		`monto_descuento` FLOAT(10) NOT NULL ,
		`monto_impuesto` FLOAT(10) NOT NULL ,
		`subtotal` FLOAT(10) NOT NULL ,
		`total` FLOAT(10) NOT NULL ,
		PRIMARY KEY (`id`)
	) ENGINE = MyISAM COMMENT = 'Header cotización';

	CREATE TABLE `XDTA000`.`000COT_PRO` (
		`id` BIGINT NOT NULL AUTO_INCREMENT,
		`id_COT` BIGINT NOT NULL ,
		`id_PRO` BIGINT NULL ,
		`id_PAK` BIGINT NULL ,
		`cantidad` INT(4) NOT NULL ,
		`monto` FLOAT(10) NOT NULL ,
		PRIMARY KEY (`id`)
	) ENGINE = MyISAM COMMENT = 'Detalle cotización';

	CREATE TABLE `XDTA000`.`000CAT` (
		`id` BIGINT NOT NULL AUTO_INCREMENT,
		`descripcion` VARCHAR(100) NOT NULL ,
		PRIMARY KEY (`id`)
	) ENGINE = MyISAM COMMENT = 'Categoria';