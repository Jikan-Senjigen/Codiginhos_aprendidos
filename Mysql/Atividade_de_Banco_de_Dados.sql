create table if not exists Funcionario (
	Codigo varchar(10) primary key,
	PrimeiroNome varchar(100) not null,
	SegundoNome varchar(100),
	UltimoNome varchar(100) not null,
	DataNasci date not null,
	CPF decimal(11,0) unique not null,
	RG varchar(10),
	Endereco varchar(255) not null,
	CEP decimal(8,0) not null,
	Cidade varchar (255) not null,
	Fone varchar(15),
	Funcao varchar(100) not null,
	Salario DECIMAL(7,2) not null,
	CodigoDepartamento varchar(5)
);

create table if not exists Departamento(
	Codigo varchar(5) primary key,
	Nome varchar(200) not null,
	Localizacao varchar(255) not null,
	CodigoFuncionarioGerente varchar(10) not null,
	constraint fk_CodigoFuncionarioGerente
	foreign key (CodigoFuncionarioGerente)
	references Funcionario(Codigo)
	on update cascade
	on delete restrict
);

INSERT INTO Funcionario
	(Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco,
		CEP, Cidade, Fone, Funcao, Salario, CodigoDepartamento)
VALUES
('GER0000001', 'Eddie', null, 'Smith', '1982-12-12', 37548742606, null, 'PSC 4824, Box 6347\nAPO AE 01353', 5315075, 'Vitória', '3356033384', 'Gerente', 9163.76, 'ADM01'),
('GER0000002', 'Alison', null, 'Davis', '1986-06-26', 66847811351, null, 'USS Vasquez\nFPO AE 09333', 9325029, 'Rio de Janeiro', '5947782345', 'Gerente', 49150.34, 'PES01'),
('GER0000003', 'Sarah', null, 'Mitchell', '1983-05-14', 60677853155, null, '21804 Nicholas Mission\nSheltonberg, DE 13726', 1714031, 'Boa Vista', '7839343131', 'Gerente', 8765.79, 'TEC01'),
('GER0000004', 'John', null, 'Rowe', '1999-05-28', 4700758638, null, '8207 James Lodge\nConnieshire, VT 56594', 7521127, 'Rio Branco', '7189240568', 'Gerente', 11702.62, 'MAR01'),
('GER0000005', 'Lori', null, 'Durham', '1990-01-29', 96996602035, null, 'USCGC Silva\nFPO AE 52672', 5112180, 'Boa Vista', '2398130884', 'Gerente', 12341.48, 'COM01'),
('GER0000006', 'Lisa', null, 'Fields', '1992-07-17', 26258495022, null, '203 Roberson Cove\nSouth Vicki, PA 49000', 7861088, 'Palmas', '2013033303', 'Gerente', 15441.47, 'OPE01'),
('GER0000007', 'Jason', null, 'Carey', '1997-09-16', 73103682474, null, '283 Shelton Station\nSouth Kara, GA 61922', 9441139, 'Campo Grande', '3549141121', 'Gerente', 22218.12, 'VEN01')
;

INSERT INTO Departamento
(Codigo, Nome, Localizacao, CodigoFuncionarioGerente)
VALUES('ADM01', 'Administração', '110 Smith Parkway Apt. 986\nJonesborough, HI 5...', 'GER0000001'),
('PES01', 'Pessoal', '030 Lyons Hollow\nGeorgeborough, LA 40150', 'GER0000002'),
('TEC01', 'Tecnologia', '03198 Bailey Burgs\nSouth Maria, DE 32551', 'GER0000003'),
('MAR01', 'Controladoria', '6580 Veronica Island\nKimberlychester, MD 89265', 'GER0000004'),
('COM01', 'Comercial', 'PSC 0126, Box 0487\nAPO AE 49015', 'GER0000005'),
('OPE01', 'Operações', '68369 Meyers Squares\nMurraystad, TX 92086	', 'GER0000006'),
('VEN01', 'Vendas', '23780 Hardin Lodge\nStevenside, OH 42266', 'GER0000007')
;

