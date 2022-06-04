USE techshop
go
-- category data
INSERT INTO Product.categories (name) VALUES('Processor');
INSERT INTO Product.categories (name) VALUES('Video Card');
INSERT INTO Product.categories (name) VALUES('Memory');

-- title data
INSERT INTO People.title (name) VALUES('Restaurant Manager');
INSERT INTO People.title (name) VALUES('Paramedic');
INSERT INTO People.title (name) VALUES('Chef Manager');
INSERT INTO People.title (name) VALUES('Food Technologist');
INSERT INTO People.title (name) VALUES('Loan Officer');
INSERT INTO People.title (name) VALUES('Lecturer');
INSERT INTO People.title (name) VALUES('Staffing Consultant');
INSERT INTO People.title (name) VALUES('Doctor');
INSERT INTO People.title (name) VALUES('Retail Trainee');

-- city data
INSERT INTO Location.city (name) VALUES('Fort Lauderdale');
INSERT INTO Location.city (name) VALUES('Wien');
INSERT INTO Location.city (name) VALUES('Toledo');
INSERT INTO Location.city (name) VALUES('Nashville');
INSERT INTO Location.city (name) VALUES('Kansas City');
INSERT INTO Location.city (name) VALUES('Glendale');
INSERT INTO Location.city (name) VALUES('San Diego');
INSERT INTO Location.city (name) VALUES('Saint Paul');
INSERT INTO Location.city (name) VALUES('Venice');
INSERT INTO Location.city (name) VALUES('Fremont');
INSERT INTO Location.city (name) VALUES('Henderson');
INSERT INTO Location.city (name) VALUES('Fayetteville');
INSERT INTO Location.city (name) VALUES('Phoenix');
INSERT INTO Location.city (name) VALUES('Washington');
INSERT INTO Location.city (name) VALUES('Dallas');
INSERT INTO Location.city (name) VALUES('New York');
INSERT INTO Location.city (name) VALUES('Berlin');
INSERT INTO Location.city (name) VALUES('Los Angeles');
INSERT INTO Location.city (name) VALUES('Jacksonville');
INSERT INTO Location.city (name) VALUES('Las Vegas');

-- states data
INSERT INTO Location.states (name) VALUES('Nebraska');
INSERT INTO Location.states (name) VALUES('Kentucky');
INSERT INTO Location.states (name) VALUES('Hawaii');
INSERT INTO Location.states (name) VALUES('Georgia');
INSERT INTO Location.states (name) VALUES('South Dakota');
INSERT INTO Location.states (name) VALUES('Alabama');
INSERT INTO Location.states (name) VALUES('Florida');
INSERT INTO Location.states (name) VALUES('Kansas');
INSERT INTO Location.states (name) VALUES('Michigan');
INSERT INTO Location.states (name) VALUES('Alaska');


