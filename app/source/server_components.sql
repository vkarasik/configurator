-- Create Base table

CREATE TABLE `server_components`.`base` (
  `base_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `description` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `subcategory` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `cpu` VARCHAR(45) NOT NULL,
  `ram` VARCHAR(45) NOT NULL,
  `hdd` VARCHAR(45) NOT NULL,
  `ssd` VARCHAR(45) NOT NULL,
  `options` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,1) NOT NULL,
  `term` INT NOT NULL,
  `link` VARCHAR(256) NULL,
  PRIMARY KEY (`base_id`));

INSERT INTO base VALUES
(DEFAULT, "ASUS RS100-E9-PI2", "1U, 1xLGA1151, 4xDDR4 ECC, 2x3.5 inch / 4x2.5 inch SATA, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 2xGbE, 250W Bronze, 380mm dpt", "Стоечные (19 inch) 1 процессорные для процессоров E3", "1151", "ECC", "3.5/2.5", "M.2", "forall", 440, 7, "https://www.asus.com/Commercial-Servers-Workstations/RS100-E9-PI2/"),
(DEFAULT, "ASUS RS200-E9-PS2-F", "1U, 1xLGA1151, 4xDDR4 ECC, 2x2.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, VGA, 4xGbE, 250W Bronze, Front interfaces, 383mm dpt", "Стоечные (19 inch) 1-процессорные для процессоров E3", "1151", "ECC", "2.5", "M.2/2.5", "forall", 550, 7, "https://www.asus.com/Commercial-Servers-Workstations/RS200-E9-PS2-F/"),
(DEFAULT, "ASUS RS200-E9-PS2", "1U, 1xLGA1151, 4xDDR4 ECC, 2x2.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, VGA, 4xGbE, 250W Bronze,383mm dpt", "Стоечные (19 inch) 1-процессорные для процессоров E4", "1151", "ECC", "2.5", "M.2/2.5", "forall", 550, 7, "https://www.asus.com/Commercial-Servers-Workstations/RS200-E9-PS2/"),
(DEFAULT, "ASUS RS300-E9-RS4", "1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 2x450W Gold HotSwap", "Стоечные (19 inch) 1-процессорные для процессоров E3", "1151", "ECC", "3.5/2.5", "M.2/2.5", "forall", 840, 30, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS300-E9-RS4/"),
(DEFAULT, "ASUS RS300-E9-PS4", "1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 400W Gold", "Стоечные (19 inch) 1-процессорные для процессоров E3", "1151", "ECC", "3.5/2.5", "M.2/2.5", "forall", 600, 7, "https://www.asus.com/Commercial-Servers-Workstations/RS300-E9-PS4/"),
(DEFAULT, "ASUS RS100-E10-PI2", "1U, 1xLGA1151, 4xDDR4 ECC, 2x3.5 inch SATA, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 250W Bronze, 380mm dpt, Support Xeon E, i3, Pentium, Celeron", "Стоечные (19 inch) 1-процессорные для процессоров E", "1151", "ECC", "3.5", "M.2", "forall", 490, 30, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS100-E10-PI2/"),
(DEFAULT, "ASUS RS300-E10-PS4", "1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 400W Gold, Support Xeon E, i3, Pentium, Celeron", "Стоечные (19 inch) 1-процессорные для процессоров E", "1151", "ECC", "3.5/2.5", "M.2/2.5", "forall", 653, 7, "https://www.asus.com/Commercial-Servers-Workstations/RS300-E10-PS4/"),
(DEFAULT, "ASUS RS300-E10-RS4", "1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 2x450W Gold HotSwap, Support Xeon E, i3, Pentium, Celeron", "Стоечные (19 inch) 1-процессорные для процессоров E", "1151", "ECC", "3.5/2.5", "M.2/2.5", "forall", 895, 21, "https://www.asus.com/Commercial-Servers-Workstations/RS300-E10-RS4/"),
(DEFAULT, "ASUS RS400-E8-PS2-F", "1U, 2xLGA2011, 16xDDR4 RDIMM, 2x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xGbE, iKVM, 500W Platinum, Front interfaces, 383mm dpt!", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "2.5", "M.2/2.5", "forall", 715, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS400E8PS2F/"),
(DEFAULT, "ASUS RS500-E8-RS4 V2", "1U, 2xLGA2011, 16xDDR4 RDIMM, 4x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x770W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "3.5/2.5", "M.2", "forall", 1100, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS500E8RS4-V2/"),
(DEFAULT, "ASUS RS500-E8-PS4 V2", "1U, 2xLGA2011, 16xDDR4 RDIMM, 4x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 600 Gold", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "3.5/2.5", "M.2", "forall", 850, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS500E8PS4-V2/overview/"),
(DEFAULT, "ASUS RS500-E8-RS8 V2", "1U, 2xLGA2011, 16xDDR4 RDIMM, 8x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x770W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "2.5", "M.2/2.5", "forall", 1070, 7, ""),
(DEFAULT, "ASUS RS520-E8-RS12-E V2", "2U, 16xDDR4 RDIMM, 12x3.5 inch + 2x2.5 inch HotSwap, no raid Intel raid only for 2x2.5 inch SSD/HDD, 2xGbE, iKVM, 2x770W Gold HotSwap", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "3.5/2.5", "M.2/2.5", "forall", 1445, 30, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS520E8RS12E-V2/"),
(DEFAULT, "ASUS RS520-E8-RS8 V2", "2U, 16xDDR4 RDIMM, 8x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x770W Gold HotSwap", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "3.5/2.5", "M.2", "forall", 1280, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS520E8RS8-V2/"),
(DEFAULT, "ASUS RS540-E8-RS36-ECP", "4U, 2xLGA2011, 16xDDR4 RDIMM, 36x3.5 inch + 2x2.5 inch HotSwap, PIKE 3108/240PD/2Gb, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "3.5/2.5", "M.2/2.5", "forall", 2275, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS540-E8-RS36-ECP/"),
(DEFAULT, "ASUS RS700-E8-RS8 V2", "1U, 2xLGA2011, 24xDDR4 RDIMM, 8x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные", "2011", "ECC REG", "2.5", "M.2/2.5", "forall", 1390, 21, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS700-E8-RS8-V2/"),
(DEFAULT, "ASUS TS100-E9-PI4", "Tower, 1xLGA1151, 4xDDR4 ECC, 3x3.5 inch+1x2.5 inchSATA, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 2xGbE, 300W Bronze, Support Xeon E3, i3, Pentium, Celeron", "Башенные/универсальные/графические рабочие станции", "1151", "ECC", "3.5/2.5/5.25", "2.5", "forall", 454, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/TS100-E9-PI4/"),
(DEFAULT, "ASUS TS100-E10-PI4", "Tower, 1xLGA1151, 4xDDR4 ECC, 3x3.5 inch+1x2.5 inchSATA, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 2xGbE, 300W Bronze, Support Xeon E, i3, Pentium, Celeron", "Башенные/универсальные/графические рабочие станции", "1151", "ECC", "3.5/2.5/5.25", "2.5", "forall", 480, 30, "https://www.asus.com/Commercial-Servers-Workstations/TS100-E10-PI4/"),
(DEFAULT, "ASUS TS300-E9-PS4", "Tower, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap up to 8, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 500W Bronze, Support Xeon E, i3, Pentium, Celeron", "Башенные/универсальные/графические рабочие станции", "1151", "ECC", "3.5/2.5/5.25", "M.2/2.5", "forall", 610, 30, "https://www.asus.com/Commercial-Servers-Workstations/TS300-E9-PS4/"),
(DEFAULT, "ASUS TS300-E10-PS4", "Tower, 1xLGA1151, 4xDDR4 ECC, 4x3.5 / 2.5 inch HotSwap up to 8, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 500W Gold, Support Xeon E, i3, Pentium, Celeron", "Башенные/универсальные/графические рабочие станции", "1151", "ECC", "3.5/2.5/5.25", "M.2/2.5", "forall", 630, 30, "https://www.asus.com/Commercial-Servers-Workstations/TS300-E10-PS4/"),
(DEFAULT, "ASUS TS500-E8-PS4 V2", "Tower/5U, 2xLGA2011, 8xDDR4 RDIMM, 4x3.5 inch HotSwap up to 8 optional, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 500W Bronze Last buy", "Башенные/универсальные/графические рабочие станции", "2011", "ECC REG", "3.5/2.5/5.25", "M.2/2.5", "forall", 800, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/TS500-E8-PS4-V2/"),
(DEFAULT, "ASUS TS700-E8-RS8 V2", "Tower/5U, 2xLGA2011, 16xDDR4 RDIMM, 8x3.5 inch + 2x2.5 inch HotSwap, M.2, Intel SW Raid 0/1/5/10, DVD-RW, HDAudio, 2xGbE, iKVM, 2x800W Gold HotSwap", "Башенные/универсальные/графические рабочие станции", "2011", "ECC REG", "3.5/2.5/5.25", "M.2/2.5", "forall", 1360, 30, "https://www.asus.com/ru/Commercial-Servers-Workstations/TS700-E8-RS8-V2/"),
(DEFAULT, "ASUS RS520-E9-RS12-E", "2U, 2xLGA3647, 16xDDR4 RDIMM, 12x3.5 inch / 4xNVMe + 2x2.5 inch HotSwap, no raid card Intel raid only for 2x2.5 inch SSD/HDD, 2xM.2, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe", "3647", "ECC REG", "3.5/2.5", "M.2/2.5", "forall", 1680, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS520-E9-RS12-E/"),
(DEFAULT, "ASUS RS520-E9-RS8", "2U, 2xLGA3647, 16xDDR4 RDIMM, 8x3.5 inch 4xNVMe + 2x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, DVD-RW, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe", "3647", "ECC REG", "3.5/2.5", "M.2/2.5", "forall", 1580, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS520-E9-RS8/"),
(DEFAULT, "ASUS RS540-E9-RS36-E", "4U, 2xLGA3647, 16xDDR4 RDIMM, 36x3.5 inch + 2x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe", "3647", "ECC REG", "3.5/2.5", "M.2/2.5", "forall", 2570, 30, "https://www.asus.com/Commercial-Servers-Workstations/RS540-E9-RS36-E/"),
(DEFAULT, "ASUS RS700-E9-RS12", "1U, 2xLGA3647, 24xDDR4 RDIMM, 12x2.5 inch, 8x NVMe HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe", "3647", "ECC REG", "2.5", "M.2/2.5", "forall", 1670, 30, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS700-E9-RS12/"),
(DEFAULT, "ASUS RS700-E9-RS4", "1U, 2xLGA3647, 24xDDR4 RDIMM, 4x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, DVD-RW, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe", "3647", "ECC REG", "3.5/2.5", "M.2/2.5", "forall", 1655, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/RS700-E9-RS4/"),
(DEFAULT, "ASUS RS720-E9-RS24", "2U, 2xLGA3647, 24xDDR4 RDIMM, 24x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, 2xGbE, iKVM, 2x1200W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe", "3647", "ECC REG", "2.5", "M.2/2.5", "forall", 2620, 30, "https://www.asus.com/Commercial-Servers-Workstations/RS720-E9-RS24-E/"),
(DEFAULT, "ASUS RS720-E9-RS12", "2U, 2xLGA3647, 24xDDR4 RDIMM, 12 x 3.5 inch or 2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, 2xGbE, iKVM, 2x800W Platinum HotSwap", "Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe", "3647", "ECC REG", "3.5/2.5", "M.2/2.5", "forall", 2050, 30, "https://www.asus.com/Commercial-Servers-Workstations/RS720-E9-RS12-E/");

-- Create CPU table

CREATE TABLE `server_components`.`cpu` (
  `cpu_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `description` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `subcategory` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,1) NOT NULL,
  `term` INT NOT NULL,
  `link` VARCHAR(256) NULL,
  PRIMARY KEY (`cpu_id`));