alter table Funcionario add constraint fk_CodigoDepartamento
	foreign key (CodigoDepartamento)
	references Departamento(Codigo)
	on update cascade
	on DELETE set null;

INSERT INTO Funcionario
	(Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP,
	Cidade, Fone, Funcao, Salario, CodigoDepartamento)
VALUES
('Ven7788631','Jerry',null,'Thomas','2002-02-18',73729372067,null,'3972 Hogan CenterNorth Stephanieberg, IA 32889',1927795,'Vitória','6962377833','Vendedor',13473.29,'PES01'),
('Ate8568191','Janet',null,'Hart','1994-12-18',19798230471,null,'4642 Farmer Spurs Suite 798South Lisa, DC 35945',9106730,'Campo Grande','4076784106','Atendente',2883.42,'OPE01'),
('Con6210689','Maria',null,'Jones','1973-01-08',8450616142,null,'614 Kimberly Loop Apt. 788Reyesburgh, TN 10916',4389949,'Palmas','4763819157','Contador',8515.51,'PES01'),
('Con9219703','John',null,'Ward','2002-04-06',93749988876,null,'28353 Miller GreenLake Bryan, FL 92831',1377454,'Recife','2462452019','Contador',15846.39,'COM01'),
('Sup1753419','Tracey',null,'Fox','1986-06-09',19435649923,null,'651 Stewart Meadows Apt. 907Matthewborough, CO 32360',4705013,'Goiânia','6913738481','Supervisor',17057.28,'COM01'),
('Sup6323587','Joshua',null,'Sharp','1995-04-06',35562328780,null,'7453 Denise GreenWest Angelaburgh, WI 67719',455647,'Salvador','2252318222','Supervisor',12846.46,'OPE01'),
('Ven6414288','Kevin',null,'Hernandez','1979-11-05',78441601,null,'3964 Tiffany Parkways Apt. 862Jessicafurt, ID 27391',146267,'Cuiabá','6272465690','Vendedor',3884.53,'TEC01'),
('Ate0513829','Danielle',null,'Conner','1975-09-08',46856199057,null,'196 Thomas CommonWest Courtney, VI 59458',4379071,'Florianópolis','7729720729','Atendente',5258.44,'OPE01'),
('Dir1754141','Pamela',null,'Greer','1971-06-25',26869889331,null,'896 Campbell ValleyBerryburgh, AS 42174',7507305,'Recife','5725535563','Diretor',20594.76,'MAR01'),
('Con0632530','David',null,'Johnson','1973-01-10',84456095462,null,'USCGC ThomasFPO AP 95770',4376510,'Palmas','4835126326','Contador',6260.89,'TEC01'),
('Tel6385393','Emily',null,'Coleman','1992-04-08',99761740953,null,'5871 Mcclain Parks Suite 776Robertport, MN 70250',1222438,'Goiânia','9167397009','Telefonista',3639.0,'PES01'),
('Des0873113','Deborah',null,'Wright','1976-01-26',8690135858,null,'918 Zachary Tunnel Apt. 406Hugheshaven, ID 76356',2214261,'Boa Vista','4917996388','Desenvolvedor',14557.13,'COM01'),
('Des4029947','Heather',null,'Lutz','2001-08-08',96779801315,null,'371 Meyer MewsWestberg, GU 65196',2281600,'Boa Vista','4972647456','Desenvolvedor',15605.22,'ADM01'),
('Dir4927316','Curtis',null,'Herrera','1986-06-14',40164243317,null,'9769 Curry PikeNorth Christopherchester, NY 05215',2064990,'Fortaleza','7616933357','Diretor',1147.55,'PES01'),
('Des3673476','Amber',null,'Smith','1971-09-05',60917154767,null,'USS WarnerFPO AP 49441',4452984,'Belém','8418106064','Desenvolvedor',4323.59,'PES01'),
('Con8952425','Derek',null,'Peters','1979-06-13',14624785077,null,'0132 David Ford Apt. 378Paynetown, MP 12242',1599547,'Maceió','2223510676','Contador',7450.0,'OPE01'),
('Rec3213510','Randall',null,'Neal','1996-07-17',51406623055,null,'4166 Hayden RidgeNew Robertmouth, TX 16656',7044116,'Curitiba','5108458268','Recrutador',16376.21,'COM01'),
('Ven0302415','Cathy',null,'Lewis','1970-02-03',72498985383,null,'17601 Charles StreetsSouth Audreytown, KS 15665',2228421,'Rio Branco','2156660096','Vendedor',2685.31,'VEN01'),
('Con9885192','Richard',null,'Gregory','1994-07-14',98456987770,null,'96930 Andrew StationNew Michelle, NH 75520',4012764,'Salvador','5254581017','Contador',13047.17,'VEN01'),
('Ven1516255','Mary',null,'Peters','2001-02-06',68460751375,null,'75471 James Wall Apt. 856New Sarahmouth, FM 08217',216154,'Goiânia','4033786132','Vendedor',19085.07,'COM01'),
('Sup1298281','Dr.','Kimberly','Clark','1984-05-11',39225052750,null,'5722 Carly Turnpike Apt. 291West Trevor, CT 48939',7234321,'Boa Vista','8759629971','Supervisor',20243.0,'OPE01'),
('Dir9153715','Gabrielle','Ramirez','DVM','1982-08-02',3661548029,null,'3870 Moore CovesWest Edward, CO 98918',8938845,'Florianópolis','3196330000','Diretor',2599.1,'ADM01'),
('Ven9668815','Julie',null,'Hernandez','1995-12-14',25416560585,null,'8768 Matthew Island Suite 347West Karenberg, OK 06694',6408706,'Natal','4475894951','Vendedor',12997.27,'ADM01'),
('Des3612487','Michael',null,'Moore','1976-03-02',28992127331,null,'960 Fuentes RapidsNicolastown, OR 46416',3434323,'São Luís','9565801100','Desenvolvedor',6351.7,'ADM01'),
('Ven2654858','Lindsey',null,'Hammond','2003-04-28',78816195786,null,'43657 Elliott GatewayEast Loribury, GA 20864',1537365,'Recife','2907744053','Vendedor',5241.72,'MAR01'),
('Sup7469523','Brian',null,'Davis','2003-02-20',56046810690,null,'45602 Lowery Extension Suite 920Port Annfurt, MI 10957',5602726,'Florianópolis','8772469991','Supervisor',11720.42,'COM01'),
('Rec8516609','Lisa',null,'Blevins','1997-10-28',53606710130,null,'566 Wang SummitFernandoton, RI 27218',6393681,'Recife','9603636341','Recrutador',11522.63,'MAR01'),
('Tel0526444','Stephanie',null,'Lutz','2002-08-24',51596243272,null,'957 Washington JunctionsSouth Benjaminborough, AR 41024',5453666,'Porto Velho','4243343700','Telefonista',12449.01,'MAR01'),
('Con7366310','Timothy',null,'Douglas','1974-10-01',36011115936,null,'620 Lauren Land Apt. 330West Leslie, HI 69008',3579466,'Natal','2979847675','Contador',2822.23,'OPE01'),
('Ven7884839','Brandon',null,'Mcdowell','2000-12-29',80157254502,null,'428 Jessica PointSouth Karafort, GA 77955',8213263,'Vitória','2006400346','Vendedor',7011.01,'COM01'),
('Des0379974','Jessica',null,'Lewis','1993-12-30',58430760958,null,'041 Ryan FlatWest Ryanfort, DE 44928',3317084,'Salvador','9487408210','Desenvolvedor',18684.94,'MAR01'),
('Sup4205622','Kathryn',null,'Rodriguez','1981-10-17',20303083406,null,'562 Kenneth Port Suite 740South Donaldfurt, CA 82634',3559870,'Campo Grande','8374858998','Supervisor',7974.31,'PES01'),
('Des0115098','Caleb',null,'Mejia','1992-03-09',11464573963,null,'4855 William FordPort Shawnland, ID 37474',1612309,'Belo Horizonte','5842788680','Desenvolvedor',19297.0,'TEC01'),
('Ven8227385','Maria',null,'Lawson','1984-01-19',32809599420,null,'3578 Katherine ViewsWest Heather, DC 32367',8127736,'Curitiba','8726570272','Vendedor',12490.63,'VEN01'),
('Tel0554236','Margaret',null,'Becker','1978-03-10',62385903336,null,'28510 Mark Port Suite 340Austinview, WV 33022',5707926,'João Pessoa','2295511635','Telefonista',17676.39,'VEN01'),
('Con8207497','Patrick',null,'Mills','1973-04-08',57083864638,null,'06754 Jeffrey Court Apt. 199Foxstad, NY 54898',8554162,'Curitiba','9277100627','Contador',14418.52,'ADM01'),
('Rec8296703','Sara',null,'Hurley','2004-11-01',54517844884,null,'52134 Troy Row Suite 513West Henry, NC 24530',693121,'Florianópolis','4049672054','Recrutador',15048.35,'TEC01'),
('Rec7826086','Dylan',null,'Thomas','1977-08-07',86667227203,null,'0304 Scott DamEast Michael, ID 91177',6087399,'Goiânia','7238045121','Recrutador',14372.07,'VEN01'),
('Sup7670307','Nicole',null,'Baker','1974-04-13',97925841942,null,'3451 David Place Suite 844West Melissaport, IL 56147',7859806,'Teresina','5366262754','Supervisor',2438.5699999999997,'TEC01'),
('Rec1165524','Wendy',null,'Hansen','1987-01-09',67132879179,null,'00306 Sergio Trafficway Suite 703Barbarafort, IA 75841',5569022,'Maceió','7508831879','Recrutador',18104.96,'ADM01'),
('Des9601201','Denise',null,'Campbell','1974-05-31',69876892914,null,'Unit 7699 Box 8669DPO AE 66420',4323919,'Boa Vista','9792889598','Desenvolvedor',6070.57,'TEC01'),
('Tel2332557','Jesse',null,'Ward','1988-09-21',79269908231,null,'81676 Levy Stravenue Apt. 232Jessicaburgh, OK 35685',9849848,'Teresina','7132752012','Telefonista',6409.32,'PES01'),
('Dir2892192','Darrell',null,'Elliott','1984-11-06',66293895226,null,'3506 Nelson MountainJensenmouth, TN 91275',7914436,'Recife','4237440345','Diretor',8784.189999999999,'PES01'),
('Sup6624404','Karen',null,'Powell','1983-12-27',95071906768,null,'90390 James LightLisafurt, PW 63641',8363277,'Curitiba','6037183074','Supervisor',15755.2,'MAR01'),
('Tel1791349','James',null,'Erickson','1975-12-19',74829964170,null,'2897 Rodriguez Place Suite 782New Robert, MN 40375',2481512,'Cuiabá','5326686936','Telefonista',9262.59,'COM01'),
('Ven0798652','Dawn',null,'Gonzalez','1994-02-06',98448455902,null,'71926 Barrett Squares Suite 251Bairdshire, VA 27988',1650222,'Curitiba','2919584500','Vendedor',2406.49,'PES01'),
('Sup5719770','Sandra',null,'Haynes','1996-06-30',17969458042,null,'424 Smith Mall Apt. 008New Scott, MI 42951',7092035,'Macapá','3454544775','Supervisor',11727.07,'MAR01'),
('Con5244073','Roger',null,'Price','1974-01-24',78772689600,null,'USCGC OconnorFPO AP 62245',8551390,'Porto Velho','3769753217','Contador',5910.32,'ADM01'),
('Tel4157311','Anthony',null,'Taylor','1995-05-23',52329437594,null,'USS HigginsFPO AA 32889',9487554,'Brasília','7139677670','Telefonista',19740.93,'MAR01'),
('Ven6726966','Christopher',null,'Morrison','1999-07-03',81975589359,null,'639 Johnson Light Suite 381Hernandezport, MN 91707',9003390,'Florianópolis','6392462687','Vendedor',3319.26,'OPE01'),
('Dir1758760','Billy',null,'Williams','1975-10-28',99511015484,null,'996 Tabitha Stravenue Apt. 406Leslieside, AS 67719',2284343,'Belo Horizonte','2826677116','Diretor',17383.08,'COM01'),
('Des7713022','Joshua',null,'Herrera','1976-07-04',9360484450,null,'09204 Bryan CreekRichardborough, AK 96512',5574957,'Salvador','8298542599','Desenvolvedor',2623.5299999999997,'VEN01'),
('Rec0551756','Jason',null,'Anderson','1974-07-23',53480178315,null,'407 Hill Estates Apt. 197New Johnnychester, MA 96163',346661,'Natal','9924471543','Recrutador',9167.6,'COM01'),
('Dir2838447','Jennifer',null,'Allen','1970-02-23',7807411049,null,'198 Obrien Mountain Suite 643Randolphmouth, SD 97061',3029350,'Palmas','9598893633','Diretor',11228.95,'OPE01'),
('Des9757767','Phillip',null,'Hammond','1990-07-18',48858186456,null,'72696 Blankenship Road Suite 102Hessfort, VA 75583',5624010,'Maceió','8992179223','Desenvolvedor',19189.94,'COM01'),
('Dir5412014','Clinton',null,'House','1973-11-05',44308305593,null,'0250 Gallagher SquaresSouth Brandonfurt, KS 63565',1119525,'Vitória','8143367957','Diretor',20570.53,'OPE01'),
('Ate9437963','Felicia',null,'Smith','1998-08-13',68670119376,null,'USCGC MuellerFPO AA 72511',9961824,'Rio Branco','6132047073','Atendente',1242.99,'OPE01'),
('Dir4655200','Alyssa',null,'Small','1998-09-18',9566410637,null,'254 Rose Lodge Apt. 795Whiteland, WI 13821',3598143,'São Luís','2293216897','Diretor',16876.41,'TEC01'),
('Con0948944','Benjamin',null,'Hughes','1977-02-13',56700062494,null,'666 Emily Burg Suite 609Parrishchester, FM 38781',763429,'Aracaju','6107295097','Contador',15200.87,'VEN01'),
('Sup3347493','Carol',null,'Mack','1984-06-13',30610842651,null,'591 Higgins Meadow Suite 905North Robin, MH 03833',6278351,'Brasília','5928026834','Supervisor',20023.6,'COM01'),
('Sup5379657','Leah',null,'Martinez','1972-09-16',36823772656,null,'97605 Proctor Corner Apt. 551Laurahaven, CO 68884',1396726,'Goiânia','6063587006','Supervisor',9404.0,'VEN01'),
('Ven6014430','Donna',null,'Salazar','1980-02-01',73500911409,null,'204 Charles VillageNewmanton, AS 70891',4760220,'Aracaju','4157875222','Vendedor',3692.0,'PES01'),
('Ate5925268','Molly',null,'Rodriguez','1992-03-29',16502983539,null,'0474 Arias SquaresWest Derek, IL 54657',5415192,'João Pessoa','9888651080','Atendente',12840.62,'ADM01'),
('Des0969002','Susan',null,'Allen','1978-03-12',782484105,null,'2012 Walls Grove Apt. 713Thompsonstad, PW 63312',4740410,'Cuiabá','8385081897','Desenvolvedor',11834.31,'COM01'),
('Des9795622','Stephanie',null,'Stevens','1987-08-03',41414637237,null,'9827 Hill StreetPort Cliffordside, NV 07404',8866833,'Florianópolis','8093405433','Desenvolvedor',3814.98,'ADM01'),
('Tel4830734','Cody',null,'Roberson','1995-09-20',17288420914,null,'392 Melendez GreensKevinmouth, FL 56338',4653565,'Belém','4618416991','Telefonista',10401.85,'VEN01'),
('Con3746510','Joshua',null,'Parker','1986-08-29',46385876589,null,'5143 Michael ForksPort Barbaraton, VT 66434',3707748,'Florianópolis','8934367372','Contador',4530.4,'PES01'),
('Rec3875307','Linda',null,'George','1993-09-26',89520758724,null,'1396 Rebecca Stream Apt. 719West Patricia, VT 61371',1093847,'Porto Velho','8226261395','Recrutador',14320.2,'TEC01'),
('Con5134700','Robert',null,'West','1986-03-01',31040588796,null,'8646 Perez CurveMichaelland, VA 04143',228589,'Natal','5876110663','Contador',20182.65,'MAR01'),
('Tel7526899','Rebecca',null,'Carter','1975-01-31',55092443822,null,'0360 Baker ForestJamesland, IA 22873',8789327,'Cuiabá','4047874245','Telefonista',5262.63,'TEC01'),
('Sup4110321','Catherine',null,'Elliott','1985-11-03',79499297507,null,'0474 Douglas Orchard Apt. 810Mitchellland, ME 98866',4441330,'Aracaju','9884567933','Supervisor',18396.89,'PES01'),
('Sup7154999','Laura',null,'Thomas','1992-04-02',49397851275,null,'0512 Joshua GrovesPort Natalieberg, CT 01498',8571182,'Macapá','5544330818','Supervisor',1892.21,'PES01'),
('Des4479660','Adrian',null,'Hawkins','1997-06-28',9914114162,null,'7732 Beltran Key Suite 258Mitchelltown, MT 10026',2796641,'Aracaju','7124534647','Desenvolvedor',4231.34,'VEN01'),
('Tel5385958','Tamara',null,'Wright','1986-11-25',25464853185,null,'573 Kristi GreensRyanside, CO 12291',6070897,'João Pessoa','6786701399','Telefonista',11190.33,'MAR01'),
('Sup4304565','Emily',null,'Watkins','1989-07-12',2079261956,null,'88215 Joshua ViaductAlvarezport, OK 53780',1373511,'Rio de Janeiro','7646930176','Supervisor',12633.48,'VEN01'),
('Dir1018191','Amanda',null,'Stewart','1978-06-20',58816825681,null,'3491 Parker MissionKimberlyberg, ND 76390',1240343,'Recife','7792290709','Diretor',3973.18,'ADM01'),
('Des6237484','Lauren',null,'Alvarez','1997-03-29',17918690451,null,'7219 Jeremiah ForgeCrystalbury, AK 38332',9469623,'Campo Grande','7496164922','Desenvolvedor',15038.94,'COM01'),
('Ven5739593','Natalie',null,'Bryan','1971-03-04',57398111601,null,'6081 Greene Islands Apt. 713North Grace, VA 76228',5412330,'Vitória','4798454972','Vendedor',18035.24,'VEN01'),
('Dir6329678','Patricia',null,'Smith','1997-11-17',56643926637,null,'2625 Amanda WayPort Matthew, KS 27418',6086714,'Recife','6405746360','Diretor',3405.3,'COM01'),
('Des2014001','Kevin',null,'Lucas','2005-06-17',65375676063,null,'USNV KellyFPO AE 23920',3017428,'São Paulo','7036030226','Desenvolvedor',16953.11,'ADM01'),
('Con5378726','Keith',null,'Rocha','1972-08-12',59783052274,null,'2352 Jennings Loaf Suite 426Woodtown, NE 77741',256785,'Rio de Janeiro','5297000901','Contador',10950.59,'VEN01'),
('Con0265758','David',null,'Wilson','2004-10-23',71351182884,null,'528 Krueger Row Apt. 959Greeneburgh, PR 52543',31133,'Rio Branco','6057273114','Contador',19979.86,'PES01'),
('Sup5475157','Yvonne',null,'Pineda','1980-08-01',89909930965,null,'0443 Philip MewsKellyside, GU 27696',8946653,'Teresina','7198883250','Supervisor',13915.68,'MAR01'),
('Sup2826230','Allison',null,'Rodriguez','1999-11-01',43126537647,null,'3617 Dennis MillWest Jenniferville, IN 51203',7484298,'Porto Alegre','7193983752','Supervisor',9349.12,'COM01'),
('Ven3694310','Elizabeth',null,'Schmidt','1976-08-16',33382346220,null,'230 Hoffman Center Suite 434West Patrick, LA 57108',198323,'Belém','9415333266','Vendedor',9208.9,'TEC01'),
('Dir5669070','Elizabeth',null,'White','1974-07-03',97698868079,null,'2802 Joshua Turnpike Suite 040East Johnfurt, PW 25048',8112547,'Curitiba','4175318514','Diretor',19466.64,'OPE01'),
('Ate3206588','Morgan',null,'Lucero','1985-01-10',79231732859,null,'39611 Emily SquaresButlerbury, ME 81732',5537575,'Manaus','8965645724','Atendente',9016.79,'ADM01'),
('Des8173285','Mr.','James','Waters','1978-12-26',54361586942,null,'35672 Myers Drive Suite 709Knightside, WY 39622',6713780,'Florianópolis','2389002661','Desenvolvedor',11622.7,'COM01'),
('Tel3548068','Kelly',null,'Short','1986-07-09',79447774166,null,'481 Karen Burgs Suite 728Robertsfurt, LA 52825',5012096,'Maceió','7678641928','Telefonista',5032.66,'TEC01'),
('Rec8982793','Courtney',null,'Miller','1995-09-30',47976522909,null,'4554 Smith PineEast Jacob, NE 78232',8657468,'Rio de Janeiro','6889773476','Recrutador',10465.38,'VEN01'),
('Des5428769','Barbara',null,'Durham','1973-09-07',6770390238,null,'0350 Dillon Hills Suite 410Port Joyberg, NH 96247',1779618,'Boa Vista','5914096760','Desenvolvedor',16533.39,'VEN01'),
('Sup5166475','Keith',null,'Ortega','1999-11-24',29087844801,null,'9681 Alan Points Suite 689Shawnamouth, NJ 10511',4980500,'João Pessoa','2514816210','Supervisor',16429.32,'MAR01'),
('Sup8770251','Chad',null,'Gray','1980-06-14',35757274660,null,'PSC 9485, Box 4190APO AA 75420',8148698,'Maceió','4375269738','Supervisor',16466.3,'TEC01'),
('Des7040857','Caitlin',null,'Nicholson','1995-03-26',16911646287,null,'146 Steven Brook Apt. 155Sandrahaven, KY 05002',4569416,'Maceió','3585408354','Desenvolvedor',18966.45,'MAR01'),
('Dir8350392','Daniel',null,'Young','1982-12-01',19417314894,null,'1940 Sylvia Estates Suite 911Glennshire, NC 16115',1395870,'Boa Vista','3938932472','Diretor',7132.77,'COM01'),
('Rec2266410','William',null,'Perez','1998-07-04',76492730207,null,'36205 Daniel Freeway Apt. 468East Debbie, AZ 51123',2197333,'Rio Branco','8523972334','Recrutador',5874.49,'OPE01'),
('Ven1872918','Ryan',null,'Russell','2005-07-04',96148611436,null,'4610 Shirley TurnpikeJeannefurt, VI 30938',9974128,'Curitiba','9754903695','Vendedor',7739.62,'MAR01'),
('Des2337600','Brianna',null,'Walker','2001-05-30',85263584741,null,'074 Emily LightsRichardfort, OH 89670',8101748,'Goiânia','7659908371','Desenvolvedor',3943.82,'OPE01'),
('Con5804978','Alexander',null,'Hogan','1976-02-04',23084419893,null,'952 Tara GrovesMichaelstad, NJ 34882',5400938,'São Luís','6939004152','Contador',17795.45,'OPE01'),
('Des0186721','Thomas',null,'Hester','1976-01-17',5394840690,null,'4365 Barbara ForgesPort Brooketon, FL 59292',591120,'Campo Grande','5732277184','Desenvolvedor',10204.52,'ADM01')
;