-- customer data
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Leilani','Walter','Caldwell   Grove',144,16,5,'1-408-225-0501','Leilani_Walter8587@nickia.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Violet','Dale','Cliff  Rue',357,7,3,'5-515-878-3051','Violet_Dale3584@cispeto.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Crystal','Vollans','Addison  Way',35,15,2,'6-335-541-8665','Crystal_Vollans4566@nanoff.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Josh','Hilton','Belgrave  Route',219,13,8,'5-304-145-7605','Josh_Hilton5695@sveldo.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Wade','Larkin','Church Tunnel',148,15,5,'3-748-212-8715','Wade_Larkin870@joiniaa.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Doug','Flett','Aylward   Avenue',499,11,1,'8-687-055-1311','Doug_Flett9364@bretoux.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Marjorie','Lomax','Elba  Crossroad',205,7,9,'8-704-662-4772','Marjorie_Lomax1626@gmail.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Tony','Fleming','Cloth  Tunnel',246,14,9,'4-041-084-7455','Tony_Fleming2016@nanoff.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Liam','Jefferson','Andrews  Boulevard',470,9,7,'4-376-863-8548','Liam_Jefferson6783@yahoo.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Abdul','Walsh','King Edward  Way',364,17,7,'2-168-132-6584','Abdul_Walsh2627@gembat.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Mandy','Matthews','Charnwood   Vale',123,2,10,'8-064-151-3061','Mandy_Matthews5939@extex.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Barry','Fall','Rail Pass',153,3,2,'8-533-740-7844','Barry_Fall7504@bauros.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Matt','London','Monroe Alley',413,3,4,'4-136-164-4538','Matt_London9213@brety.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Chris','Holt','Ernest  Boulevard',24,2,6,'1-267-271-0354','Chris_Holt7@qater.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Havana','Shelton','Fawn Way',439,10,4,'3-047-034-6267','Havana_Shelton404@hourpy.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Carter','Cowan','Caslon   Drive',413,7,4,'1-648-740-2361','Carter_Cowan5979@sveldo.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Sebastian','Driscoll','Canon Tunnel',212,14,4,'0-868-004-3850','Sebastian_Driscoll1686@extex.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Leroy','Price','Eldon  Vale',446,10,5,'8-053-666-3763','Leroy_Price6594@fuliss.net');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Liam','Moran','Boleyn  Crossroad',258,12,9,'3-013-148-0014','Liam_Moran2032@ovock.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Jane','Kirby','Lexington Boulevard',158,17,10,'0-854-803-2823','Jane_Kirby9088@gompie.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Davina','Palmer','Canon Hill',88,14,4,'6-574-000-6341','Davina_Palmer7225@zorer.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Javier','Ebbs','Ben   Vale',231,13,8,'1-712-348-5461','Javier_Ebbs1622@nickia.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Daron','Evans','Blore  Lane',494,8,7,'4-611-617-0036','Daron_Evans451@womeona.net');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Abdul','Bailey','Wakley   Rue',263,3,1,'8-705-187-6724','Abdul_Bailey2730@twace.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Cecilia','Williams','Ernest  Rue',170,3,6,'3-231-174-0814','Cecilia_Williams2369@gompie.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Eduardo','Carpenter','Fawn Avenue',140,19,4,'2-126-385-6001','Eduardo_Carpenter110@cispeto.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Chris','Olivier','Colombo   Alley',32,7,7,'8-000-501-7410','Chris_Olivier1711@liret.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('David','Logan','Duthie   Pass',482,18,4,'7-122-004-4131','David_Logan6118@deavo.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Maxwell','Kelly','Thrale   Crossroad',404,10,9,'5-717-233-4020','Maxwell_Kelly4417@bretoux.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Rocco','Thorne','Cecilia  Avenue',22,15,4,'2-675-488-8581','Rocco_Thorne4065@elnee.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Johnny','Burge','Chalcot  Walk',351,2,1,'0-011-303-4826','Johnny_Burge7399@cispeto.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Aeris','Palmer','Geffrye   Pass',200,10,5,'4-380-774-5363','Aeris_Palmer6766@ubusive.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Evelynn','Maxwell','West Vale',415,11,5,'6-535-881-7002','Evelynn_Maxwell5736@grannar.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Cynthia','Shaw','Queensberry  Avenue',116,18,10,'4-530-104-5855','Cynthia_Shaw9575@yahoo.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Erick','Lloyd','Chapel  Drive',443,6,8,'2-500-758-4255','Erick_Lloyd6510@grannar.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Ronald','Cobb','Victorian  Pass',466,16,4,'1-465-477-5643','Ronald_Cobb5938@tonsy.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Eduardo','Brown','Boleyn  Route',220,10,1,'5-882-457-5628','Eduardo_Brown5118@joiniaa.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Elijah','Swan','Andsell    Tunnel',414,3,10,'4-020-380-5524','Elijah_Swan3017@twipet.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Shannon','Stewart','Blackwall  Road',83,2,1,'0-230-606-0415','Shannon_Stewart3619@sveldo.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Hayden','Sherwood','Thomas More   Vale',313,15,10,'1-841-146-4125','Hayden_Sherwood365@qater.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Erick','Reid','Elia   Hill',459,8,6,'1-178-135-0084','Erick_Reid3424@dionrab.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Paige','Kelly','Thomas Doyle   Rue',276,1,6,'2-782-250-7246','Paige_Kelly3745@corti.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Sara','Norton','Apostle  Drive',50,2,5,'1-316-753-8083','Sara_Norton3475@ovock.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Ada','Strong','Geary   Lane',382,12,3,'7-378-585-3564','Ada_Strong9194@famism.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Martha','Mitchell','Durham Avenue',27,13,10,'1-530-403-5503','Martha_Mitchell5143@twipet.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Lynn','Lewis','Longleigh   Street',341,16,6,'4-283-867-1846','Lynn_Lewis9482@twipet.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Jenna','Whitehouse','Aberavon  Road',423,6,8,'8-613-674-4823','Jenna_Whitehouse8370@ubusive.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Domenic','Bright','Elba  Way',193,12,6,'6-555-862-7717','Domenic_Bright5281@zorer.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Jacqueline','Clark','Heritage Vale',423,8,6,'0-131-883-0334','Jacqueline_Clark6996@tonsy.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Lucy','Knight','Howard Walk',66,4,8,'1-042-417-5544','Lucy_Knight2029@bungar.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Paige','Emmott','Angela   Road',384,20,8,'3-637-623-2136','Paige_Emmott1743@guentu.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Maddison','Salt','Fairbairn  Avenue',418,10,5,'6-884-266-1363','Maddison_Salt2247@infotech44.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Ada','Truscott','Beechen  Walk',413,10,4,'3-170-052-4558','Ada_Truscott4749@bretoux.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Violet','Yang','King Edward  Route',304,13,1,'7-538-826-5260','Violet_Yang289@sveldo.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Angelina','Steer','Vintners  Street',20,10,8,'6-136-584-6131','Angelina_Steer8063@liret.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Cassidy','Gaynor','Carltoun   Vale',179,11,9,'2-784-121-3715','Cassidy_Gaynor1666@gmail.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Nick','Foxley','Camberwell  Tunnel',141,6,10,'1-272-772-5306','Nick_Foxley9623@bulaffy.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Mark','Payne','Underwood  Grove',347,8,4,'2-155-740-4770','Mark_Payne2264@guentu.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Eden','Ross','Fieldstone Boulevard',263,18,8,'4-081-451-3875','Eden_Ross9385@mafthy.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Roger','Rainford','Hammersmith  Road',126,4,1,'4-256-026-3011','Roger_Rainford4664@vetan.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Charlize','Oakley','Udall   Route',431,18,2,'8-042-224-8522','Charlize_Oakley7042@muall.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Manuel','Cann','Vintners  Grove',211,9,1,'7-534-808-3153','Manuel_Cann3036@bungar.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Chester','Farrow','Queen Caroline   Pass',487,6,4,'3-786-872-4883','Chester_Farrow4400@deons.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Lucas','Nicolas','Bempton   Boulevard',97,11,7,'4-573-636-1064','Lucas_Nicolas1815@muall.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Harriet','Malone','Linda   Road',115,14,10,'1-687-736-0537','Harriet_Malone7330@naiker.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Barry','Benson','Bury  Tunnel',206,12,3,'8-182-375-4028','Barry_Benson8504@nimogy.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Iris','Wilson','Arundel   Crossroad',38,20,2,'3-254-735-4367','Iris_Wilson943@iatim.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Jamie','Brock','Bacon  Route',286,3,5,'4-177-052-0733','Jamie_Brock6256@atink.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Daniel','Hill','Cecilia  Hill',179,1,1,'6-416-004-8844','Daniel_Hill8053@muall.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Macy','Harvey','Queen Walk',401,7,5,'4-344-465-5771','Macy_Harvey1355@kideod.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Naomi','Bristow','Bell    Road',274,17,1,'8-877-466-4275','Naomi_Bristow7031@mafthy.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Rachael','Wilde','Arthur  Way',206,18,4,'1-526-105-1362','Rachael_Wilde4799@acrit.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Emely','Davies','Blendon    Drive',485,17,2,'4-053-744-0731','Emely_Davies9543@brety.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Sonya','Marshall','Camley   Boulevard',306,3,4,'7-022-255-0553','Sonya_Marshall276@gembat.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Martin','Sherry','Belmont Park Boulevard',275,3,2,'5-214-572-0453','Martin_Sherry7070@hourpy.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Doug','Cox','Westcott  Way',468,17,10,'1-768-415-8880','Doug_Cox108@twace.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Joseph','Logan','Marina  Way',362,8,9,'1-002-376-2065','Joseph_Logan2965@nanoff.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Bob','Woods','Elba  Alley',353,14,3,'5-626-641-1481','Bob_Woods4782@deons.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Emerald','Cowan','Bacon  Vale',164,19,7,'7-246-871-6040','Emerald_Cowan6798@nimogy.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Erin','Irwin','Fawn Rue',150,10,2,'4-637-036-7883','Erin_Irwin7494@gompie.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Tyson','Thatcher','Wake  Pass',369,19,5,'3-417-343-7830','Tyson_Thatcher4618@womeona.net');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Aiden','Bell','Monroe Lane',230,9,9,'0-458-178-8585','Aiden_Bell4736@nimogy.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Brad','Pitt','Maple Rue',420,7,9,'0-432-038-7072','Brad_Pitt5347@kideod.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Anthony','Nash','Apsley    Tunnel',323,11,9,'3-448-722-7725','Anthony_Nash1080@infotech44.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Eileen','Squire','Cobden  Alley',261,19,2,'5-128-272-5131','Eileen_Squire8453@sveldo.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Miley','Eyres','Tilloch   Street',36,15,9,'1-553-418-2211','Miley_Eyres5211@brety.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Johnny','Butler','Catherine  Way',232,19,2,'6-732-738-3374','Johnny_Butler2669@tonsy.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('George','Kelly','Cleveland  Pass',294,7,4,'8-102-376-6255','George_Kelly8010@bauros.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Joseph','Tennant','Yorkshire  Way',392,2,9,'7-262-436-5477','Joseph_Tennant5872@typill.biz');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Danielle','Cox','Bective  Grove',270,3,8,'0-274-377-3307','Danielle_Cox2281@womeona.net');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Daniel','Warner','Bolingbroke  Crossroad',224,20,2,'6-661-861-7212','Daniel_Warner9585@atink.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Gabriel','Wilcox','Bicknell  Alley',289,20,2,'1-603-266-8750','Gabriel_Wilcox1623@gompie.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Marjorie','Huggins','Virginia Avenue',86,14,6,'1-852-327-5267','Marjorie_Huggins6@infotech44.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Kieth','Newman','South Rue',468,9,10,'3-517-534-6453','Kieth_Newman3054@muall.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Denis','Nelson','Eaglet  Lane',249,17,5,'5-711-574-4372','Denis_Nelson2491@vetan.org');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Denny','York','Wager   Walk',423,8,9,'6-146-241-1663','Denny_York6000@cispeto.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Olivia','Archer','Earl Rise Drive',277,20,3,'1-610-024-0505','Olivia_Archer4367@gompie.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Julius','Holmes','Vintners  Tunnel',199,8,3,'5-075-085-4772','Julius_Holmes4068@gompie.com');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Domenic','Stevenson','Bedford  Boulevard',78,14,1,'1-571-880-1161','Domenic_Stevenson6000@infotech44.tech');
INSERT INTO People.customers (firstname, lastname, street, str_number, city_id, state_id, phone, email) VALUES('Danny','Gray','Coalecroft  Lane',154,18,7,'7-230-022-4782','Danny_Gray7193@eirey.tech');