-- Create SSD table

CREATE TABLE `server_components`.`ssd` (
 `ssd_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `description` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `subcategory` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,1) NOT NULL,
  `term` INT NOT NULL,
  `link` VARCHAR(256) NULL,
  PRIMARY KEY (`ssd_id`));

-- Create HDD table

CREATE TABLE `server_components`.`hdd` (
 `hdd_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `description` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `subcategory` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,1) NOT NULL,
  `term` INT NOT NULL,
  `link` VARCHAR(256) NULL,
  PRIMARY KEY (`hdd_id`));

-- Create RAM table

CREATE TABLE `server_components`.`ram` (
 `ram_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `description` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `subcategory` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,1) NOT NULL,
  `term` INT NOT NULL,
  `link` VARCHAR(256) NULL,
  PRIMARY KEY (`ram_id`));

-- Create Option table

CREATE TABLE `server_components`.`options` (
 `options_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `description` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `subcategory` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,1) NOT NULL,
  `term` INT NOT NULL,
  `link` VARCHAR(256) NULL,
  PRIMARY KEY (`options_id`));


INSERT INTO cpu VALUES
(DEFAULT, "Xeon E3-1270 v6", "4 ядра / 8 потоков, 8 МБ кэш-памяти, тактовая частота 3,80 ГГц", "Семейство процессоров Intel Xeon E3 v6", "1151", 415, 30, "https://ark.intel.com/content/www/ru/ru/ark/products/97479/intel-xeon-processor-e3-1270-v6-8m-cache-3-80-ghz.html?wapkw=Xeon%20E3-1270v6"),
(DEFAULT, "Xeon E3-1240 v6", "4 ядра /8 потоков, 8 МБ кэш-памяти, тактовая частота 3,70 ГГц", "Семейство процессоров Intel Xeon E3 v6", "1151", 305, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/97469/intel-xeon-processor-e3-1240-v6-8m-cache-3-70-ghz.html"),
(DEFAULT, "Xeon E3-1230 v6", "4 ядра / 8 потоков, 8 МБ кэш-памяти, тактовая частота 3,50 ГГц", "Семейство процессоров Intel Xeon E3 v6", "1151", 285, 14, "https://ark.intel.com/content/www/ru/ru/ark/products/97474/intel-xeon-processor-e3-1230-v6-8m-cache-3-50-ghz.html"),
(DEFAULT, "Xeon E3-1220 v6", "4 ядра / 4 потока, 8 МБ кэш-памяти, тактовая частота 3,00 ГГц", "Семейство процессоров Intel Xeon E3 v6", "1151", 235, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/97470/intel-xeon-processor-e3-1220-v6-8m-cache-3-00-ghz.html"),
(DEFAULT, "Xeon E-2278G", "8 ядер / 16 потоков, 16 МБ кэш-памяти, тактовая частота 3,40 ГГц", "Семейство процессоров процессор Intel Xeon E", "1151", 560, 31, "https://ark.intel.com/content/www/ru/ru/ark/products/193745/intel-xeon-e-2278g-processor-16m-cache-3-40-ghz.html"),
(DEFAULT, "Xeon E-2274G", "4 ядра / 8 потоков, 8 МБ кэш-памяти, тактовая частота 4,00 ГГц", "Семейство процессоров процессор Intel Xeon E", "1151", 380, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/191042/intel-xeon-e-2274g-processor-8m-cache-4-00-ghz.html"),
(DEFAULT, "Xeon E-2135", "6 ядер / 12 потоков, 12 МБ кэш-памяти, тактовая частота 3,30 ГГц", "Семейство процессоров процессор Intel Xeon E", "1151", 289, 21, ""),
(DEFAULT, "Xeon E-2224G", "4 ядра / 4 потока, 8 МБ кэш-памяти, тактовая частота 3,50 ГГц", "Семейство процессоров процессор Intel Xeon E", "1151", 241, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/191037/intel-xeon-e-2224g-processor-8m-cache-3-50-ghz.html"),
(DEFAULT, "Xeon E5-2650 v4", "12 ядер / 24 потока, 30 МБ кэш-памяти, тактовая частота 2,20 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 1200, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/91767/intel-xeon-processor-e5-2650-v4-30m-cache-2-20-ghz.html"),
(DEFAULT, "Xeon E5-2643 v4", "6 ядер / 12 потоков, 20 МБ кэш-памяти, тактовая частота 3,40 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 1720, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/92989/intel-xeon-processor-e5-2643-v4-20m-cache-3-40-ghz.html"),
(DEFAULT, "Xeon E5-2640 v4", "10 ядер / 20 потоков, 25 МБ кэш-памяти, тактовая частота 2,40 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 875, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/92984/intel-xeon-processor-e5-2640-v4-25m-cache-2-40-ghz.html"),
(DEFAULT, "Xeon E5-2637 v4", "4 ядра / 8 потоков, 15 МБ кэш-памяти, тактовая частота 3,50 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 1150, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/92983/intel-xeon-processor-e5-2637-v4-15m-cache-3-50-ghz.html"),
(DEFAULT, "Xeon E5-2630 v4", "10 ядер / 20 потоков, 25 МБ кэш-памяти, тактовая частота 2,20 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 685, 7, "https://ark.intel.com/content/www/ru/ru/ark/products/92981/intel-xeon-processor-e5-2630-v4-25m-cache-2-20-ghz.html"),
(DEFAULT, "Xeon E5-2623 v4", "4 ядра / 8 потоков, 10 МБ кэш-памяти, тактовая частота 2,60 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 510, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/92980/intel-xeon-processor-e5-2623-v4-10m-cache-2-60-ghz.html"),
(DEFAULT, "Xeon E5-2620 v4", "8 ядер / 16 потоков, 20 МБ кэш-памяти, тактовая частота 2,10 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 380, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/92986/intel-xeon-processor-e5-2620-v4-20m-cache-2-10-ghz.html"),
(DEFAULT, "Xeon E5-2609 v4", "8 ядер / 8 потоков, 20 МБ кэш-памяти, тактовая частота 1,70 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 327, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/92990/intel-xeon-processor-e5-2609-v4-20m-cache-1-70-ghz.html"),
(DEFAULT, "Xeon E5-2603 v4", "6 ядер / 6 потоков, 15 МБ кэш-памяти, тактовая частота 1,70 ГГц", "Семейство процессоров Intel Xeon E5 v4", "2011", 230, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/92993/intel-xeon-processor-e5-2603-v4-15m-cache-1-70-ghz.html"),
(DEFAULT, "Xeon Gold 5122", "4 ядра / 8 потоков, 16,5 МБ кэш-памяти, тактовая частота 3,60 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 1400, 30, "https://ark.intel.com/content/www/ru/ru/ark/products/120475/intel-xeon-gold-5122-processor-16-5m-cache-3-60-ghz.html"),
(DEFAULT, "Xeon Gold 5120", "14 ядер / 28 потоков, 19,25 МБ кэш-памяти, тактовая частота 2,20 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 1660, 30, "https://ark.intel.com/content/www/ru/ru/ark/products/120474/intel-xeon-gold-5120-processor-19-25m-cache-2-20-ghz.html"),
(DEFAULT, "Xeon Gold 5118", "12 ядер / 24 потока, 16,5 МБ кэш-памяти, тактовая частота 2,30 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 1350, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/120473/intel-xeon-gold-5118-processor-16-5m-cache-2-30-ghz.html"),
(DEFAULT, "Xeon Silver 4116", "12 ядер / 24 потока, 16,5 МБ кэш-памяти, тактовая частота 2,10 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 1080, 30, "https://ark.intel.com/content/www/ru/ru/ark/products/120481/intel-xeon-silver-4116-processor-16-5m-cache-2-10-ghz.html"),
(DEFAULT, "Xeon Silver 4114", "10 ядер / 20 потоков, 13,75 МБ кэш-памяти, тактовая частота 2,20 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 740, 7, "https://ark.intel.com/content/www/ru/ru/ark/products/123550/intel-xeon-silver-4114-processor-13-75m-cache-2-20-ghz.html"),
(DEFAULT, "Xeon Silver 4112", "4 ядра / 8 потоков,8,25 МБ кэш-памяти, тактовая частота 2,60 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 520, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/123551/intel-xeon-silver-4112-processor-8-25m-cache-2-60-ghz.html"),
(DEFAULT, "Xeon Silver 4110", "8 ядер / 16 потоков, 11 МБ кэш-памяти, тактовая частота 2,10 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 510, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/123547/intel-xeon-silver-4110-processor-11m-cache-2-10-ghz.html"),
(DEFAULT, "Xeon Silver 4108", "8 ядер / 16 потоков, 11 МБ кэш-памяти, тактовая частота 1,80 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 475, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/123544/intel-xeon-silver-4108-processor-11m-cache-1-80-ghz.html"),
(DEFAULT, "Xeon Bronze 3106", "8 ядер / 8 потоков, 11 МБ кэш-памяти, тактовая частота 1,70 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 355, 7, "https://ark.intel.com/content/www/ru/ru/ark/products/123540/intel-xeon-bronze-3106-processor-11m-cache-1-70-ghz.html"),
(DEFAULT, "Xeon Bronze 3104", "6 ядер / 6 потоков, 8,25 МБ кэш-памяти, тактовая частота 1,70 ГГц", "Семейство масштабируемых процессоров Intel Xeon", "3647", 245, 21, "https://ark.intel.com/content/www/ru/ru/ark/products/123546/intel-xeon-bronze-3104-processor-8-25m-cache-1-70-ghz.html");

INSERT INTO ssd VALUES
(DEFAULT, "Intel Optane 900P 280 GB", "280 GB, половинной высоты, PCIe x4, 20 нм, 3D Xpoint", "Серверные SSD диски", "2.5", 420, 7, "https://ark.intel.com/content/www/ru/ru/ark/products/123628/intel-optane-ssd-900p-series-280gb-1-2-height-pcie-x4-20nm-3d-xpoint.html"),
(DEFAULT, "Intel SSD DC S3610 800GB", "800GB, 2.5 inch, SATA, 6Gb/s, 20nm, MLC", "Серверные SSD диски", "2.5", 580, 7, "https://ark.intel.com/content/www/us/en/ark/products/82936/intel-ssd-dc-s3610-series-800gb-2-5in-sata-6gb-s-20nm-mlc.html"),
(DEFAULT, "Intel SSD D3-S4610 480GB", "480GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC", "Серверные SSD диски", "2.5", 255, 14, "https://ark.intel.com/content/www/ru/ru/ark/products/134919/intel-ssd-d3-s4610-series-480gb-2-5in-sata-6gb-s-3d2-tlc.html"),
(DEFAULT, "Intel SSD D3-S4610 240GB", "240GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC", "Серверные SSD диски", "2.5", 150, 7, "https://ark.intel.com/content/www/ru/ru/ark/products/134923/intel-ssd-d3-s4610-series-240gb-2-5in-sata-6gb-s-3d2-tlc.html"),
(DEFAULT, "Intel SSD D3-S4510 480GB", "480GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC", "Серверные SSD диски", "2.5", 230, 7, "https://ark.intel.com/content/www/ru/ru/ark/products/134920/intel-ssd-d3-s4510-series-480gb-2-5in-sata-6gb-s-3d2-tlc.html"),
(DEFAULT, "Intel SSD D3-S4510 240GB", "240GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC", "Серверные SSD диски", "2.5", 175, 14, "https://ark.intel.com/content/www/ru/ru/ark/products/134910/intel-ssd-d3-s4510-series-240gb-2-5in-sata-6gb-s-3d2-tlc.html"),
(DEFAULT, "Intel SSD DC P3100 256GB", "256GB, M.2 80mm, PCIe, 3.0 x4, 3D1, TLC", "Серверные SSD диски", "M.2", 130, 7, "https://ark.intel.com/content/www/us/en/ark/products/97075/intel-ssd-dc-p3100-series-256gb-m-2-80mm-pcie-3-0-x4-3d1-tlc.html"),
(DEFAULT, "Intel SSD DC P3100 128GB", "128GB, M.2 80mm, PCIe, 3.0 x4, 3D1, TLC", "Серверные SSD диски", "M.2", 90, 7, "https://ark.intel.com/content/www/us/en/ark/products/97071/intel-ssd-dc-p3100-series-128gb-m-2-80mm-pcie-3-0-x4-3d1-tlc.html");

INSERT INTO hdd VALUES
(DEFAULT, "Enterprise HDD 3.5 10TB", "10TB, SATA, 3.5 inch, 7200rpm, 256MB, Enterprise", "Серверные HDD SATA LFF 3.5", "3.5", 285, 21, ""),
(DEFAULT, "Enterprise HDD 3.5 8TB", "8TB, SATA, 3.5 inch, 7200rpm, 256MB, Enterprise", "Серверные HDD SATA LFF 3.5", "3.5", 260, 21, ""),
(DEFAULT, "Enterprise HDD 3.5 6TB", "6TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise", "Серверные HDD SATA LFF 3.5", "3.5", 180, 21, ""),
(DEFAULT, "Enterprise HDD 3.5 4TB", "4TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise", "Серверные HDD SATA LFF 3.5", "3.5", 155, 7, ""),
(DEFAULT, "Enterprise HDD 3.5 2TB", "2TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise", "Серверные HDD SATA LFF 3.5", "3.5", 110, 7, ""),
(DEFAULT, "Enterprise HDD 3.5 1TB", "1TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise", "Серверные HDD SATA LFF 3.5", "3.5", 85, 7, ""),
(DEFAULT, "Enterprise HDD 2.5 1.2TB", "1.2TB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 2.5", "2.5", 205, 21, ""),
(DEFAULT, "Enterprise HDD 2.5 900GB", "900GB, SAS, 2.5 inch, 15000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 2.5", "2.5", 325, 21, ""),
(DEFAULT, "Enterprise HDD 2.5 900GB", "900GB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 128MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 2.5", "2.5", 190, 21, ""),
(DEFAULT, "Enterprise HDD 2.5 600GB", "600GB, SAS, 2.5 inch, 15000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 2.5", "2.5", 240, 21, ""),
(DEFAULT, "Enterprise HDD 2.5 600GB", "600GB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 128MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 2.5", "2.5", 150, 21, ""),
(DEFAULT, "Enterprise HDD 2.5 300GB", "300GB, SAS, 2.5 inch, 15000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 2.5", "2.5", 185, 7, ""),
(DEFAULT, "Enterprise HDD 2.5 300GB", "300GB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 128MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 2.5", "2.5", 110, 21, ""),
(DEFAULT, "Enterprise HDD 3.5 12TB", "12TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 256MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 3.5", "3.5", 375, 21, ""),
(DEFAULT, "Enterprise HDD 3.5 10TB", "10TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 256MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 3.5", "3.5", 305, 21, ""),
(DEFAULT, "Enterprise HDD 3.5 6TB", "6TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 128MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 3.5", "3.5", 215, 21, ""),
(DEFAULT, "Enterprise HDD 3.5 4TB", "4TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 128MB, для работы требуется SAS-контроллер PIKE", "Серверные HDD SAS 3.5", "3.5", 220, 7, ""),
(DEFAULT, "Surveillance HDD 3.5 8TB", "8TB, SATA, 3.5 inch, 7200rpm, 128MB", "HDD для серверов видеонаблюдения SATA 3.5", "3.5", 260, 14, ""),
(DEFAULT, "Surveillance HDD 3.5 6TB", "6TB, SATA, 3.5 inch, 7200rpm, 128MB", "HDD для серверов видеонаблюдения SATA 3.5", "3.5", 185, 14, ""),
(DEFAULT, "Surveillance HDD 3.5 4TB", "4TB, SATA, 3.5 inch, 7200rpm, 64MB", "HDD для серверов видеонаблюдения SATA 3.5", "3.5", 125, 14, ""),
(DEFAULT, "Surveillance HDD 3.5 3TB", "3TB, SATA, 3.5 inch, 7200rpm, 64MB", "HDD для серверов видеонаблюдения SATA 3.5", "3.5", 100, 14, ""),
(DEFAULT, "Surveillance HDD 3.5 2TB", "2TB, SATA, 3.5 inch, 7200rpm, 64MB", "HDD для серверов видеонаблюдения SATA 3.5", "3.5", 75, 14, "");

INSERT INTO ram VALUES
(DEFAULT, "DDR4 ECC 8GB", "8GB, DDR4 UDIMM ECC, 2400Mhz", "Для серверов с процессорами E3/E", "ECC", 50, 7, ""),
(DEFAULT, "DDR4 ECC 16GB", "16GB, DDR4 UDIMM ECC, 2400Mhz", "Для серверов с процессорами E3/E", "ECC", 90, 7, ""),
(DEFAULT, "DDR4 RDIMM 8GB", "8GB, DDR4 RDIMM, 2400Mhz", "Для серверов с процессорами E5-2600 и Xeon Scalable", "ECC REG", 60, 14, ""),
(DEFAULT, "DDR4 RDIMM 16GB", "16GB, DDR4 RDIMM, 2400Mhz", "Для серверов с процессорами E5-2600 и Xeon Scalable", "ECC REG", 95, 7, ""),
(DEFAULT, "DDR4 RDIMM 32GB", "32GB, DDR4 RDIMM, 2400Mhz", "Для серверов с процессорами E5-2600 и Xeon Scalable", "ECC REG", 170, 7, "");

INSERT INTO options VALUES
(DEFAULT, "ASUS PIKE II 3108-8I/2G", "модуль защиты памяти RAID-контроллера", "RAID контроллеры", "forall", 410, 7, "https://www.asus.com/ru/Commercial-Servers-Workstations/PIKE-II-3108-8I-16PD-2G/ProductPrint/"),
(DEFAULT, "ASUS PIKE II 3108-8i/16PD/2G", "SAS 12Gb/s RAID 0/1/10/5/6/50/60 /2Gb  16PD", "RAID контроллеры", "forall", 380, 30, "https://www.asus.com/ru/Commercial-Servers-Workstations/PIKE-II-3108-8I-240PD-2G/"),
(DEFAULT, "ASUS PIKE II 3108-8I/240PD/2G", "SAS 12Gb/s RAID 0/1/10/5/6/50/60 /2Gb  240PD", "RAID контроллеры", "forall", 420, 30, "https://www.asus.com/ru/Commercial-Servers-Workstations/PIKE-II-3108-8I-240PD-2G/"),
(DEFAULT, "ASUS PIKE II 3008-8i", "SAS 12Gb/s RAID 0/1/1E/10", "RAID контроллеры", "forall", 185, 7, "https://www.asus.com/us/Commercial-Servers-Workstations/PIKE_II_30088i/"),
(DEFAULT, "ASUS ASMB8-iKVM", "для серверов серий RS100/RS200/RS300/TS300 серии Е9", "Модули удаленного доступа", "forall", 40, 7, "https://www.asus.com/us/Commercial-Servers-Workstations/ASMB8iKVM/"),
(DEFAULT, "ASUS ASMB8-iKVM", "для серверов серий RS100/RS200/RS300/TS300 серии Е10", "Модули удаленного доступа", "forall", 40, 7, "https://www.asus.com/us/Commercial-Servers-Workstations/ASMB8iKVM/"),
(DEFAULT, "Intel I350-AM2", "Dual Port Gigabit Server Adapter", "Сетевые контроллеры", "forall", 100, 14, "https://ark.intel.com/content/www/ru/ru/ark/products/52968/intel-ethernet-controller-i350-am2.html"),
(DEFAULT, "Intel OCP3.0 I350-T4", "Quad Port Gigabit Server Adapter", "Сетевые контроллеры", "forall", 190, 14, "https://ark.intel.com/content/www/ru/ru/ark/products/184824/intel-ethernet-network-adapter-i350-t4-for-ocp-3-0.html"),
(DEFAULT, "ASUS MCI-10G/X550-2T", "Dual Port 10Gbit BASE-T RJ-45", "Сетевые контроллеры", "forall", 205, 7, "https://www.asus.com/Commercial-Servers-Workstations/MCI-10G-X550-2T/"),
(DEFAULT, "ASUS MCI-10G/82599-2S", "Dual Port 10Gbit SFP+ LC Fiber Optic LP", "Сетевые контроллеры", "forall", 205, 7, "https://www.asus.com/uk/Commercial-Servers-Workstations/MCI-10G-82599-2S/"),
(DEFAULT, "Рельсы для установки в стойку", "для универсальных платформ TS300/TS500/TS700", "Дополнительные опции", "forall", 100, 30, ""),
(DEFAULT, "Корзина для дисков", "на 4 диска горячей замены для универсальных платформ TS300/TS500", "Дополнительные опции", "forall", 100, 30, "");