-- 1) Listar nome e sobrenome ordenado por sobrenome
select PrimeiroNome, UltimoNome
from Funcionario
order by UltimoNome;
-- 2) Listar todos os campos de funcionários ordenados por cidade
select *
from Funcionario
order by Cidade;
-- 3) Liste os funcionários que têm salário superior a R$ 1.000,00 ordenados pelo nome completo
select PrimeiroNome, UltimoNome, Salario
from funcionario
where Salario > 1000
order by PrimeiroNome, UltimoNome;
-- 4) Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho
select DataNasci, PrimeiroNome
from Funcionario
order by DataNasci desc;


-- 5) Liste os funcionários como uma listagem telefônica
select PrimeiroNome, Fone
from Funcionario
order by Fone;
-- 6) Liste o total da folha de pagamento
select sum(salario) as "Total: Folha de Pagamento"
from funcionario 
where salario is not null;


-- 7) Liste o nome, o nome do departamento e a função de todos os funcionários
select F.PrimeiroNome, F.UltimoNome, D.Nome as NomeDepartamento, F.Funcao
from Funcionario F
join Departamento D on F.CodigoDepartamento = D.Codigo;


-- 8) Liste todos departamentos com seus respectivos gerentes
select D.Nome as NomeDepartamento, G.PrimeiroNome as NomeGerente
from Departamento D
join Funcionario G on D.CodigoFuncionarioGerente = G.Codigo;