-- employee data
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Isla','Lee','Cleaver Avenue',64,12,3,'8-206-635-6034','Isla_Lee1767@nanoff.biz',4);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Leah','Fowler','Blenkarne  Crossroad',367,4,8,'0-785-728-1288','Leah_Fowler33@nanoff.biz',6);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Chester','Warden','Elia   Way',302,13,5,'4-706-304-2270','Chester_Warden1490@twace.org',2);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Daphne','Simpson','Chalcot  Crossroad',474,4,5,'2-116-754-7041','Daphne_Simpson6419@supunk.biz',1);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Doris','Lane','Cephas  Way',1,14,1,'8-031-353-2762','Doris_Lane9953@iatim.tech',9);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Mason','Middleton','Thomas Doyle   Pass',219,15,6,'0-466-534-0317','Mason_Middleton1336@jiman.org',2);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Benny','Marshall','Ben   Grove',427,16,5,'3-336-514-6223','Benny_Marshall3780@extex.org',1);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Benjamin','Benson','Catherine  Pass',369,8,2,'1-453-365-7086','Benjamin_Benson5897@atink.com',4);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Norah','Dale','Vincent  Hill',296,18,6,'7-713-058-3100','Norah_Dale2064@tonsy.org',1);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Valerie','Egerton','Chesterfield  Vale',226,5,5,'5-371-212-4162','Valerie_Egerton6644@deavo.com',7);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Julia','Lane','Canal  Lane',312,16,8,'4-813-543-8442','Julia_Lane3191@jiman.org',8);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Ramon','Hunt','Buttonwood Alley',334,18,3,'8-424-870-1456','Ramon_Hunt8829@guentu.biz',9);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Priscilla','Norton','Calverley  Road',126,7,8,'3-335-365-1407','Priscilla_Norton2249@infotech44.tech',7);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Livia','Wellington','Carlton  Crossroad',133,18,7,'5-376-021-3558','Livia_Wellington1727@nanoff.biz',9);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Noemi','Drew','Camdale  Hill',182,2,6,'0-572-740-3308','Noemi_Drew6928@sheye.org',1);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Boris','Snell','Blackwall  Road',97,9,3,'2-742-021-4645','Boris_Snell495@acrit.org',2);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Anne','Ebbs','Erindale Tunnel',117,6,10,'2-400-566-2271','Anne_Ebbs8149@joiniaa.com',1);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Logan','Murphy','West Tunnel',411,7,4,'0-664-887-3818','Logan_Murphy3280@womeona.net',1);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Davina','Connor','Gautrey  Crossroad',245,5,8,'8-466-772-4835','Davina_Connor8970@gmail.com',4);
INSERT INTO People.employee (firstname, lastname, street, str_number, city_id, state_id, phone, email, title_id) VALUES('Moira','Kennedy','Commercial  Route',467,20,10,'7-057-340-6871','Moira_Kennedy3938@naiker.biz',2);

