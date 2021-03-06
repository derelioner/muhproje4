USE [MH]
GO
/****** Object:  Table [dbo].[OgrenciProfil]    Script Date: 21.05.2018 00:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciProfil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NULL,
	[Cevap] [nvarchar](50) NULL,
 CONSTRAINT [PK_OgrenciProfil] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 21.05.2018 00:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [bigint] NOT NULL,
	[AdSoyad] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciNetWork]    Script Date: 21.05.2018 00:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciNetWork](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciNo] [bigint] NULL,
	[Network] [nvarchar](500) NULL,
 CONSTRAINT [PK_OgrenciNetWork] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_Ogrenci_Network]    Script Date: 21.05.2018 00:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Ogrenci_Network]
AS
SELECT ogr.id,ogr.No,ogr.AdSoyad,network.Network,
profil.Cevap FROM Ogrenci as ogr
 inner join  OgrenciNetWork as network on ogr.No = network.OgrenciNo
 inner join OgrenciProfil as profil on ogr.No = profil.No;
GO
SET IDENTITY_INSERT [dbo].[Ogrenci] ON 
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (1, 2015141029, N'hamza ceylan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (2, 2015141014, N'ibrahim kuzik')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (3, 2015141028, N'furkan güven')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (4, 2014123071, N'erhan bilgin')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (5, 2014123020, N'tutku gündüzlü')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (6, 2014123056, N'yasin daşbaş')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (7, 2015141003, N'recep karademir')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (8, 2015123017, N'duygu karakavuk')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (9, 2015123003, N'ramazan sönmez')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (10, 2015123019, N'büşra demirtaş')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (11, 2015123035, N'nilgün canbaz')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (12, 2015123010, N'aslıhan hastaoğlu')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (13, 2015123020, N'ömürcan arslan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (14, 2015123110, N'mücahid kıncır')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (15, 2015123061, N'gökay çimen')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (16, 2015123045, N'celil han karaarslan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (17, 2015123028, N'kader demir ')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (18, 2015141037, N'adem demir')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (19, 2015123050, N'halit altun')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (20, 2015123024, N'erkan ercan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (21, 2015123012, N'fatih doğanay')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (22, 2015141066, N'yasin kahraman')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (23, 2013123043, N'atahan duman')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (24, 2015123001, N'rumeysa nur küçük ')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (25, 2014123024, N'reyhan ünal')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (26, 2015123114, N'mehmet sait okan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (27, 2014141021, N'sevda parlak')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (28, 2014123048, N'merve erbaş')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (29, 2014123021, N'melike koçgürbüz')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (30, 2014123016, N'zeynep beyaz ')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (31, 2015123054, N'emel akkuyu')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (32, 2015141065, N'ömer faruk öztürk')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (33, 2013141030, N'emre kopuz')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (34, 2014123062, N'fatma döner')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (35, 2014141057, N'burhan güven ')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (36, 2015123112, N'büşra bacak')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (37, 2015141063, N'ertur kişioğlu')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (38, 2015141001, N'mehmed zahid karakaş')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (39, 2015141008, N'enes akıncı')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (40, 2016123081, N'şuayb şimşek')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (41, 5515123107, N'muhammed taşbaşı')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (42, 2014141043, N'musa adanur')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (43, 2014141052, N'mehmet ocaktan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (44, 2014141004, N'anıl güngördü')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (45, 2013123023, N'gözde arslanhan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (46, 2012123041, N'enes karakoç')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (47, 2014141058, N'murat boyraz')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (48, 2014141054, N'çağrı özen')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (49, 2014141055, N'volkan çizmecioğlu')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (50, 2015141057, N'batuhan çam')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (51, 2014123028, N'huseyin can kincal')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (52, 2015123007, N'fatih celen')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (53, 2014123043, N'sümeyra şenol')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (54, 2015141041, N'nisanur candan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (55, 2015141054, N'nurcan kaya')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (56, 2015141047, N'seda tekin')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (57, 2014123067, N'ünzile döner')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (58, 2014141044, N'kerem tümkaya')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (59, 2012141020, N'alperen serdar gürbüz')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (60, 2015141010, N'efehan altın')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (61, 2015141005, N'hasan kadir demircan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (62, 2013123033, N'murat can albayraklıoğlu')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (63, 2013123041, N'öner dereli')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (64, 2014123066, N'othman yassin alsabbagh')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (65, 2015141016, N'ali özdemir')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (66, 2015141023, N'ertuğrul aksoy')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (67, 2013141045, N'ömer furkan oflaz')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (68, 2014123041, N'hatice şahin')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (69, 2015123009, N'nurgül aldemir')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (70, 2015123057, N'mehmet bozkurt')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (71, 2014123036, N'asım can daştan')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (72, 2015141114, N'esra köse')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (73, 2014123070, N'enes yıldız')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (74, 2015123062, N'merve kucukdogru')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (75, 2015123049, N'humeyra eslem güler')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (76, 2015123014, N'hasan sert')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (77, 2012141023, N'kemal emre akman')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (78, 2015141046, N'burak yılmazer')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (79, 2015123029, N'muhammed yazıcı')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (80, 2015123006, N'fatih duygu ')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (81, 2015141024, N'furkan caner')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (82, 2016123031, N'funda kızkapan azamet')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (83, 2015141056, N'barış can akdağ')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (84, 2013141054, N'numan sunar')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (85, 2015123018, N'rafet burak simsek')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (86, 2014123012, N'selman burkaç')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (87, 2015141031, N'eyüp bayçöl')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (88, 2015141015, N'muharrem kurşun ')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (89, 2015141059, N'aykut tanrıkulu')
GO
INSERT [dbo].[Ogrenci] ([id], [No], [AdSoyad]) VALUES (90, 2015141026, N'mehmet emir ağlamaz')
GO
SET IDENTITY_INSERT [dbo].[Ogrenci] OFF
GO
SET IDENTITY_INSERT [dbo].[OgrenciNetWork] ON 
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (1, 2015141029, N'2015141028,2015141014,2015141010,2015141005,2015141016,2015141056,2015141057,2015141026	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (2, 2015141014, N'2015141028,2015141029,2015141010,2015141056,2015141005,2015141016,2015141057,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (3, 2015141028, N'2015141029,2015141014,2015141010,2015141016,2015141005,2015141056,2015141057,2015141031	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (4, 2014123071, N'2013123033,2014123021,2014123028,2014123036,2014123048,2015141005,2014141044,2014123056	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (5, 2014123020, N'2014123024,2014123016,2014123021,2014123041,2014123048,2014123062,2014123067	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (6, 2014123056, N'2014123036,2014123070,2014123012,2014123071,2015123019,2014123028,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (7, 2015141003, N'2015141001,2015141003,2015141005,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (8, 2015123017, N'2015123014,2015123114,2015123003,2015123035,2015123057,2015123019,2015123054,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (9, 2015123003, N'2015123014,2015123061,2015123114,2015123018,2015123012,2015123054,2015123057,2015123017	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (10, 2015123019, N'2015123049,2015123001,2015123035,2015123017,2015123010,2014123056,2015123009,2015123054	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (11, 2015123035, N'2015123010,2015123018,2015123017,2015123019,2015123012,2015123014,2015123057,2015123114	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (12, 2015123010, N'2015123035,2015123017,2015123057,2015123018,2015123012,2015123014,2015141008,2015123019,2015123020,2015123062	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (13, 2015123020, N'2015123045,2015123017,2015123024,2015123035,2015123029	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (14, 2015123110, N'2015123003,2015123012,2015123050,2015123061,2015123018,2015123014	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (15, 2015123061, N'2015123012,2015123018,2015123003,2015123110,2015123050,2015123014,2014123066,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (16, 2015123045, N'2014123066,2015123020,2015123024,2016123081,2015123006,2015123114,2015123014,2015123061,2015123110	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (17, 2015123028, N'2015123001,2016123081,2015141047,2015141005,2015141065,2015123062,2015123049,2015123112	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (18, 2015141037, N'2015141001,2015141008,2015141063,2015141065,2015141023,2015141005,2015141028,2015141014	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (19, 2015123050, N'2015123110,2015123061,2015123014,2015123012,2015123003,2016123081,2015123018	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (20, 2015123024, N'2015123045,2015123020,2015123054,2015123112,2015123017	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (21, 2015123012, N'2015123018,2015123061,2015123035,2015123014,2015123003,2015123110,2015123114,2016123081	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (22, 2015141066, N'2015141010,2015141014,2015141015,2015141016,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (23, 2013123043, N'5515123107,2013141030,2013123041,2013123033,2015123057,2014123036	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (24, 2015123001, N'2015123049,2015123062,2015123019,2015123009,2015123010,2015123035,2015123003,2015123017	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (25, 2014123024, N'2014123020,2014123048,2014123021,2014123016,2014123043,2014123028,2014123071	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (26, 2015123114, N'2015123012,2015123014,2015123061,2015123057,2015123018,2015123017,2015123045	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (27, 2014141021, N'2014141058,2014141044,2014123048,2014123021,2015141047,2015141041	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (28, 2014123048, N'2014123021,2014123067,2014123062,2014123041,2015123112,2014123041,2014123020,2014123024,2014123056,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (29, 2014123021, N'2014123048,2014123028,2014141021,2014141058,2014123071,2014123062,2014123067,2014123041	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (30, 2014123016, N'2014123021,2015123112,2014123041,2014123067,2014123062,2014123048,2014123043,2014123020,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (31, 2015123054, N'2015123009,2015123019,2015123017,2015123045,2016123081,2015123001,2015123049,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (32, 2015141065, N'2013123041,2013123033,2015141114,2016123031,2015123062,2015123001,2015123049	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (33, 2013141030, N'2013123043,2015123112,2013123041,2013141045,5515123107,2013141054,2015123024,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (34, 2014123062, N'2014123067,2014123041,2014123048,2014123043,2014123016,2014123021,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (35, 2014141057, N'2014141004,2014141052,2014141043,2015141005,2015141010,2015141031,2014141054,2015141015,2015141026	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (36, 2015123112, N'2014123048,2014123067,2014123041,2014123062,2014123021,2014123016,2015123028,2015123049,2014123020	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (37, 2015141063, N'2015141037,2015141001,2015141005,2015141010,2015141008,2015141028,2015141003,2015141029	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (38, 2015141001, N'2015141003,2015141005,2015141008,2015141015,2015141037,2015141063,2015141024	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (39, 2015141008, N'2015141010,2015141005,2015141046,2015141014,2015141063,2015123010,2015123035,2015141037	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (40, 2016123081, N'2015123110,2015123061,2015123054,2015123014,2015123006,2015123003,2015123045,2015123050	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (41, 5515123107, N'2013123043,2013123041,2014123016,2014123043,2015123001,2015123009,2015123049,2015123045,2013141030	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (42, 2014141043, N'2014141004,2015141010,2014141004,2014141057,2014141058,2014141054,2015141031,2015141015,2014141044	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (43, 2014141052, N'2014141043,2014141057,2014141044,2014141054,2015141010,2015141005,2015141015,2015141031,2014141004	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (44, 2014141004, N'2015141010,2014141052,2014141043,2015141031,2014141057,2014141054,2015141005,2015141026	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (45, 2013123023, N'2013123041,2013123043,2015123024,2015123028,2015123029,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (46, 2012123041, N'2014123070,2015141065,2015123012,2015123014,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (47, 2014141058, N'2014141057,2014141004,2014141043,2014141044,2014141021,2014123048,2014123021,2014141052,2015141005,2015141010	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (48, 2014141054, N'2015141031,2015141015,2015141026,2014123071,2012141020,2014141055,2014141043,2014141057	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (49, 2014141055, N'2014141054,2015141023,2015141037,2015141026,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (50, 2015141057, N'2015141056,2015141014,2015141016,2015141029,2015141031,2015141026,2015141015,2015141028,2015141003,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (51, 2014123028, N'2014123012,2014123016,2014123021,2014123071,2014123067,2014123036,2014123041	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (52, 2015123007, N'2015123012,2015123017,2016123081,2015123057,2015123001	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (53, 2014123043, N'2014123048,2014123067,2014123041,2014123062,2015123112,2014123021,2014123016,5515123107	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (54, 2015141041, N'2015141054,2015141046,2015141047,2015141008,2015141114,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (55, 2015141054, N'2015141041,2015141046,2015141008,2015141047,2015141114	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (56, 2015141047, N'2015141041,2015141046,2015141014,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (57, 2014123067, N'2014123062,2014123041,2014123048,2014123021,2014123016,2014141057,2014141004,2015141010,2015141005,2015123112	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (58, 2014141044, N'2014141058,2014141057,2014141004,2014141052,2014141043,2014141021,2014123071,2014123048,2014123021,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (59, 2012141020, N'2012141023,2014141054,2015141031,2015141015,2015141026,2013123033,2014141055	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (60, 2015141010, N'2015141005,2015141063,2015141014,2015141028,2014141057,2015141029,2014141004,2014141052,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (61, 2015141005, N'2015141010,2015141063,2015141014,2014141057,2015141028,2015141029,2014141004,2014141052,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (62, 2013123033, N'2015141065,2014123071,2014123036,2015123018,2014141054,2012141020	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (63, 2013123041, N'2013123033,2014123071,2014123036,2015123018,2014141054,2013141030,2015123112,2015141065	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (64, 2014123066, N'2015123020,2015123024,2015123029,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (65, 2015141016, N'2015141014,2015141057,2015141056,2015141029,2015141026,2015141015,2015141028,2015141031,2015141003,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (66, 2015141023, N'2015141024,2015141029,2015141028,2015141046	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (67, 2013141045, N'2013141030,2013123043,5515123107,2013141054,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (68, 2014123041, N'2014123067,2014123062,2014123021,2015123112,2014123016,2014123043,2014123020,2014123024,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (69, 2015123009, N'2015123054,2015123019,2015123001,2015123045,2015123049,2016123081,2015123017,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (70, 2015123057, N'2015123014,2013123033,2015123017,2015123018,2015123061,2015123003,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (71, 2014123036, N'2014123056,2014123012,2014123071,2013123033,2014123070,2015141065	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (72, 2015141114, N'2016123031,2015141065,2015141054,2015141046,2015141041,2015123062,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (73, 2014123070, N'2014123036,2014123056,2014123012,2014123071,2014123028,2014123043,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (74, 2015123062, N'2015123049,2015123001,2015141114,2015123019,2015123112,2015123009,2014123067,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (75, 2015123049, N'2015123062,2015123001,2015123019,2015123009,2015123112,2015123028,2015123054	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (76, 2015123014, N'2015123057,2015123017,2015123061,2015123012,2015123018,2015123003,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (77, 2012141023, N'2012141020,2014141054,2015141031,2015141015,2015141026,2013123033,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (78, 2015141046, N'2015141041,2015141054,2015141023,2015141015,2015141047,2015141008,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (79, 2015123029, N'2015123006,2015123014,2015123020,2015123045,2015123057,2015123061,2016123081,2015123017,2015123012	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (80, 2015123006, N'2015123029,2015123014,2015123020,2015123045,2015123057,2015123061,2016123081,2015123017,2015123012	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (81, 2015141024, N'2015141014,2015141028,2015141029,2015141015,2015141031,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (82, 2016123031, N'2015141114,2015141065,2015123112,2015123001,2015123049,2014123041,2014123043,2014123062	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (83, 2015141056, N'2015141003,2015141057,2015141016,2015141028,2015141026,2015141031,2015141029,2015141014,2015141015	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (84, 2013141054, N'2013141030,2014141044,2014141058,2014141057,2014141004,2014141043,2014141052,2014141021,2014123071,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (85, 2015123018, N'2015123010,2015123061,2015123035,2015123012,2015123014,2015123110,2015123057,2015123003	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (86, 2014123012, N'2014123028,2014123036,2014123056,2014123070,2014123071,2014123041,2014123067	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (87, 2015141031, N'2015141015,2015141016,2015141026,2015141028,2015141057,2015141029,2015141014,2015141056,2014141054,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (88, 2015141015, N'2015141016,2015141014,2015141031,2015141026,2015141056,2015141057,2015141028,2015141029,2014141054,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (89, 2015141059, N'2015141066,2015141065,2015141063,2015141057,2015141056,2015141054,	,')
GO
INSERT [dbo].[OgrenciNetWork] ([Id], [OgrenciNo], [Network]) VALUES (90, 2015141026, N'2015141031,2015141015,2015141016,2015141056,2015141057,2015141028,2015141029,2015141014,2014141054,	,')
GO
SET IDENTITY_INSERT [dbo].[OgrenciNetWork] OFF
GO
SET IDENTITY_INSERT [dbo].[OgrenciProfil] ON 
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (1, 2015141029, N'7,9,5,8,1,10,10,3,1,8,9,5,0,7,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (2, 2015141014, N'9,5,5,5,3,10,10,6,5,10,10,9,2,8,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (3, 2015141028, N'8,8,7,7,0,10,10,4,3,10,10,7,1,7,1')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (4, 2014123071, N'8,10,8,0,0,1,3,2,1,6,3,2,2,10,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (5, 2014123020, N'4,0,10,1,3,3,4,6,0,2,8,0,0,10,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (6, 2014123056, N'9,7,3,8,1,7,5,6,4,8,5,0,3,7,4')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (7, 2015141003, N'6,7,8,5,2,2,2,8,4,8,6,2,5,3,6')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (8, 2015123017, N'9,7,7,7,6,7,6,7,8,8,9,0,6,8,7')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (9, 2015123003, N'6,9,4,6,0,10,7,6,3,5,7,0,0,7,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (10, 2015123019, N'10,3,5,8,0,0,0,10,8,7,7,0,0,8,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (11, 2015123035, N'8,9,10,10,4,7,7,7,9,5,5,3,5,7,4')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (12, 2015123010, N'10,10,6,5,1,5,5,4,1,0,4,0,0,2,2')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (13, 2015123020, N'9,6,10,7,10,2,2,6,5,10,6,4,3,8,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (14, 2015123110, N'0,0,10,10,0,0,0,0,0,10,10,0,0,10,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (15, 2015123061, N'8,8,3,10,0,10,0,2,0,5,6,1,1,0,7')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (16, 2015123045, N'5,8,9,8,9,0,6,4,6,10,5,0,9,9,4')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (17, 2015123028, N'10,8,9,7,6,2,8,10,8,4,7,0,6,10,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (18, 2015141037, N'4,5,6,8,1,10,2,2,2,2,4,0,2,2,2')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (19, 2015123050, N'8,7,5,0,0,4,1,6,3,5,5,0,1,3,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (20, 2015123024, N'7,9,10,0,6,0,6,7,1,9,5,6,6,10,9')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (21, 2015123012, N'10,9,3,9,0,10,9,2,5,8,10,10,3,7,7')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (22, 2015141066, N'9,5,8,10,0,9,5,2,0,7,9,0,1,1,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (23, 2013123043, N'10,9,8,9,0,1,4,8,2,10,3,0,5,8,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (24, 2015123001, N'10,7,7,3,4,6,9,10,8,6,9,0,0,8,4')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (25, 2014123024, N'6,6,10,7,9,5,3,8,7,5,2,0,6,8,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (26, 2015123114, N'4,8,7,7,6,2,6,10,10,10,3,0,10,10,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (27, 2014141021, N'8,7,9,4,4,2,2,4,2,5,8,2,2,7,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (28, 2014123048, N'10,10,7,10,6,2,0,5,0,4,5,1,0,2,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (29, 2014123021, N'8,1,2,2,5,6,3,6,0,0,8,0,0,3,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (30, 2014123016, N'5,4,6,1,1,2,2,3,0,2,8,0,0,4,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (31, 2015123054, N'9,9,9,5,0,1,2,10,2,0,5,0,6,10,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (32, 2015141065, N'5,2,3,5,0,8,5,4,3,1,4,0,1,8,1')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (33, 2013141030, N'10,8,8,9,6,0,0,3,6,8,4,0,8,10,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (34, 2014123062, N'3,6,2,4,0,3,3,3,4,1,2,0,5,6,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (35, 2014141057, N'10,10,5,8,10,10,5,3,1,7,9,0,1,8,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (36, 2015123112, N'10,10,8,10,0,3,2,6,7,6,7,0,3,3,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (37, 2015141063, N'2,0,5,10,0,7,3,8,8,3,1,0,3,0,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (38, 2015141001, N'8,9,5,2,1,1,1,8,5,6,7,0,5,6,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (39, 2015141008, N'9,8,8,8,0,10,6,7,7,6,7,1,7,6,9')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (40, 2016123081, N'2,10,8,8,3,8,3,8,9,6,2,0,2,9,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (41, 5515123107, N'9,9,9,6,5,7,5,4,4,10,9,0,4,5,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (42, 2014141043, N'7,8,9,7,0,10,6,0,0,4,7,1,1,7,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (43, 2014141052, N'10,10,10,10,4,10,10,3,2,10,10,2,2,6,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (44, 2014141004, N'8,6,6,2,2,8,4,0,0,10,10,8,0,7,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (45, 2013123023, N'10,9,8,4,6,7,9,10,1,5,9,0,1,6,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (46, 2012123041, N'8,8,8,6,4,8,4,6,5,7,6,0,4,8,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (47, 2014141058, N'3,2,5,4,3,10,5,10,8,6,6,3,8,4,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (48, 2014141054, N'2,5,1,10,1,5,5,7,6,3,6,0,3,5,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (49, 2014141055, N'6,8,6,1,4,5,2,4,0,8,2,1,0,4,2')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (50, 2015141057, N'5,8,9,4,8,5,8,1,1,9,6,1,0,3,7')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (51, 2014123028, N'0,0,5,0,5,0,0,0,0,0,0,0,0,5,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (52, 2015123007, N'7,7,6,3,1,9,9,6,7,8,7,1,5,5,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (53, 2014123043, N'10,8,5,4,0,4,0,10,5,4,8,0,0,6,1')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (54, 2015141041, N'8,9,8,3,0,0,0,5,5,5,9,0,3,4,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (55, 2015141054, N'7,4,5,7,3,3,4,6,6,2,9,0,1,1,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (56, 2015141047, N'10,8,6,10,2,8,4,10,10,1,10,7,10,6,6')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (57, 2014123067, N'10,9,9,6,10,5,3,3,2,3,7,0,2,6,4')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (58, 2014141044, N'10,9,8,5,6,10,10,5,2,3,7,10,3,8,7')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (59, 2012141020, N'10,5,5,8,5,8,2,5,0,5,5,0,0,2,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (60, 2015141010, N'10,10,10,10,0,10,7,5,0,10,10,8,0,8,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (61, 2015141005, N'10,7,5,9,7,4,4,9,10,5,10,1,10,1,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (62, 2013123033, N'10,10,5,10,4,10,7,8,8,6,10,0,8,6,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (63, 2013123041, N'10,10,10,10,10,10,10,10,10,10,10,5,10,10,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (64, 2014123066, N'10,10,10,5,8,3,8,2,2,9,10,1,1,7,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (65, 2015141016, N'5,8,8,9,0,6,2,5,3,8,6,8,2,8,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (66, 2015141023, N'10,10,9,5,0,10,6,4,8,8,5,5,4,5,9')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (67, 2013141045, N'10,10,10,7,3,7,10,3,5,10,6,3,3,7,9')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (68, 2014123041, N'10,5,5,5,3,1,2,8,5,5,4,0,4,5,2')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (69, 2015123009, N'5,6,8,4,2,7,5,8,2,1,10,0,3,3,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (70, 2015123057, N'7,10,6,5,1,5,4,3,2,9,7,6,4,8,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (71, 2014123036, N'10,10,9,5,2,8,4,6,4,9,7,5,2,6,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (72, 2015141114, N'8,8,9,6,4,5,3,9,6,6,6,3,5,7,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (73, 2014123070, N'8,8,6,7,2,8,8,8,6,8,7,0,4,8,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (74, 2015123062, N'8,3,0,5,3,4,3,2,2,0,6,0,0,6,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (75, 2015123049, N'9,10,10,7,7,5,9,10,10,8,9,0,10,6,9')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (76, 2015123014, N'7,10,9,7,4,7,6,3,7,8,10,5,5,8,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (77, 2012141023, N'6,8,9,1,2,9,6,6,0,9,8,10,0,9,6')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (78, 2015141046, N'5,10,7,9,3,1,8,3,7,10,10,6,2,10,5')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (79, 2015123029, N'10,9,5,9,8,10,5,6,8,10,10,0,9,8,7')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (80, 2015123006, N'10,6,10,10,8,5,4,5,0,5,4,0,0,5,2')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (81, 2015141024, N'7,5,8,1,0,10,3,4,1,5,8,3,1,6,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (82, 2016123031, N'10,9,0,0,5,0,5,10,5,0,3,0,10,8,8')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (83, 2015141056, N'10,9,8,3,2,4,4,5,3,9,9,2,5,8,7')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (84, 2013141054, N'9,6,6,7,4,6,6,0,0,7,7,0,0,6,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (85, 2015123018, N'7,0,0,5,0,7,2,3,2,10,6,7,1,9,3')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (86, 2014123012, N'10,10,7,8,5,10,8,10,10,9,10,2,6,8,10')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (87, 2015141031, N'10,10,10,3,6,6,4,5,3,5,5,0,1,4,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (88, 2015141015, N'7,7,5,5,5,5,2,3,1,3,3,0,0,3,0')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (89, 2015141059, N'0,4,4,0,7,2,7,9,9,1,6,8,9,10,1')
GO
INSERT [dbo].[OgrenciProfil] ([id], [No], [Cevap]) VALUES (90, 2015141026, N'4,8,7,8,6,10,5,5,2,7,8,6,4,5,2')
GO
SET IDENTITY_INSERT [dbo].[OgrenciProfil] OFF
GO
