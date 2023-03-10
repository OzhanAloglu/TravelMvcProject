USE [master]
GO
/****** Object:  Database [TravelDb]    Script Date: 21.12.2022 23:56:47 ******/
CREATE DATABASE [TravelDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TravelDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TravelDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TravelDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TravelDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TravelDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TravelDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TravelDb] SET  MULTI_USER 
GO
ALTER DATABASE [TravelDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TravelDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TravelDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TravelDb] SET QUERY_STORE = OFF
GO
USE [TravelDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 21.12.2022 23:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 21.12.2022 23:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanıcı] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdresBlogs]    Script Date: 21.12.2022 23:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdresBlogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[AdresAcik] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[Konum] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdresBlogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 21.12.2022 23:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Tarih] [datetime] NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[BlogImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimizdas]    Script Date: 21.12.2022 23:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizdas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FotoUrl] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hakkimizdas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iletisims]    Script Date: 21.12.2022 23:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Konu] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.iletisims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 21.12.2022 23:56:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullanıcıAdi] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Yorum] [nvarchar](max) NULL,
	[Blogid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yorumlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202212161303592_AutomaticMigration', N'TravelMvc.Migrations.Configuration', 0x1F8B0800000000000400ED5BCD72DB3610BE77A6EFC0E1A9ED38A2ED5C5A8F948C23DBAD26F1CF9876A63D796012925183A04A801EA99D3E54CE3DF492F7E92B74C15F10242592126D27E3C9C502B1DF2EB0DFE267B1F9EF9F7F876F171E351E70C089CF46E6DE60D73430737C97B0D9C80CC5F4D58FE6DB37DF7E333C76BD85F131EDF75AF60349C647E69D10F303CBE2CE1DF6101F78C4097CEE4FC5C0F13D0BB9BEB5BFBBFB93B5B76761803001CB3086972113C4C3D10FF839F69983E72244F4D47731E5493B7CB12354E30C7998CF918347E655801E303D7D700671DF814D1899521498C62125080CB2319D9A0662CC174880B907D71CDB22F0D9CC9E4303A257CB39867E5344394E867190776F3AA2DD7D39222B174CA19C900BDF6B09B8F73A99224B17EF34D16636853089C730D96229471D4DE4C83C743D02B8BAA683310D64AF15933C8844778CACC34E460AE08EFCB7638C432AC2008F180E4580E88E7111DE52E2BCC7CB2BFF1EB3110B2955ED030BE15BA1019A2E027F8E03B1BCC4D3C4EAC991695845394B17CCC41499784813265EEF9BC6192847B71467EE57866F0B3FC03F63860324B07B8184C001786FE2E268024BDA355DEF2534FBFCC9F9FC29550AB48340328D53B4F880D94CDC8D4CF8D3344EC802BB694B62C83523107720248210AFD365936980B7AC6568E54459439F00F377D49F75A55022FE42A32A5DEF10A7E4BE77061D3AE49E220FF5AF48BA5B6AEB5DD315A6782A17CC9EF5BCF759E83D55F0758FBB97907BE290BB4201B94BB51C81A5577006AA18D833095CC997898766DBDE6740D3197A20B3C8759ACEDFFC20F480ACDC342E318D7AF03B328F0F7583F4EB4D1C042781EF5DFA54118B3EDCC03CCFB000ABFDAAAFB61F064ED7E84BA1BA45602AFD128555BA94F3D3A14B7AA7F72922B4772591C71F317EE2C0E81E3A697054874E1A589D42E717747F4F3CF2A78BBA054F2EFF123E55BA4E7CE15F07FD53BAA7FDA7318F08C58270E27563512AFDC2A14ADFBAB6BF44EED7B1F6CA637AFF23C11CFDFE48A170C8B9EF90C8D1DA71245ED58B861E33D758B9C4C726AB9B03580EC42773A03AA81F993F94465F079A1DB972D078A32902EE0E067BFA58955195E37EEC338108D03919B0FC8D17A222F6AF394EC29F2773AA5B2EF16C2CD41C181C33F3A94EEC4E9263A581EBE24912A31A224B90AC81A9436824AC1C964B00B94BD780E4DB6A158CBA69AF014A57D62A987CCDD64014E797C7959C55943E9587197DD95D47FCCCF0C20C5A4D6152AA2B308917F595BD38B88A00CFD89D27BCAD38E39D66C6AD9AD4F8F014CDE7B0D628A9F2A4C5B0E33CF9F895DD3E73ECC51896C32B12C899B59926D86CE07AA87D9541EAE213127001775C748BE46A3776BD8A6E712CD7D02AD55208D7B29352A6A5DDE5DFC9757B75125BC7CAA7F00446E5C186190D102B7EAE918BDE29100057ECDC639F861EABDBFD574917D2C92A4CE14373BC2465AC22254D658CA1A54D853EEF5669E235EEEB6E6CE8E46C51DD96A3D385B88BB36B65FB71789A855211D2B6E628F9F15CC5C95B5B20E589DB0254DEDC1C2B4BCDAA4859638BA08853AF8570889B9E0D89B7C9DF8ED4FDF2589BA4460BEC889B9E82F94AE6B330ACBCF9D9B02D3FC16C8771D9B9B13DEBEA457BDF20A37C61CD1E197D6B8E1A5F4D55ACB8A5394292F3532192A667C31AF5D0BF1DDE281785F6CC5925DC0F77B264990A9135F6B9E63C91C7F3DBD976FC9DDDE8DA7BBB5EB41F5F6749ADE22926697CCC9521CE48E987975636C4E9A6821171D3E333AD78BDADDE96922B7C9B9D271169BABBC87B7ACD2362E1BE5E9E9E46548B20AAF826672753DCD6A62415D1D1A6D6E6C04DDB2551DA70C265F6384B423618A99EC62853A194CDD0BB6444CCB21A5AF662986412D657FF95520B7117D380A13F1057A615EC2517D81BC80E03FB0F3AA604A89F773845C037CC459CC837F777F7F6B5CAC1E753C56771EED28A4C4CA994EFD19F22889CD2B58F0D2D2B1B2A0AE8D8030A9C3B147CE7A1C5F72A60EB22B916481D0AE1BE0E0714EB60369A7BFD95703330BD846C2334AD4C6C23AC4229581F147B6157A50BD54A2A17CC13DBA8A4DAC8A452B5541F6CA83E047DB18CA8AEF8D9C80DEACBF2464085CA9D8D9971A3CD64E9F972C25CBC18997F453207C6E4D79B446CC7380FE0D87260EC1A7F6F894575D7ED2F96475AE9CB536D5CED4B58BE8EE9D7AA469E47FCAAD51F9B59A456786C810D5DAB38F29B74AB020BA3EA25BB63F507B01007922488C2658F8B00AE7BA5ACC245409843E688AA76976FBA4D982D273183D3BF1CE1396692B2FAD89AE85A71ADCF70B5205B37F8D6952CFA23794D1EAF70D1AB2D5789EFC17018BAF5C1B93127D31297A6A52CAB2B59AA35E455300D2A5D6A0B5DAAB09BC1E6E45D510253055F5BFAB1A242664D814C959A42794DC30A9A950534554A94D29B47ADAF517D9A3F3C3629A5A9ACC2E9A782A69C5B825856FEFF292C249CCC7208992D63D8294471D667C2A67EBA9A6816A55D4ADB874070434187812053E408F8EC60CEA33AC18F8886D0E5D8BBC5EE849D87621E0A1832F66E69A154532E4AABF4476542459B87E7F3A8027C1B43003389BC649DB37721A16E66F749F97050072157BBE4C4217D29E4C963B6CC90CE7CD6102899BE6C91BEC2DE9C02183F67367AC05D6CBBE6F8039E216799A608EB41D63BA238EDC323826601F2788291CBC34FE0B0EB2DDEFC0FF5CAE3A7863D0000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202212161710493_AutomaticMigration', N'TravelMvc.Migrations.Configuration', 0x1F8B0800000000000400ED5BCD72DB3610BE77A6EFC0E1A9ED38A2ED5C5A8F948C23DBADC6B19D31ED4C7BCAC02424A3064196003D523B7DA89C7BE825EFD357E882BF20094A1425DA8EC7934B0462BF5D60BFC5CF62FDDF3FFF0EDFCE3D6ADCE390139F8DCCBDC1AE6960E6F82E61B3911989E9AB1FCDB76FBEFD6678EC7A73E363D6EFB5EC07928C8FCC5B218203CBE2CE2DF6101F78C4097DEE4FC5C0F13D0BB9BEB5BFBBFB93B5B76761803001CB3086971113C4C3F10FF839F699830311217AE6BB98F2B41DBED831AA718E3CCC03E4E0917915A27B4CCFEE9D41D277601346A61485A671480902836C4CA7A68118F3051260EEC135C7B6087D36B3036840F46A1160E8374594E374180745F7B623DADD9723B20AC10CCA89B8F0BD3501F75EA7536455C53B4DB4994F214CE2314CB658C851C71339320F5D8F006E55D3C19886B2D792491EC4A23B46DE612727057047FEDB31C611155188470C47224474C7F810DD50E29CE2C5957F87D9884594AAF68185F0ADD4004D1F423FC0A1585CE2696AF5E4C834ACB29C5515CCC51499644813265EEF9BC63928473714E7EE57866F0B3FC43F63864324B0FB01098143F0DEC4C5F104D6B457749D4A68F6E5B3F3E573A614680781641A6768FE1EB399B81D99F05FD3382173EC662DA921D78C40DC81900823BC4A974DA621DEB296A1551065057D42CCDF517FD69542A9F80B8D74BADE214EC95DEF0C3A74C81D451EEA5F9174B7D4D6BBA62B4CF1542E983DEB39F559E43D56F0758FBB97907BE490BB4221B9CDB41C81A5577006D20CEC8904AEE4CBC443B36DEF33A0E91CDD9359ECBA8ACEDFFC30F280ACDC342E318D7BF05B122487BA41F6F553120427A1EF5DFA54118B3F7C82799E610156FBBAAFB61F854ED7E8CBA0BA456026FD12853A5DCAF9E9D025BDD3FB0C11DABB92D8E30F12A9C45DE5A9B631980457F7F0CB024C1F7E5970760ABF5FD0DD1DF1C89F2EEA168085FC4B08EA749DF8C2BF0EFB0F8B9EF6B0D63C22140BC289D78D4599F40B87B4BE756D7F81DCE7B17ECBA37EFF23C11CFDFE40A170C8B9EF90D8D195234DB2AA970D3D66AEB174894F4C563707B01C884F02A03AA81F993FD446DF049A1FDB0AD064A32903EE99D518B9604770F313D83874927CDB187107B9F579873971CB2D10563894BC46740C7B1D042A61A21E83843924407499D915A196A12B8DCAE1AB5F8E7080998CBA653E68A3373B1FD475E72A2A13B56A5E869642A4FA520B32022470981A207FE3B9D02CB7D71CA72B2E4F695C258BC4B3B1505397703B28D89D5225CD69D6B856154F734F7A883CAFB502A609A195B072C7A9011451B402A438C9E860D473D20AA06C33D3C114DB640544717E7D5CE9F150E9A33D3F56B9B86AADC90D2FCD608DD2AB56170526F5627591280F4EB3A6E6EC2EDE29ACE4A1227BD0B01A5E34866728086079575E38D216C34E9E37C6AFECF513FE5E8261395C93F7CFADCD35C1FE0EB7FACA5719A42E3E2121174748A01B243798B1EB69BA25B1DC40AB4C4B295CEB4ECA98967597FF4FB324CBDF1E340B5E8A7102A3F2E46A191F60143F37C8C5CF4B08803587A5B14F238F35AFDACDD2A5570015A6F4A13D5E9AE95791D2A63AC6D0AA4C456DBDAF4D7C6D832CBBB1A593F345755B8ECE16E22ECE6E94EDC7E159F25045C8DADAA314372215A7685D03A9C8B797A08AE6F65879465D45CA1BD7088A24635E0A87A4E9C990789BFCED48DDAF8FB56946BBC48EA4E93198AF24AC4BC32A9A9F0CDB8A13CC7618979F1BD7675DB368EF1B649CE66DD823E36FED51936C808A95B4B4474853B52A44DAB41E03E545AB4A3FDDE5EBD1B8A75E1DB6C33EE5BAB13EFF9609F7C3C03CCBA942E48D7DAE5C8FE4F1E28EB71D7FE7F7C2F5BDDD2CDA8FAFF36C64F92C94363EE4FA92A412AB47A0B56C48F284252392A607665AED225CED926BCF2FC4958BEF30BD84AEAEF7ABDD4A932EA60193734F5C7923B5175C606F203B0CEC3FE89812186FD1E10C016D311749DADDDCDFDDDBAFD40A3E9DBA3D8B73976A2EF1B5E2BD077F3820724A573E0DAC59CBA0299963F728746E51F89D87E6DFAB806B97C5AD81D4A1F4ED7938A05CF9B2D1DC57DFF43603AB168D6D8456290CDB08AB54FCD507C55ED8A575A15A3BE58279621BB5531B9954AB8FEA830DFADBD957CB087D8DCF466E50DF8137022AD5EA6CCC8CA21E279EC8DAC3D784B9783E32FF8A450E8CC9AF9F12A91DE3228443CB81B16BFCBD627ABB94CD3C0F1A55EA541E6BDF5ABFDEE4794C7FA5C4E36984AF5AAAB199456A39C616D8D0B5E42279467DC86A88FADB69C7128F4E65150D59F3DECA28BE96D289EAAB6C43CAA7743D6CAC8F486ECF7084BAF1C1B70995B39A8AB6B513CB4B27F41A8AB28B16A5158D95153AEC76B0057797D45CE8E01B6B0D969464ACA8C8D0A929D573B42CD9585AB1A153A2D47A3C684187EAD3E2A5AB4DED86B6ECA39F928D7A460A6259F93B55584738991510F2AF5619764A519CF799B0A99F2D26158BB22EB55D4720B8D7A0C350902972047C7630E7712DE0474423E872ECDD6077C22E22114402868CBD1B5A2AC7948BD232FD715D4AD9E6E1451057796F630860269157B30BF62E22D4CDED3ED11C5D1B20E46A971E54A42F853CB0CC1639D2B9CF5A02A5D3972FD257D80B2880F10B66A37BDCC5B66B8EDFE31972165962B11964B523CAD33E3C226816228FA718853CFC040EBBDEFCCDFFAE088213AE3D0000, N'6.4.4')
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([ID], [Kullanıcı], [Sifre]) VALUES (1, N'Aloglu', N'123')
INSERT [dbo].[Admins] ([ID], [Kullanıcı], [Sifre]) VALUES (2, N'a', N'1')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (1, N'Hayaller Şehri Roma', CAST(N'2020-04-10T00:00:00.000' AS DateTime), N'Roma, İtalya''nın en kalabalık şehri ve 1285.3 km²lik yüzölçümüyle Avrupa''nın en geniş yüzeye yayılmış başkentlerinden biridir. Milano, Napoli, Torino, Bologna, Palermo, Katanya, Floransa, Cenova ve Bari''nin toplamından daha geniş bir yüzölçümüne sahiptir. Roma Büyükşehir''in toplam nüfusu 4 milyondur.Roma, 2019 yılında 10,1 milyon turist ile dünyanın en çok ziyaret edilen 11. şehri, Avrupa Birliği''nde en çok ziyaret edilen üçüncü şehir ve İtalya''nın en popüler turizm merkezi olmuştur.[2] 1960 Yaz Olimpiyatları''na ev sahipliği yapan Roma, aynı zamanda Gıda ve Tarım Örgütü (FAO), Dünya Gıda Programı (WFP) ve Uluslararası Tarımsal Kalkınma Fonu (IFAD) gibi Birleşmiş Milletler''in çeşitli uzman kuruluşlarına ve Akdeniz için Birlik''in Parlamenter Meclisi Sekreteryası''na da ev sahipliği yapar.', N'https://i.hizliresim.com/r4ni2at.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (5, N'Aşıklar Şehri Paris', CAST(N'2020-02-12T00:00:00.000' AS DateTime), N'Paris şehri tahmini 12,174,880 nüfusu ile veya Fransa nüfusunun yaklaşık yüzde 18''i ile (2017 itibarıyla) Paris Bölgesi''nin veya Île-de-France bölgesinin yönetim merkezidir.[2] Paris Bölgesinin 2017''de 709 milyar € (808 milyar $) GSYİH''sı vardı.[3]

Economist Intelligence Unit''in 2018''deki Dünya Çapında Yaşam Maliyeti Anketine göre Paris, Zürih, Hong Kong, Oslo ve Cenevre''nin önünde ve Singapur''dan sonra dünyanın en pahalı ikinci şehriydi.[4] Başka bir kaynaksa Paris''i 2018''de Singapur ve Hong Kong ile eşit derecede en pahalı olarak sıraladı.', N'https://i.hizliresim.com/fjx6dba.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (6, N'Kadim Şehir İstanbul', CAST(N'2022-01-10T00:00:00.000' AS DateTime), N'İstanbul Türkiye''nin kuzeybatısında, Marmara kıyısı ve Boğaziçi boyunca, Haliç''i de çevreleyecek şekilde kurulmuştur. İstanbul kıtalararası bir şehir olup, Avrupa''daki bölümüne Avrupa Yakası veya Rumeli Yakası, Asya''daki bölümüne ise Anadolu Yakası veya Asya Yakası denir. Tarihte ilk olarak üç tarafı Marmara Denizi, Boğaziçi ve Haliç''in sardığı bir yarımada üzerinde kurulan İstanbul''un batıdaki sınırını İstanbul Surları oluşturmaktaydı. Gelişme ve büyüme sürecinde surların her seferinde daha batıya ilerletilerek inşa edilmesiyle dört defa genişletilen şehrin[11] 39 ilçesi vardır. Sınırları içerisinde ise büyükşehir belediyesi ile birlikte toplam 40 belediye bulunmaktadır.', N'https://i.hizliresim.com/2zkztcb.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (7, N'Futbol şehri Barcelona', CAST(N'2022-04-10T00:00:00.000' AS DateTime), N'Barselona (İspanyolca ve Katalanca: Barcelona), İspanya''nın kuzeydoğu kıyısında bulunan bir kent. Katalonya özerk bölgesinin başkenti ve en büyük kenti, ayrıca İspanya''nın nüfus bakımından ikinci en büyük kentidir. Şehir merkezi sınırları içindeki nüfusu 1,6 milyon, komşu ilçelerle birlikte Barselona ilinin nüfusu 4,8 milyondur. Avrupa Birliği sınırları içindeki beşinci en büyük metropoliten alandır. Kent, İspanya-Fransa sınırının yaklaşık 150 km güneyinde yer alır. İspanya''nın Akdeniz kıyısındaki en önemli limanı ve ticaret merkezidir. Kendine özgü kültürü ve güzelliğiyle ün yapan Barselona''nın, Gaudi''nin başını çektiği modernizm akımıyla planlanmış, 1900''lerden kalma ızgara planlı modern bölümü ilgi çekmektedir. Yaygın dil Katalanca''dır. 1992 Yaz Olimpiyatları''na ev sahipliği yapmıştır.', N'https://i.hizliresim.com/7ecwpap.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (9, N'Bir Sonraki Rota Belçika', CAST(N'2022-02-11T00:00:00.000' AS DateTime), N'Cermen ve Latin dünyası arasında bir sınır oluşturan Belçika''da Felemenkler tarafından Felemenkçe, Valonlar tarafından Fransızca ve küçük bir Alman grup tarafından Almanca konuşulur. Belçika federal bir devlet yapısına sahip olup Felemenkçe''nin resmî dil olduğu Flaman Bölgesi, Fransızcanın resmi dil olduğu Valon Bölgesi ve her iki dilin de resmî dil sıfatını taşıdıkları Brüksel Başkent Bölgesi''nden oluşur.[6] Son olarak, tamamı Valon Bölgesi''nin sınırları içinde kalan ve Almanya''ya komşu Almanca konuşan küçük bir topluluk, Valon bölgesine bağlı olmakla birlikte bazı alanlarda özerkliğe sahiptir ve yaşadıkları bölgede Almanca resmi dildir.[7] Belçika''nın dilsel çeşitliliği ve bununla ilgili politik ve kültürel anlaşmazlığı, Belçika tarihine ve yönetim sistemine yansımıştır.[8][9]', N'https://i.hizliresim.com/t2e8og8.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (13, N'Brükselde Akşam Yemeği', CAST(N'2018-05-02T00:00:00.000' AS DateTime), N'Belçika vatandaşlığını edinmek diğer AB ülkelerine kıyasla çok daha kolay olduğu için 1960''lardan itibaren kayda değer bir yabancı kökenli nüfus da Brüksel''e yerleşmiştir. Başlangıçta genellikle vasıfsız göçmen işçi olarak gelen bu kuşak ve ardından ikinci ve üçüncü nesiller içinde, başta Faslılar, ardından, aşağı yukarı denk sayıda, çoğu Emirdağ kökenli Türkler ve eski bir Belçika sömürgesi olan Kongo''lu Afrikalılar köken sıralamasında ilk üçü oluşturmaktadırlar. 1970''lerden itibaren özellikle AB resmî kurumlarının sağladığı iş imkânları nedeniyle yabancı kökenli nüfusa, AB ülkeleri kökenli ve daha kalifiye bir topluluk da eklenmiştir ve sayıları artmaktadır.', N'https://i.hizliresim.com/f008xgo.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (14, N'Hollandaya Doğru Giderken', CAST(N'2017-06-08T00:00:00.000' AS DateTime), N'Hollanda meşruti monarşi ile yönetilen bir Avrupa ülkesidir. Hollanda nüfus yoğunluğu fazla olan bir ülkedir. Ülke topraklarının çoğunluğu deniz seviyesinin altındadır. Hollanda Avrupa Birliği, NATO, OECD üyesidir. Hollanda aynı zamanda Schengen Bölgesi ve Benelüks topluluğunun bir parçasıdır. Belçika ve Lüksemburg ile birlikte Benelüks ülkelerini oluşturan 3 ülkeden biridir. Ayrıca Kyoto Sözleşmesi''ni imzalamıştır. Ülke Eski Yugoslavya Uluslararası Ceza Mahkemesi''ne, Uluslararası Adalet Divanı''na Uluslararası Ceza Mahkemesi''ne ve Europol''e ev sahipliği yapmaktadır.', N'https://i.hizliresim.com/i6n6uk6.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (15, N'Amsterdamda Bisikletle Bir Gün', CAST(N'2017-07-08T00:00:00.000' AS DateTime), N'Hollanda''nın birçok yerinde olduğu gibi, Amsterdam''da da kanallar bataklık olan bölgede öncelikle suları denetim altına almak için kazılmıştır. Bunun yanı sıra savunma ile ulaşım için de kullanılmıştır. Bazı kanalların üzerinde tekne evler bulunur. Bunlar genellikle eski tekneler ya da baştan ev olarak tasarlanmış teknelerdir. İlk olarak 60''lı 70''li yıllardaki konut sıkıntısının sonucu olarak ortaya çıkan tekne evler, bugünlerde yalnızca zorunluluktan değil, daha çok bir yaşam tarzı yeğlemesi olarak öne çıkmaktadır.', N'https://i.hizliresim.com/kwvqww5.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (16, N'Rotterdamda Vapur Seyahati', CAST(N'2018-05-09T00:00:00.000' AS DateTime), N'Hollanda''nın Güneybatısında bulunur. Amsterdam''dan sonra nüfus olarak 2. büyük şehirdir, fakat Rotterdam''ın yüzölçümü daha büyüktür. Rotterdam, Avrupa''nın en büyük limanını bünyesinde barındırır. Dünyanın dört bir yanından getirilen kargoların kıtaya kuzeyden giriş noktasıdır. İsmini Rotte ırmağından almaktadır. Nüfusun (1 Ocak 2007''de: 584.046 kişi) yaklaşık yarısının Hollanda kökenli olmadığı bu şehirde, %7,8 oranında (45.457 kişi) kayda değer bir Türk nüfusu da yaşamaktadır. Avrupa İslam Üniversitesi de Rotterdam merkezli faaliyet sürdüren bir eğitim kurumudur. Rotterdam''ın ulusal sloganı: Sterker door Strijd, yani: Mücadele ederek, daha güçlü olmak.', N'https://i.hizliresim.com/hq0s568.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (17, N'İtalyada Akşam Yemeği', CAST(N'2019-10-10T00:00:00.000' AS DateTime), N'Güney Avrupa ve Akdeniz''deki merkezi konumu nedeniyle İtalya yüzyıllar boyunca çeşitli Avrupa uygarlıklarına ev sahipliği yapmıştır. Günümüz İtalya topraklarına yayılmış en önemlileri Hint-Avrupa kökenli ve ülkeye de ismini vermiş olan İtalikler olan antik toplulukların ardından, Klasik Antik Çağ''dan başlayarak Fenikeliler ve Kartacalılar, Sicilya ve Sardinya''da koloniler kurdular;[11] Yunanlar ise Güney İtalya''da Magna Graecia adını verdikleri bölgede yerleşimler oluşturdular. Etrüskler ve Keltler de Orta ve Kuzey İtalya''yı yurt edindiler. İtalik bir kavim olan Latinler, MÖ 8. yüzyılda ileride Roma Senatosu ve Halkı tarafından yönetilecek bir cumhuriyete dönüşecek Roma Krallığı''nı kurdular. Roma Cumhuriyeti kısa sürede İtalya Yarımadası''ndaki komşularını ele geçirdi, bunu Avrupa, Kuzey Afrika ve Asya''daki fetihler izledi. MÖ 1. yüzyıla gelindiğinde Roma İmparatorluğu, Akdeniz Havzası''nın hakim gücü haline geldi ve bölgenin önde gelen kültürel, siyasi ve dini merkezi oldu.', N'https://i.hizliresim.com/ih5miy9.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (18, N'Norveçte Doğa ', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Norveç Avrupa ortalamasının üstünde yaşam standardına ve ekonomik gelişmişliğe sahip olduğundan Avrupa Birliği''ne girmek istememektedir. Zira, ülke kıyılarındaki petrol rezervlerinin zenginliği[9] ve dünya ve Avrupa balıkçılık sektörünü elinde bulundurması[10] ile tanınmaktadır. Avrupa Birliği''ne olumsuz yaklaşmalarının bir nedeni de balıkçılık sektörünü olumsuz etkileyeceği yönündeki çekinceleridir. Öte yandan; Norveç, İsviçre, İzlanda ve Lihtenştayn ile birlikte EFTA (Avrupa Serbest Dolaşım Örgütü) üyesidir ve bu örgütü terk edip AB''ye geçmeyi istememektedir.', N'https://i.hizliresim.com/qf8kfhz.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (20, N'Bekle Beni Prag!!', CAST(N'2010-12-22T00:00:00.000' AS DateTime), N'Çeklerin ataları Prag çevresine ağırlıklı olarak 5. Yüzyıl''dan sonraki göçlerle gelmişlerdir. Prag''ın gelişmesi 9. Yüzyıl''ın sonlarında kurulan Bohemya Devleti''nin başkenti olmasıyla mümkün olmuştur. Prag''ın merkezinde yer aldığı topraklar Premysl hanedanından düklerin ve daha sonra aynı hanedandan Bohemya krallarının ikametgahı olmuştur. Prag 973''te piskoposluk, 1344''te başpiskoposluk merkezi haline gelmiştir. Prag merkezli krallık 1310'' da Lüksemburg hanedanına geçmiştir.[1] Şehrin gelişmesi Kral IV. Charles döneminde (1346-1378) hızlansa da 15. Yüzyıl''da mezhep çatışmalarından dolayı çıkan Hussit Savaşları ve 17. yüzyıldaki Otuz Yıl Savaşları Prag ve Bohemya halkına büyük zararlar verdi. 16. yüzyıldan itibaren Bohemya Habsburglar''ın yönetimi altına girdi.', N'https://www.flypgs.com/blog/wp-content/uploads/2022/06/prag-da-ucretsiz-olarak-yapabilecegin-seyler.jpg')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkimizdas] ON 

INSERT [dbo].[Hakkimizdas] ([ID], [FotoUrl], [Aciklama]) VALUES (1, N'https://i.hizliresim.com/g0rtd3i.jpg', N'Bu proje MVC5 te CodeFirst kullanılarak yapıldı.')
SET IDENTITY_INSERT [dbo].[Hakkimizdas] OFF
GO
SET IDENTITY_INSERT [dbo].[iletisims] ON 

INSERT [dbo].[iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (1, N'Özhan Aloğlu', N'ozhanaloglu@gmail.com', N'İş Teklifi', N'Projenizi çok beğendim. Sizlere iş teklifinde bulunmak istiyorum.')
INSERT [dbo].[iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (2, N'Feridun Kavak', N'frdkvk@gmail.com', N'Yorum Paneli', N'Yorum panelinizin template çıktısını alabilir miyim?')
INSERT [dbo].[iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (3, N'Fatih Halı', N'fthhlı@gmail.com', N'Ana Sayfa', N'Ana Sayfada daha fazla geliştirme yapmalısınız.')
INSERT [dbo].[iletisims] ([ID], [AdSoyad], [Mail], [Konu], [Mesaj]) VALUES (108, N'İsmail kahraman', N'isokahraman@gmail.com', N'iş teklifi', N'sıghs')
SET IDENTITY_INSERT [dbo].[iletisims] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorumlars] ON 

INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (1, N'Beyza', N'beyza@gmail.com', N'Geçen yıl gittim. Mükemmel bir şehirdi.', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (3, N'Özhan', N'ozhan@gmail.com', N'Aşıklar şehri olmasının sebebini gidince daha çok anladım.', 5)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (4, N'Oğuzhan', N'oguzhan@gmail.com', N'İstanbul gerçekten muhteşem bir şehir ve Türk yemekleri çok harika', 6)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (5, N'Şevki', N'sevki@gmail.com', N'Romaya sürekli gitmek istemiştim ve istekli olmamda ne kadar hakli olduğumu gidince anladım.', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (6, N'Erdem', N'erdem@gmail.com', N'Hollanda renklerin ülkesi.', 14)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (8, N'Cahit', N'chtghj@gmail.com', N'Hollanda harika bir ülke.', 14)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (9, N'Selma', N'slma@gmail.com', N'Hollanda yemek kültürü biraz zayıf olsada insanları mükemmel.', 14)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (10, N'Vahdettin', N'vahdettin@gmail.com', N'Romada tarihin kokusu sokaklara vuruyordu.', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (11, N'Galip', N'galip@gmail.com', N'Romanın yemeği kadar eğlenceside müthiş.', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (12, N'Fatih', N'fatih@gmail.com', N'İstanbul mükemmel bir şehir.', 6)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (13, N'Tuğçe', N'tugcegali@gmail.com', N'İstanbulda balık ekmek inanılmaz lezzetliydi.', 6)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (14, N'Demir', N'demr@gmail.com', N'Paris sokaklarında otobüs ile gezmek inanılmaz huzur verici.', 5)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (15, N'Erhan', N'erhanves@gmail.com', N'Eyfel kulesi muhteşemdi.', 5)
INSERT [dbo].[Yorumlars] ([ID], [KullanıcıAdi], [Mail], [Yorum], [Blogid]) VALUES (16, N'Şehmuz', N'sehmuz@gmail.com', N'Norvecin doğası muhteşemdi..', 18)
SET IDENTITY_INSERT [dbo].[Yorumlars] OFF
GO
/****** Object:  Index [IX_Blogid]    Script Date: 21.12.2022 23:56:47 ******/
CREATE NONCLUSTERED INDEX [IX_Blogid] ON [dbo].[Yorumlars]
(
	[Blogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid] FOREIGN KEY([Blogid])
REFERENCES [dbo].[Blogs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid]
GO
USE [master]
GO
ALTER DATABASE [TravelDb] SET  READ_WRITE 
GO