-- Product data processor
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 3600', '1', '5', '44')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 3 4100', '1', '17', '46')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 5600X', '1', '11', '66')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 5600G', '1', '9', '92')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 5800X', '1', '3', '74')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 5800X3D', '1', '16', '26')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 5700X', '1', '5', '44')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 5500U', '1', '17', '11')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 9 5950X', '1', '15', '56')
insert into Product.products (name, category_id, stock, price) values ('Core i9-12900KS', '1', '1', '70')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 PRO 4650G', '1', '18', '26')
insert into Product.products (name, category_id, stock, price) values ('FX-6300', '1', '12', '50')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 5700G', '1', '13', '75')
insert into Product.products (name, category_id, stock, price) values ('A8-7680', '1', '0', '99')
insert into Product.products (name, category_id, stock, price) values ('Core i5-10400F', '1', '5', '36')
insert into Product.products (name, category_id, stock, price) values ('FX-8350', '1', '15', '28')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 3700X', '1', '13', '64')
insert into Product.products (name, category_id, stock, price) values ('Core 2 Duo E8400', '1', '1', '65')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 2600', '1', '12', '32')
insert into Product.products (name, category_id, stock, price) values ('Core i5-3470', '1', '1', '99')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 9 5900X', '1', '2', '7')
insert into Product.products (name, category_id, stock, price) values ('Core i9-12900K', '1', '1', '30')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 3 3200G', '1', '4', '38')
insert into Product.products (name, category_id, stock, price) values ('Core i7-3770', '1', '14', '86')
insert into Product.products (name, category_id, stock, price) values ('Core i7-12700F', '1', '14', '29')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 5800H', '1', '12', '14')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 4600G', '1', '14', '61')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 5500', '1', '19', '60')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 5800G', '1', '2', '1')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 6800U', '1', '3', '45')
insert into Product.products (name, category_id, stock, price) values ('Core i7-2600', '1', '2', '3')
insert into Product.products (name, category_id, stock, price) values ('Core i5-12400F', '1', '15', '93')
insert into Product.products (name, category_id, stock, price) values ('Core i3-10100', '1', '12', '49')
insert into Product.products (name, category_id, stock, price) values ('Core i7-12700K', '1', '7', '71')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 3500X', '1', '6', '28')
insert into Product.products (name, category_id, stock, price) values ('Core i5-650', '1', '12', '17')
insert into Product.products (name, category_id, stock, price) values ('Athlon 3000G', '1', '12', '48')
insert into Product.products (name, category_id, stock, price) values ('Core i7-11800H', '1', '18', '88')
insert into Product.products (name, category_id, stock, price) values ('Core i5-12400', '1', '6', '97')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 5 1600', '1', '3', '6')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 6800H', '1', '5', '62')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 3 2200G', '1', '18', '4')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 7 2700X', '1', '14', '34')
insert into Product.products (name, category_id, stock, price) values ('Core i7-1260P', '1', '14', '40')
insert into Product.products (name, category_id, stock, price) values ('FX-8320', '1', '17', '67')
insert into Product.products (name, category_id, stock, price) values ('Core i5-2400', '1', '6', '63')
insert into Product.products (name, category_id, stock, price) values ('Ryzen 3 3100', '1', '8', '50')
insert into Product.products (name, category_id, stock, price) values ('Core 2 Quad Q6600 (95W)', '1', '14', '7')
insert into Product.products (name, category_id, stock, price) values ('Athlon II X2 250', '1', '10', '67')