-- 9) Liste o valor da folha de pagamento de cada departamento (nome)
select D.Nome as NomeDepartamento, sum(f.salario) as TotalFolhaPagamento
from Funcionario F
join Departamento D on F.CodigoDepartamento = D.Codigo
group by D.Nome;

-- 10) Liste os departamentos dos funcionários que têm a função de supervisor

select D.Nome as NomeDepartamento
from Funcionario F
join Departamento D on F.CodigoDepartamento = D.Codigo;

-- 11) Liste a quantidade de funcionários desta empresa
select sum(a.funcionario) as "Total"
from Funcionario
inner join Funcionario

-- 12) Liste o salário médio pago pela empresa

select sum(Salario) / count(*) as salario_medio
from Funcionario;

-- Porque esta com erro??????


-- 13) Liste o menor salário pago pela empresa em cada departamento

select D.Nome as NomeDepartamento
from Funcionario F
join Departamento D on F.CodigoDepartamento = D.Codigo
group by D.Nome;


-- 14) Liste o nome completo de todos os funcionários que não tenham segundo nome
select PrimeiroNome, UltimoNome
from Funcionario
where SegundoNome is null;


-- 15) Liste o nome do departamento e do funcionários ordenados por departamento e funcionário
select D.nome, Departamento.Nome


-- 16) Liste os nomes dos funcionários que moram em Recife e que exerçam a função de Telefonista
select F.PrimeiroNome, F.UltimoNome
from Funcionario F
where Cidade = 'Recife' and Funcao = 'Telefonista';

-- 17) Liste os nomes dos funcionários que trabalham no departamento Pessoal

select F.PrimeiroNome, F.UltimoNome
from Funcionario F
join Departamento D on F.CodigoDepartamento = D.Codigo
where D.Nome = 'Pessoal';


-- 18) Liste o nome e o departamento de todos os funcionários que ganham mais do que algum gerente

select F.PrimeiroNome, F.UltimoNome, D.Nome as NomeDepartamento
from Funcionario F
join Departamento D on F.CodigoDepartamento = D.Codigo;
