CREATE DATABASE IF NOT EXISTS `shopu`;

CREATE TABLE `shopu`.`users` (
  `id` INT AUTO_INCREMENT,
  `student_id` VARCHAR(9),
  `username` VARCHAR(30),
  `email` VARCHAR(50),
  `password` VARCHAR (255),
  `image` MEDIUMBLOB,
  PRIMARY KEY(`id`),
  UNIQUE KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `shopu`.`categories` (
  `id` INT,
  `category` VARCHAR(25),
  `image` MEDIUMBLOB,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `shopu`.`item` (
  `id` INT AUTO_INCREMENT,
  `title` TEXT,
  `seller_id` INT,
  `price` DECIMAL(10,2),
  `category` INT,
  `description` TEXT,
  `keywords` TEXT,
  `image` MEDIUMBLOB,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`seller_id`) REFERENCES `users`(`id`) ON DELETE CASCADE,
  FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `shopu`.`categories` (`id`, `category`) VALUES
  (1, 'Books'),
  (2, 'Clothes'),
  (3, 'Electronics'),
  (4, 'Furniture'),
  (5, 'Transportation'),
  (99, 'Other');

INSERT INTO `shopu`.`users` (`student_id`, `username`, `email`, `password`) VALUES
('123456789', 'foobar', 'foobar@sfsu.edu', 'password');

INSERT INTO `shopu`.`item` (`id`,`title`,`seller_id`,`price`,`category`,`description`,`keywords`) VALUES
(1,'Harry Potter and the Prisoner of Azkaban',1,35.0,1,'Part of J.K. Rowlings critically-acclaimed series. Made into the motion picture.','harry, potter, critically, acclaimed, series'),
(2,'Harry Potter and the Sorcerer''s Stone',1,35.0,1,'Part of J.K. Rowlings critically-acclaimed series. Made into the motion picture.','harry, potter, critically, acclaimed, series'),
(3,'Harry Potter and the Order of the Phoenix',1,45.0,1,'Part of J.K. Rowlings critically-acclaimed series. Made into the motion picture.','harry, potter, critically, acclaimed, series'),
(4,'50 Shades of Grey',1,40.0,1,'New York Times Bestsellers list for 25 weeks in a row.','new, york, times, bestsellers, 50, grey, shades, book'),
(5,'Clifford The Big Red Dog Goes to Work',1,20.0,1,'New York Times Bestsellers list for 5 weeks in a row.','new, york, times, bestsellers, clifford, big, children, dog, book'),
(6,'Time Magazine ',1,3.0,1,'The July Issue - Black Lives Matter','magazine, time, july, black, lives'),
(7,'The New Yorker Magazine',1,2.0,1,'The June Issue - How Detroit is catching-up to silicon valley.','detroit, silicon, valley, june, new, yorker, magazine'),
(8,'Junie B. Jones Pet Detective',1,5.0,1,'Children''s book to teach reading and friendship','children''s, book, detective, friendship'),
(9,'I Get Money I Get Paid',1,7.0,1,'Rapper 50 Cent''s critically-acclaimed best seller','bestsellers, rap, 50 cent'),
(10,'How To Be A Ninja',1,10.0,1,'Niga Higa''s greatest video turned into a instructional book.','Niga, Higa, instructional, book'),
(11,'Versace Bathrobe',1,565.0,2,'Versace bathrobe made with cotton and silk blend','Versace, bathrobe, silk, cotton'),
(12,'Versace Underwear',1,115.0,2,'Versace underwear made with cotton and silk blend','Versace, underwear, cotton, silk'),
(13,'Versace Gold Chain',1,1150.0,2,'Versace 24K gold chain','Versace, gold, chain, 24k'),
(14,'Lanvin Rings',1,650.0,2,'Lanvin Ring set made with painted brass','Lanvin, Ring, painted, black, brass'),
(15,'Bape T-Shirt',1,99.0,2,'Bape T-shirt from spring ''16 collection','Bape, t-shirt'),
(16,'Bapestar Shoes',1,125.0,2,'Bape bapestar shoes from spring 15'' collection','Bape, bapestar, shoes'),
(17,'Nike Air Max 90s Infrared',1,120.0,2,'Nike Air max 90s in infrared colorway','nike, air, max, 90s, infrared, running'),
(18,'A.P.C Jeans 32x32',1,225.0,2,'French brand A.P.C jeans size 32x32','french, a.p.c., 32x32, jeans'),
(19,'Adidas Tiro 13',1,65.0,2,'Adidas soccer pants','adidas, soccer, pants, tapered'),
(20,'iPod Classic 11th Gen 64GB',1,150.0,3,'Holds up to 5,000 songs','iPod, Music, Player, 11th, gen, 64, gb, Apple'),
(21,'iPod Classic 8th Gen 128GB',1,85.0,3,'Holds up to 15,000 songs','iPod, Classic, Player, 11th, gen, 64, gb, Apple'),
(22,'Apple iPhone 6s Plus 64GB',1,650.0,3,'Apple''s innovative phone combined with an iPod''s features','Apple, iPhone, Plus, 6s, 64, gb, phone'),
(23,'Samsung Galaxy S6 16GB',1,450.0,3,'Samsung lcd touchscreen phone','Galaxy, S6, 16, gb, Galaxy, phone'),
(24,'Beats By Dr. Dre Solo HD Bluetooth',1,220.0,3,'Designed by Dr. Dre for anyone who enjoys listening to bass-heavy music','Dr. Dre, Beats, solo, HD, bluetooth, headphones'),
(25,'Apple MacBook Pro 15" 256 GB',1,1550.0,3,'Apple''s response to a personal computer that is portable','MBP, macbok, pro, 15", 256, gb, apple, laptop'),
(26,'Razer Deathadder Mouse',1,95.0,3,'Gaming mouse that has 10,000 dpi','Razer, gaming, mouse, deathadder'),
(27,'World of Warcraft: Mists of Pandaria ',1,25.0,3,'The newest expansion to the critically-acclaimed MMORPG','World of Warcraft, WOW, expansion, game'),
(28,'J. Cole Forest Hills Drive Delux',1,20.0,3,'Hip-Hop Artist J. Cole''s third-album that has reached mult-platinum status','J. Cole, music, platinum, rap, hip-hop, forest, hills, drive'),
(29,'J. Crew Cardigan',1,195.0,3,'J. Crew Cardigan made with cashmere','cashmere, cardigan, J. Crew'),
(30,'Knoll Saarinen Dining Table - 47" Round',1,2283.0,4,'Marble table with modern design','Innovative, Furniture, Table, Marble, Modern Design, Knoll'),
(31,'Knoll Tulip Armless Chair',1,1438.0,4,'Seat shell is molded fiberglass','Chic, Chair, Armless, Fiberglass, Molded, Knoll'),
(32,'Knoll Saarinen Executive Arm Chair',1,1600.0,4,'Molded reinforced polyurethane back shell with a contoured plywood seat form','Molded, Chair, Executive, Knoll'),
(33,'Knoll Womb Chair',1,3803.0,4,'Seat shell is foam-covered molded fiberglass','Chair, molded, Seat, Riser, Knoll'),
(34,'Knoll Barcelona Table',1,1772.0,4,'Top is 3/4" thick clear glass with an 1/8" beveled edge','Table, Marble, Modern, Knoll'),
(35,'Knoll Florence Knoll Sofa',1,10911.0,4,'Exposed metal frame and legs in heavy gauge steel and inner frame of solid wood','Sofa, Modern, Chic, Leather, Knoll'),
(36,'Knoll Florence Knoll Bench',1,2404.0,4,'Exposed metal frame bench','Sofa, Modern, Chic, Leather, Knoll'),
(37,'Knoll Platner Dining Table',1,3679.0,4,'Top is clear 3/8" tempered glass with bevel on underside','Dining, Table, Marble, Modern, Knoll'),
(38,'Knoll 1966 Adjustable Chaise',1,2878.0,4,'Seat and back are woven vinyl coated polyester mesh','Mesh, Modern, Chair, Reclining, Knoll'),
(39,'Knoll Pixel Electric Height Adjustable C-Leg Desk, 60" x 30"',1,2671.0,4,'Worksurface tops are available in additional sizes, colors and finishes','Adjustable, Table, Work, Knoll'),
(40,'iPod Nano 8th Gen 8GB',1,100.0,4,'Holds up to 1,000 songs','Music, Player, iPod, nano, gen, 8th, 8, gb, Apple'),
(41,'Supreme Bruce Lee Skateboard',1,200.0,5,'Bone Bearings Red Bearings, Sector 9 Cruiser Wheels, Thunder Izod Trucks','Skateboard, Cruiser, Sector 9, Supreme'),
(42,'Penny Board 22"',1,65.0,5,'Pink Pennyboard ','Skateboard, Penny'),
(43,'Boosted Board',1,1000.0,5,'Electric Boosted Board goes up to 10 miles per charge','Boosted, Electric, Skateboard'),
(44,'Thrasher Skateboard',1,100.0,5,'Thrasher Skateboard','Thrasher, Skateboard'),
(45,'Razor Electric Scooter',1,300.0,5,'Electric Scooter','Electric, Scooter'),
(46,'Solowheel Extreme',1,2300.0,5,'Electric Wheel','Electric, Wheel'),
(47,'zBoard Pro',1,900.0,5,'Electric Skateboard','Electric, Skateboard'),
(48,'Hovertrax',1,2295.0,5,'Electric Biwheel','Electric, Biwheel'),
(49,'PhunkeeDuck',1,1500.0,5,'Electric Biwheel','Electric, Biwheel'),
(50,'1945 Honda Civic',1,1000.0,5,'Base Model Honda Civic 200,000 pre-existing miles','Honda, Civic, Car'),
(51,'2010 Audi R8',1,96000.0,5,'Base Model Audi R8, 20,000 pre-existing miles','Audi, R8, Sports, Car'),
(52,'2006 Toyota Prius',1,10000.0,5,'Base Model Toyoda Prius, 40,000 pre-existing miles','Electric, Hybrid, Car, Toyota, Prius'),
(53,'Rose Bunch',1,25.0,99,'A bunch of roses for your loved one.','Roses, Bunch, Flowers'),
(54,'Cactus from Lav Vegas',1,38.0,99,'A cactus we picked-up from the nevada desert.','Nevada, Cactus'),
(55,'Bonsai Tree',1,260.0,99,'A homemade bonsai tree we made in 1995','Bonsai, tree, 1995, Old'),
(56,'Ikea comforter',1,15.0,99,'A comforter bough from ikea, brand-new.','Comforter, bedding'),
(57,'Scented Candles Strawberry',1,10.0,99,'A homemade candle scented with strawberries','Candles, Strawberry, Handmade, Homemade'),
(58,'Scented Candles Mango',1,11.0,99,'A homemade candle scented with mangos','Candles, Mangos, Handmade, Homemade'),
(59,'Scented Candles Vanilla',1,12.0,99,'A homemade candle scented with vanilla','Candles, Vanilla, Handmade, Homemade'),
(60,'L-Shaped Wrench',1,5.0,99,'A L-shaped wrench for hex-screws','Wrench, Screws'),
(61,'Philips screwdriver',1,7.0,99,'A Large Philips screwdriver','Large, Philips, Screw, Screwdriver'),
(62,'Head Tennis Racket for men',1,35.0,99,'A Head Tennis Racket for men already stringed, Used','Head, Tennis, Racket'),
(63,'Flashlight Industrial',1,25.0,99,'Industrial flashlight','Flashlight, Industrial'),
(64,'Very loud Alarm Clock',1,15.0,99,'An alarm clock that is very loud 200 decibels','Alarm, Clock, Loud'),
(65,'24-pack corona Extra Beer',1,20.0,99,'A unopened 24-pack of corona extra beer glass bottles','Beer, Corona, Extra'),
(66,'6 Baked cookies',1,5.0,99,'6 homebaked cookies with chocolate chips','Cookies, Homebaked, Homemade'),
(67,'Homemade pasta',1,5.0,99,'Homemade spaghetti with meatballs','Pasta, Homemade'),
(68,'Grilled Cheese Sandwich',1,3.0,99,'Homemade grilled cheese sandwich with your choice of bacon, ham, chicken, or tomatoes','Grilled Cheese Sandwich');