-- Product data vga
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3090 Ti', '2', '8', '55')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3060', '2', '1', '113')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3060 Ti', '2', '2', '54')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3080', '2', '19', '120')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3050 8 GB', '2', '0', '50')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3070', '2', '1', '143')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 6600 XT', '2', '14', '12')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3070 Ti', '2', '14', '43')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3090', '2', '0', '130')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 2060', '2', '7', '36')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 6600', '2', '17', '134')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 6700 XT', '2', '14', '36')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 3080 Ti', '2', '3', '127')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1050 Ti', '2', '14', '47')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 970', '2', '4', '81')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1060 6 GB', '2', '8', '93')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1080 Ti', '2', '15', '101')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1070', '2', '8', '144')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1650', '2', '1', '117')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 960', '2', '19', '17')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 6900 XT', '2', '7', '41')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 6500 XT', '2', '17', '99')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1080', '2', '18', '100')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 580', '2', '0', '99')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 570', '2', '4', '55')
insert into Product.products (name, category_id, stock, price) values ('GeForce GT 1030', '2', '12', '8')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1660 Ti', '2', '2', '106')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1660 SUPER', '2', '6', '118')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 550', '2', '16', '47')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 750 Ti', '2', '18', '126')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 2080 Ti', '2', '1', '104')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1050', '2', '7', '16')
insert into Product.products (name, category_id, stock, price) values ('GeForce 210', '2', '3', '78')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 6800 XT', '2', '10', '147')
insert into Product.products (name, category_id, stock, price) values ('GeForce GT 730', '2', '17', '21')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1650 SUPER', '2', '14', '28')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 4090', '2', '14', '118')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 550 Ti', '2', '8', '59')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 1660', '2', '1', '72')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 2070', '2', '15', '118')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 2070 SUPER', '2', '14', '97')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 950', '2', '8', '128')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 980 Ti', '2', '3', '55')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 4070', '2', '3', '14')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 760', '2', '18', '64')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 2060 SUPER', '2', '1', '124')
insert into Product.products (name, category_id, stock, price) values ('GeForce RTX 2080', '2', '3', '113')
insert into Product.products (name, category_id, stock, price) values ('Radeon RX 5700 XT', '2', '5', '99')
insert into Product.products (name, category_id, stock, price) values ('GeForce GTX 980', '2', '9', '114')

-- Product data memory
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('CORSAIR Vengeance LPX 16GB', '3', '10', '68');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('CORSAIR Vengeance RGB Pro 16GB', '3', '15', '75');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('G.SKILL Ripjaws V Series 16GB', '3', '9', '59');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('G.SKILL Ripjaws V Series 16GB', '3', '20', '75');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('OLOy Blade RGB 16GB', '3', '9', '70');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('OLOy Blade RGB 32GB', '3', '9', '120');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('OLOy Blade RGB 32GB', '3', '4', '400');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('CORSAIR Vengeance RGB RT 64GB', '3', '20', '270');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('OLOy 64GB', '3', '6', '600');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('CORSAIR Vengeance RGB Pro 32GB', '3', '6', '130');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('Team T-FORCE DARK Za 32GB', '3', '15', '113');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('G.SKILL Trident Z Neo (For AMD Ryzen) Series 32GB', '3', '10', '179');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('OLOy WarHawk RGB', '3', '10', '69');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('GeIL ORION 16GB', '3', '10', '59');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('G.SKILL TridentZ RGB Series 32GB', '3', '15', '174');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('CORSAIR Vengeance LPX 32GB', '3', '5', '145');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('OLOy OWL RGB 32GB', '3', '5', '124');
INSERT INTO Product.products (name, category_id, stock, price) VALUES ('OLOy OWL RGB 32GB', '3', '5', '124');

-- Order data
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(64,8,'2022-03-09 19:31:32');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(6,3,'2022-03-18 01:12:50');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(42,13,'2022-03-28 22:24:21');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(80,9,'2022-04-13 16:36:09');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(65,8,'2022-04-12 11:39:54');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(8,9,'2022-04-19 15:06:41');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(64,15,'2022-01-04 13:52:47');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(37,2,'2022-02-06 11:05:45');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(88,19,'2022-01-16 09:38:52');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(4,18,'2022-04-13 08:10:07');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(76,11,'2022-02-28 15:57:45');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(3,14,'2022-03-12 22:20:37');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(35,4,'2022-03-13 22:21:32');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(89,3,'2022-02-10 00:36:40');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(80,13,'2022-04-11 22:38:11');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(91,6,'2022-03-21 20:49:20');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(36,14,'2022-01-13 11:28:21');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(23,18,'2022-03-22 11:02:26');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(34,1,'2022-03-12 05:27:01');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(81,15,'2022-04-29 17:51:17');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(99,2,'2022-01-10 07:02:03');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(3,9,'2022-02-18 04:37:39');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(46,8,'2022-03-26 21:46:41');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(7,7,'2022-03-24 07:36:36');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(66,13,'2022-04-17 13:05:04');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(43,12,'2022-04-16 18:29:25');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(30,17,'2022-04-25 12:27:35');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(8,3,'2022-02-23 19:46:04');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(37,17,'2022-05-05 05:40:32');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(66,13,'2022-02-27 10:40:21');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(24,9,'2022-02-17 06:45:02');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(85,13,'2022-04-24 05:37:53');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(81,10,'2022-04-22 00:14:28');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(21,16,'2022-04-26 17:12:12');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(11,5,'2022-04-29 06:07:49');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(98,17,'2022-01-27 12:19:01');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(23,15,'2022-02-17 08:00:06');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(20,3,'2022-01-31 01:23:10');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(69,12,'2022-02-24 21:14:52');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(47,10,'2022-01-31 03:10:32');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(12,12,'2022-03-11 01:14:46');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(71,6,'2022-01-25 19:47:27');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(13,16,'2022-04-12 17:32:03');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(98,1,'2022-04-15 16:33:29');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(42,1,'2022-03-19 07:03:49');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(79,2,'2022-03-20 18:14:24');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(58,3,'2022-04-28 10:20:06');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(99,17,'2022-04-16 21:48:24');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(10,14,'2022-05-01 03:09:07');
INSERT INTO Orders.orders (customer_id, employee_id, order_date) VALUES(75,8,'2022-01-03 00:37:12');

-- Order details data
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('1', '1', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('2', '65', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('3', '22', '2');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('4', '95', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('5', '112', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('6', '15', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('7', '66', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('8', '78', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('9', '77', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('10', '111', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('11', '115', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('12', '12', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('13', '70', '3');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('14', '12', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('15', '33', '2');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('16', '79', '2');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('17', '82', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('18', '56', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('19', '56', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('20', '81', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('21', '101', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('22', '103', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('23', '60', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('24', '12', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('25', '30', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('26', '12', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('27', '5', '2');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('28', '19', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('29', '85', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('30', '74', '2');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('31', '12', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('32', '65', '4');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('33', '58', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('34', '55', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('35', '77', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('36', '110', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('37', '96', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('38', '15', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('39', '27', '2');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('40', '23', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('41', '110', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('42', '18', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('43', '26', '3');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('44', '64', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('45', '69', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('46', '17', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('47', '96', '3');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('48', '91', '1');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('49', '25', '4');
INSERT INTO Orders.order_list (order_id, product_id, quantity) VALUES ('50', '26', '1');

-- Component speed data
INSERT INTO Product.component_speed (value) VALUES ('1300');
INSERT INTO Product.component_speed (value) VALUES ('1875');
INSERT INTO Product.component_speed (value) VALUES ('1750');
INSERT INTO Product.component_speed (value) VALUES ('2000');
INSERT INTO Product.component_speed (value) VALUES ('2666');
INSERT INTO Product.component_speed (value) VALUES ('3200');
INSERT INTO Product.component_speed (value) VALUES ('3500');
INSERT INTO Product.component_speed (value) VALUES ('3600');
INSERT INTO Product.component_speed (value) VALUES ('3800');
INSERT INTO Product.component_speed (value) VALUES ('4000');


-- vga_chip data
INSERT INTO Product.vga_chip (name) VALUES ('GM107');
INSERT INTO Product.vga_chip (name) VALUES ('GA106');
INSERT INTO Product.vga_chip (name) VALUES ('GA104');
INSERT INTO Product.vga_chip (name) VALUES ('GA102');
INSERT INTO Product.vga_chip (name) VALUES ('NAVI 10');
INSERT INTO Product.vga_chip (name) VALUES ('NAVI 24');
INSERT INTO Product.vga_chip (name) VALUES ('Navi 23');
INSERT INTO Product.vga_chip (name) VALUES ('Navi 22');
INSERT INTO Product.vga_chip (name) VALUES ('Navi 21');
INSERT INTO Product.vga_chip (name) VALUES ('TU102');
INSERT INTO Product.vga_chip (name) VALUES ('TU104');
INSERT INTO Product.vga_chip (name) VALUES ('TU106');
INSERT INTO Product.vga_chip (name) VALUES ('TU117');
INSERT INTO Product.vga_chip (name) VALUES ('TU116');
INSERT INTO Product.vga_chip (name) VALUES ('GP108');
INSERT INTO Product.vga_chip (name) VALUES ('GP107');
INSERT INTO Product.vga_chip (name) VALUES ('GP106');
INSERT INTO Product.vga_chip (name) VALUES ('GP104');
INSERT INTO Product.vga_chip (name) VALUES ('GP102');
INSERT INTO Product.vga_chip (name) VALUES ('GM200');
INSERT INTO Product.vga_chip (name) VALUES ('GM204');
INSERT INTO Product.vga_chip (name) VALUES ('GM206');
INSERT INTO Product.vga_chip (name) VALUES ('Polaris 20');
INSERT INTO Product.vga_chip (name) VALUES ('Polaris 21');
INSERT INTO Product.vga_chip (name) VALUES ('LEXA');
INSERT INTO Product.vga_chip (name) VALUES ('GT218');
INSERT INTO Product.vga_chip (name) VALUES ('GK208B');
INSERT INTO Product.vga_chip (name) VALUES ('GK104');
INSERT INTO Product.vga_chip (name) VALUES ('AD102');
INSERT INTO Product.vga_chip (name) VALUES ('AD103');
INSERT INTO Product.vga_chip (name) VALUES ('GF116');

-- vga info data
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('50', '4', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('51', '2', '2');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('52', '3', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('53', '4', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('54', '2', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('55', '3', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('56', '7', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('57', '3', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('58', '4', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('59', '12', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('60', '7', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('61', '8', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('62', '4', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('63', '16', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('64', '21', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('65', '17', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('66', '19', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('67', '18', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('68', '13', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('69', '22', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('70', '9', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('71', '6', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('72', '18', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('73', '23', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('74', '23', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('75', '15', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('76', '14', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('77', '14', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('78', '25', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('79', '1', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('80', '10', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('81', '16', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('82', '26', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('83', '9', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('84', '27', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('85', '14', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('86', '29', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('87', '31', '1');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('88', '14', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('89', '12', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('90', '11', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('91', '22', '2');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('92', '20', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('93', '30', '4');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('94', '28', '2');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('95', '12', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('96', '11', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('97', '5', '3');
INSERT INTO Product.vga (product_id, chip_id, speed_id) VALUES ('98', '21', '4');

-- processor socket data
INSERT INTO Product.processor_socket (name) VALUES ('AM4');
INSERT INTO Product.processor_socket (name) VALUES ('FP6');
INSERT INTO Product.processor_socket (name) VALUES ('1700');
INSERT INTO Product.processor_socket (name) VALUES ('AM3+');
INSERT INTO Product.processor_socket (name) VALUES ('FM2+');
INSERT INTO Product.processor_socket (name) VALUES ('1200');
INSERT INTO Product.processor_socket (name) VALUES ('775');
INSERT INTO Product.processor_socket (name) VALUES ('1155');
INSERT INTO Product.processor_socket (name) VALUES ('FP7');
INSERT INTO Product.processor_socket (name) VALUES ('1156');
INSERT INTO Product.processor_socket (name) VALUES ('1499');
INSERT INTO Product.processor_socket (name) VALUES ('1744');
INSERT INTO Product.processor_socket (name) VALUES ('AM3');

-- processor info data
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('1', '1', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('2', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('3', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('4', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('5', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('6', '1', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('7', '1', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('8', '2', '4');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('9', '1', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('10', '3', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('11', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('12', '4', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('13', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('14', '5', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('15', '6', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('16', '4', '10');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('17', '1', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('18', '7', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('19', '1', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('20', '8', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('21', '1', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('22', '3', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('23', '1', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('24', '7', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('25', '3', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('26', '2', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('27', '1', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('28', '1', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('29', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('30', '9', '5');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('31', '8', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('32', '3', '5');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('33', '6', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('34', '3', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('35', '1', '8');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('36', '10', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('37', '1', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('38', '11', '5');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('39', '3', '5');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('40', '1', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('41', '9', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('42', '1', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('43', '1', '9');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('44', '12', '4');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('45', '4', '7');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('46', '8', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('47', '1', '6');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('48', '7', '5');
INSERT INTO Product.processor (product_id, socket_id, speed_id) VALUES ('49', '13', '6');

-- Memory type data
INSERT INTO Product.memory_type (name) VALUES ('DDR4');
INSERT INTO Product.memory_type (name) VALUES ('DDR4 NON ECC');

-- Memory info data
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('99', '1', '5');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('100', '1', '5');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('101', '1', '6');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('102', '1', '7');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('103', '1', '7');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('104', '1', '7');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('105', '1', '8');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('106', '2', '6');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('107', '1', '6');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('108', '1', '7');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('109', '1', '6');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('110', '1', '6');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('111', '1', '7');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('112', '1', '7');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('113', '1', '6');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('114', '1', '10');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('115', '1', '8');
INSERT INTO Product.memory (product_id, ddr_id, speed_id) VALUES ('116', '1', '8');
