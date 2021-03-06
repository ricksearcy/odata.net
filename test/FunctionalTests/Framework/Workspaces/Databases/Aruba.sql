/*---------------------------------------------------------------------
// <copyright file="Aruba.sql" company="Microsoft">
//      Copyright (C) Microsoft Corporation. All rights reserved. See License.txt in the project root for license information.
// </copyright>
//---------------------------------------------------------------------*/
ALTER DATABASE {0} SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC {0}.[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE {0} SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE {0} SET ANSI_NULLS OFF 
GO
ALTER DATABASE {0} SET ANSI_PADDING OFF 
GO
ALTER DATABASE {0} SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE {0} SET ARITHABORT OFF 
GO
ALTER DATABASE {0} SET AUTO_CLOSE ON 
GO
ALTER DATABASE {0} SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE {0} SET AUTO_SHRINK OFF 
GO
ALTER DATABASE {0} SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE {0} SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE {0} SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE {0} SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE {0} SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE {0} SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE {0} SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE {0} SET  DISABLE_BROKER 
GO
ALTER DATABASE {0} SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE {0} SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE {0} SET TRUSTWORTHY OFF 
GO
ALTER DATABASE {0} SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE {0} SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE {0} SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE {0} SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE {0} SET RECOVERY SIMPLE 
GO
ALTER DATABASE {0} SET  MULTI_USER 
GO
ALTER DATABASE {0} SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE {0} SET DB_CHAINING OFF 
GO
ALTER DATABASE {0} SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE {0} SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE {0}
GO
/****** Object:  DatabaseRole [TestSel]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE ROLE [TestSel]
GO
/****** Object:  DatabaseRole [TestMod]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE ROLE [TestMod]
GO
/****** Object:  DatabaseRole [oledb]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE ROLE [oledb]
GO
/****** Object:  DatabaseRole [odbc2]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE ROLE [odbc2]
GO
/****** Object:  DatabaseRole [odbc]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE ROLE [odbc]
GO
/****** Object:  DatabaseRole [adolablux]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE ROLE [adolablux]
GO
/****** Object:  DatabaseRole [adolab]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE ROLE [adolab]
GO
/****** Object:  Schema [adolab]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE SCHEMA [adolab]
GO
/****** Object:  Schema [adolablux]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE SCHEMA [adolablux]
GO
/****** Object:  Schema [odbc]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE SCHEMA [odbc]
GO
/****** Object:  Schema [odbc2]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE SCHEMA [odbc2]
GO
/****** Object:  Schema [oledb]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE SCHEMA [oledb]
GO
/****** Object:  Schema [TestMod]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE SCHEMA [TestMod]
GO
/****** Object:  Schema [TestSel]    Script Date: 6/29/2017 3:29:12 PM ******/
CREATE SCHEMA [TestSel]
GO
/****** Object:  StoredProcedure [dbo].[DefaultSproc]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[DefaultSproc] (@p1_int int, @p1_int_out int OUTPUT, @p3_smallint smallint, @p3_smallint_out smallint OUTPUT, @p5_tinyint tinyint, @p5_tinyint_out tinyint OUTPUT, @p7_bit bit, @p7_bit_out bit OUTPUT, @p9_datetime datetime, @p9_datetime_out datetime OUTPUT, @p11_smalldatetime smalldatetime, @p11_smalldatetime_out smalldatetime OUTPUT, @p13_decimal decimal(28,4), @p13_decimal_out decimal(28,4) OUTPUT, @p15_numeric numeric(28,4), @p15_numeric_out numeric(28,4) OUTPUT, @p17_real real, @p17_real_out real OUTPUT, @p19_float float, @p19_float_out float OUTPUT, @p21_money money, @p21_money_out money OUTPUT, @p23_smallmoney smallmoney, @p23_smallmoney_out smallmoney OUTPUT, @p25_varchar varchar(512), @p25_varchar_out varchar(512) OUTPUT, @p27_char char(512), @p27_char_out char(512) OUTPUT, @p29_text text, @p30_binary binary(512), @p30_binary_out binary(512) OUTPUT, @p32_varbinary varbinary(512), @p32_varbinary_out varbinary(512) OUTPUT, @p34_image image, @p35_timestamp timestamp, @p35_timestamp_out timestamp OUTPUT, @p37_rowversion rowversion, @p37_rowversion_out rowversion OUTPUT, @p39_nvarchar nvarchar(512), @p39_nvarchar_out nvarchar(512) OUTPUT, @p41_nchar nchar(512), @p41_nchar_out nchar(512) OUTPUT, @p43_ntext ntext, @p44_uniqueidentifier uniqueidentifier, @p44_uniqueidentifier_out uniqueidentifier OUTPUT, @p46_bigint bigint, @p46_bigint_out bigint OUTPUT) AS  SELECT [c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint] FROM [AllTypes] AS [AllTypes] ORDER BY [c1_int] ASC
GO
/****** Object:  StoredProcedure [dbo].[DeleteTester]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[DeleteTester] (@param1_int int) AS  DELETE [Testers] WHERE  ([Id] = @param1_int ) 
GO
/****** Object:  StoredProcedure [dbo].[InsertTester]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[InsertTester] (@param1_int int, @param2_varchar_512_ varchar(512)) AS  INSERT [Testers] ([Id], [Name]) VALUES ( @param1_int,  @param2_varchar_512_)
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectAllTypes]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SP_SelectAllTypes] (@c25_intP int, @c26_smallintP smallint, @c27_tinyintP tinyint, @c28_bitP bit, @c29_datetimeP datetime, @c30_smalldatetimeP smalldatetime, @c31_decimal_28_4_P decimal(28,4), @c32_numeric_28_4_P numeric(28,4), @c33_realP real, @c34_floatP float, @c35_moneyP money, @c36_smallmoneyP smallmoney, @c37_varchar_512_P varchar(512), @c38_char_512_P char(512), @c39_textP text, @c40_binary_512_P binary(512), @c41_varbinary_512_P varbinary(512), @c42_imageP image, @c43_nvarchar_512_P nvarchar(512), @c44_nchar_512_P nchar(512), @c45_ntextP ntext, @c46_uniqueidentifierP uniqueidentifier, @c47_bigintP bigint) AS  SELECT [c1_int] AS [c1_int], [c2_int] AS [c2_int], [c3_smallint] AS [c3_smallint], [c4_tinyint] AS [c4_tinyint], [c5_bit] AS [c5_bit], [c6_datetime] AS [c6_datetime], [c7_smalldatetime] AS [c7_smalldatetime], [c8_decimal(28,4)] AS [c8_decimal_28_4_], [c9_numeric(28,4)] AS [c9_numeric_28_4_], [c10_real] AS [c10_real], [c11_float] AS [c11_float], [c12_money] AS [c12_money], [c13_smallmoney] AS [c13_smallmoney], [c14_varchar(512)] AS [c14_varchar_512_], [c15_char(512)] AS [c15_char_512_], [c16_text] AS [c16_text], [c17_binary(512)] AS [c17_binary_512_], [c18_varbinary(512)] AS [c18_varbinary_512_], [c19_image] AS [c19_image], [c20_nvarchar(512)] AS [c20_nvarchar_512_], [c21_nchar(512)] AS [c21_nchar_512_], [c22_ntext] AS [c22_ntext], [c23_uniqueidentifier] AS [c23_uniqueidentifier], [c24_bigint] AS [c24_bigint], [c25_int] AS [c25_int], [c26_smallint] AS [c26_smallint], [c27_tinyint] AS [c27_tinyint], [c28_bit] AS [c28_bit], [c29_datetime] AS [c29_datetime], [c30_smalldatetime] AS [c30_smalldatetime], [c31_decimal(28,4)] AS [c31_decimal_28_4_], [c32_numeric(28,4)] AS [c32_numeric_28_4_], [c33_real] AS [c33_real], [c34_float] AS [c34_float], [c35_money] AS [c35_money], [c36_smallmoney] AS [c36_smallmoney], [c37_varchar(512)] AS [c37_varchar_512_], [c38_char(512)] AS [c38_char_512_], [c39_text] AS [c39_text], [c40_binary(512)] AS [c40_binary_512_], [c41_varbinary(512)] AS [c41_varbinary_512_], [c42_image] AS [c42_image], [c43_nvarchar(512)] AS [c43_nvarchar_512_], [c44_nchar(512)] AS [c44_nchar_512_], [c45_ntext] AS [c45_ntext], [c46_uniqueidentifier] AS [c46_uniqueidentifier], [c47_bigint] AS [c47_bigint] FROM [AllTypes] AS [AllTypes] WHERE  ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ( ([c25_int] = @c25_intP )  OR ( ([c25_int] IS NULL )  AND ( @c25_intP IS NULL )  )  )  AND ( ([c26_smallint] = @c26_smallintP )  OR ( ([c26_smallint] IS NULL )  AND ( @c26_smallintP IS NULL )  )  )  )  AND ( ([c27_tinyint] = @c27_tinyintP )  OR ( ([c27_tinyint] IS NULL )  AND ( @c27_tinyintP IS NULL )  )  )  )  AND ( ([c28_bit] = @c28_bitP )  OR ( ([c28_bit] IS NULL )  AND ( @c28_bitP IS NULL )  )  )  )  AND ( ([c29_datetime] = @c29_datetimeP )  OR ( ([c29_datetime] IS NULL )  AND ( @c29_datetimeP IS NULL )  )  )  )  AND ( ([c30_smalldatetime] = @c30_smalldatetimeP )  OR ( ([c30_smalldatetime] IS NULL )  AND ( @c30_smalldatetimeP IS NULL )  )  )  )  AND ( ([c31_decimal(28,4)] = @c31_decimal_28_4_P )  OR ( ([c31_decimal(28,4)] IS NULL )  AND ( @c31_decimal_28_4_P IS NULL )  )  )  )  AND ( ([c32_numeric(28,4)] = @c32_numeric_28_4_P )  OR ( ([c32_numeric(28,4)] IS NULL )  AND ( @c32_numeric_28_4_P IS NULL )  )  )  )  AND ( ([c33_real] = @c33_realP )  OR ( ([c33_real] IS NULL )  AND ( @c33_realP IS NULL )  )  )  )  AND ( ([c34_float] = @c34_floatP )  OR ( ([c34_float] IS NULL )  AND ( @c34_floatP IS NULL )  )  )  )  AND ( ([c35_money] = @c35_moneyP )  OR ( ([c35_money] IS NULL )  AND ( @c35_moneyP IS NULL )  )  )  )  AND ( ([c36_smallmoney] = @c36_smallmoneyP )  OR ( ([c36_smallmoney] IS NULL )  AND ( @c36_smallmoneyP IS NULL )  )  )  )  AND ( ([c37_varchar(512)] = @c37_varchar_512_P )  OR ( ([c37_varchar(512)] IS NULL )  AND ( @c37_varchar_512_P IS NULL )  )  )  )  AND ( ([c38_char(512)] = @c38_char_512_P )  OR ( ([c38_char(512)] IS NULL )  AND ( @c38_char_512_P IS NULL )  )  )  )  AND ( ([c40_binary(512)] = @c40_binary_512_P )  OR ( ([c40_binary(512)] IS NULL )  AND ( @c40_binary_512_P IS NULL )  )  )  )  AND ( ([c41_varbinary(512)] = @c41_varbinary_512_P )  OR ( ([c41_varbinary(512)] IS NULL )  AND ( @c41_varbinary_512_P IS NULL )  )  )  )  AND ( ([c43_nvarchar(512)] = @c43_nvarchar_512_P )  OR ( ([c43_nvarchar(512)] IS NULL )  AND ( @c43_nvarchar_512_P IS NULL )  )  )  )  AND ( ([c44_nchar(512)] = @c44_nchar_512_P )  OR ( ([c44_nchar(512)] IS NULL )  AND ( @c44_nchar_512_P IS NULL )  )  )  )  AND ( ([c46_uniqueidentifier] = @c46_uniqueidentifierP )  OR ( ([c46_uniqueidentifier] IS NULL )  AND ( @c46_uniqueidentifierP IS NULL )  )  )  )  AND ( ([c47_bigint] = @c47_bigintP )  OR ( ([c47_bigint] IS NULL )  AND ( @c47_bigintP IS NULL )  )  )  )  ORDER BY [c1_int] ASC  
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectOwners]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SP_SelectOwners] AS  SELECT [Id] AS [Id], [FirstName] AS [FirstName], [LastName] AS [LastName], [Alias] AS [Alias] FROM [Owners] AS [Owners] ORDER BY [Id] ASC  
GO
/****** Object:  StoredProcedure [dbo].[SSelectBugs]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[SSelectBugs] (@IdP int, @param2_int int OUTPUT, @param3_int int OUTPUT, @NumberP int, @param5_int int OUTPUT, @param6_int int OUTPUT, @CommentP varchar(512), @param8_varchar_512_ varchar(512) OUTPUT, @param9_varchar_512_ varchar(512) OUTPUT) AS  SELECT [Id] AS [Id], [Number] AS [Number], [Comment] AS [Comment] FROM [BugsDefectTracking] AS [BugsDefectTracking] ORDER BY [Id] ASC  SET @param3_int =  @param2_int SET @param6_int =  @param5_int SET @param9_varchar_512_ =  @param8_varchar_512_ SET @param2_int =  @IdP SET @param5_int =  @NumberP SET @param8_varchar_512_ =  @CommentP
GO
/****** Object:  StoredProcedure [dbo].[UpdateTester]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[UpdateTester] (@param1_int int, @param2_varchar_512_ varchar(512)) AS  UPDATE [Testers] SET [Name] =  @param2_varchar_512_ WHERE  ([Id] = @param1_int ) 
GO
/****** Object:  UserDefinedFunction [dbo].[MyStoreFunction_BVT_89653708_11f0_4a3a_8edb_e9b2e062da7d_15153]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[MyStoreFunction_BVT_89653708_11f0_4a3a_8edb_e9b2e062da7d_15153](@par int) RETURNS int AS
BEGIN
RETURN @par * @par
END

GO
/****** Object:  Table [dbo].[Albums]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[albumId] [int] IDENTITY(1,1) NOT NULL,
	[AlbumName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[albumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Albums2]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums2](
	[albumId] [int] NOT NULL,
	[AlbumName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Albums2] PRIMARY KEY CLUSTERED 
(
	[albumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Albums3]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums3](
	[albumId] [int] NOT NULL,
	[AlbumName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Albums3] PRIMARY KEY CLUSTERED 
(
	[albumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AllTypes]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllTypes](
	[c1_int] [int] IDENTITY(100,2) NOT NULL,
	[c2_int] [int] NOT NULL,
	[c3_smallint] [smallint] NOT NULL,
	[c4_tinyint] [tinyint] NOT NULL,
	[c5_bit] [bit] NOT NULL,
	[c6_datetime] [datetime] NOT NULL,
	[c7_smalldatetime] [smalldatetime] NOT NULL,
	[c8_decimal(28,4)] [decimal](28, 4) NOT NULL,
	[c9_numeric(28,4)] [numeric](28, 4) NOT NULL,
	[c10_real] [real] NOT NULL,
	[c11_float] [float] NOT NULL,
	[c12_money] [money] NOT NULL,
	[c13_smallmoney] [smallmoney] NOT NULL,
	[c14_varchar(512)] [varchar](512) NOT NULL,
	[c15_char(512)] [char](512) NOT NULL,
	[c16_text] [text] NOT NULL,
	[c17_binary(512)] [binary](512) NOT NULL,
	[c18_varbinary(512)] [varbinary](512) NOT NULL,
	[c19_image] [image] NOT NULL,
	[c20_nvarchar(512)] [nvarchar](512) NOT NULL,
	[c21_nchar(512)] [nchar](512) NOT NULL,
	[c22_ntext] [ntext] NOT NULL,
	[c23_uniqueidentifier] [uniqueidentifier] NOT NULL,
	[c24_bigint] [bigint] NOT NULL,
	[c25_int] [int] NULL,
	[c26_smallint] [smallint] NULL,
	[c27_tinyint] [tinyint] NULL,
	[c28_bit] [bit] NULL,
	[c29_datetime] [datetime] NULL,
	[c30_smalldatetime] [smalldatetime] NULL,
	[c31_decimal(28,4)] [decimal](28, 4) NULL,
	[c32_numeric(28,4)] [numeric](28, 4) NULL,
	[c33_real] [real] NULL,
	[c34_float] [float] NULL,
	[c35_money] [money] NULL,
	[c36_smallmoney] [smallmoney] NULL,
	[c37_varchar(512)] [varchar](512) NULL,
	[c38_char(512)] [char](512) NULL,
	[c39_text] [text] NULL,
	[c40_binary(512)] [binary](512) NULL,
	[c41_varbinary(512)] [varbinary](512) NULL,
	[c42_image] [image] NULL,
	[c43_nvarchar(512)] [nvarchar](512) NULL,
	[c44_nchar(512)] [nchar](512) NULL,
	[c45_ntext] [ntext] NULL,
	[c46_uniqueidentifier] [uniqueidentifier] NULL,
	[c47_bigint] [bigint] NULL,
 CONSTRAINT [PK__AllTypes__76CBA758] PRIMARY KEY CLUSTERED 
(
	[c1_int] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AllTypesComplex]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AllTypesComplex](
	[c1_int] [int] NOT NULL,
	[c2_int] [int] NOT NULL,
	[c3_smallint] [smallint] NOT NULL,
	[c4_tinyint] [tinyint] NOT NULL,
	[c5_bit] [bit] NOT NULL,
	[c6_datetime] [datetime] NOT NULL,
	[c7_smalldatetime] [smalldatetime] NOT NULL,
	[c8_decimal(28,4)] [decimal](28, 4) NOT NULL,
	[c9_numeric(28,4)] [numeric](28, 4) NOT NULL,
	[c10_real] [real] NOT NULL,
	[c11_float] [float] NOT NULL,
	[c12_money] [money] NOT NULL,
	[c13_smallmoney] [smallmoney] NOT NULL,
	[c14_varchar(512)] [varchar](512) NOT NULL,
	[c15_char(512)] [char](512) NOT NULL,
	[c16_text] [text] NOT NULL,
	[c17_binary(512)] [binary](512) NOT NULL,
	[c18_varbinary(512)] [varbinary](512) NOT NULL,
	[c19_image] [image] NOT NULL,
	[c20_nvarchar(512)] [nvarchar](512) NOT NULL,
	[c21_nchar(512)] [nchar](512) NOT NULL,
	[c22_ntext] [ntext] NOT NULL,
	[c23_uniqueidentifier] [uniqueidentifier] NOT NULL,
	[c24_bigint] [bigint] NOT NULL,
 CONSTRAINT [PK__AllTypesComplex__78B3EFCA] PRIMARY KEY CLUSTERED 
(
	[c1_int] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArtistName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Artists_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artists2]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists2](
	[Id] [int] NOT NULL,
	[ArtistName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Artists2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artists3]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists3](
	[Id] [int] NOT NULL,
	[ArtistName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Artists3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BugsDefectTracking]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BugsDefectTracking](
	[Id] [int] NOT NULL,
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[FailureId] [int] NULL,
	[AssignedToId] [int] NOT NULL,
	[ResolvedById] [int] NULL,
	[Comment] [varchar](512) NULL,
 CONSTRAINT [PK__BugsDefectTracki__25869641] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BugsProjectTracking]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BugsProjectTracking](
	[Id] [int] NOT NULL,
	[Number] [int] IDENTITY(1,1) NOT NULL,
	[FailureId] [int] NULL,
	[AssignedToId] [int] NOT NULL,
	[ResolvedById] [int] NULL,
	[Comment] [varchar](512) NULL,
 CONSTRAINT [PK__BugsProjectTrack__2A4B4B5E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Builds]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Builds](
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Builds] PRIMARY KEY CLUSTERED 
(
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colleges]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colleges](
	[CollegeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[State] [nvarchar](30) NOT NULL,
	[CountryOrRegion] [nvarchar](30) NOT NULL,
	[Type] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Colleges] PRIMARY KEY CLUSTERED 
(
	[CollegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComputerDetails]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComputerDetails](
	[MachineName] [nvarchar](30) NOT NULL,
	[OperatingSystem] [nvarchar](30) NOT NULL,
	[OperatingSystemVersion] [nvarchar](30) NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_ComputerDetails] PRIMARY KEY CLUSTERED 
(
	[MachineName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Computers]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Computers](
	[MachineName] [nvarchar](30) NOT NULL,
	[Manufacturer] [nvarchar](30) NOT NULL,
	[Model] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Computers] PRIMARY KEY CLUSTERED 
(
	[MachineName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConfigFailures]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigFailures](
	[ConfigId] [int] NOT NULL,
	[FailureId] [int] NOT NULL,
 CONSTRAINT [PK_ConfigFailures] PRIMARY KEY CLUSTERED 
(
	[ConfigId] ASC,
	[FailureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Configs]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Configs](
	[Id] [int] NOT NULL,
	[OS] [varchar](512) NULL,
	[Language] [varchar](512) NULL,
	[Architecture] [varchar](512) NULL,
 CONSTRAINT [PK__Configs__7E6CC920] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataKey_BigInt]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_BigInt](
	[Id] [bigint] NOT NULL,
	[DataColumn] [nchar](10) NULL,
 CONSTRAINT [PK_DataKey_BigInt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_Bit]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_Bit](
	[Id] [bit] NOT NULL,
	[DataColumn] [xml] NULL,
 CONSTRAINT [PK_DataKey_Bit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_DateTime]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataKey_DateTime](
	[Id] [datetime] NOT NULL,
	[DataColumn] [binary](50) NULL,
 CONSTRAINT [PK_DataKey_DateTime] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataKey_Decimal]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataKey_Decimal](
	[Id] [decimal](16, 2) NOT NULL,
	[DataColumn] [char](10) NULL,
 CONSTRAINT [PK_DataKey_Decimal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataKey_Float]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_Float](
	[Id] [float] NOT NULL,
	[DataColumn] [image] NULL,
 CONSTRAINT [PK_DataKey_Float] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_GUID]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataKey_GUID](
	[Id] [uniqueidentifier] NOT NULL,
	[DataColumn] [varbinary](max) NULL,
 CONSTRAINT [PK_DataKey_GUID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataKey_Money]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_Money](
	[Id] [money] NOT NULL,
	[DataColumn] [nchar](10) NULL,
 CONSTRAINT [PK_DataKey_Money] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_Numeric]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_Numeric](
	[Id] [numeric](38, 18) NOT NULL,
	[DataColumn] [nvarchar](50) NULL,
 CONSTRAINT [PK_DataKey_Numeric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_Real]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_Real](
	[Id] [real] NOT NULL,
	[DataColumn] [nvarchar](max) NULL,
 CONSTRAINT [PK_DataKey_Real] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_SmallDateTime]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_SmallDateTime](
	[Id] [smalldatetime] NOT NULL,
	[DataColumn] [nchar](10) NULL,
 CONSTRAINT [PK_DataKey_SmallDateTime] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_SmallMoney]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataKey_SmallMoney](
	[Id] [smallmoney] NOT NULL,
	[DataColumn] [varchar](max) NULL,
 CONSTRAINT [PK_DataKey_SqlVariant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataKey_TinyInt]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataKey_TinyInt](
	[Id] [tinyint] NOT NULL,
	[DataColumn] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DataKey_Timestamp_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataKey_VarChar50]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataKey_VarChar50](
	[Id] [varchar](50) NOT NULL,
	[DataColumn] [xml] NULL,
 CONSTRAINT [PK_DataKey_VarChar50] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeepTreeTable]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeepTreeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeFlag] [nchar](1) NOT NULL,
	[B_Int] [int] NULL,
	[C_Int] [int] NULL,
	[D_Int] [int] NULL,
	[E_Int] [int] NULL,
	[F_Int] [int] NULL,
	[G_Int] [int] NULL,
	[H_Int] [int] NULL,
	[I_Int] [int] NULL,
	[J_Int] [int] NULL,
	[K_Int] [int] NULL,
	[L_Int] [int] NULL,
	[M_Int] [int] NULL,
	[N_Int] [int] NULL,
 CONSTRAINT [PK_DeepTreeTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeploymentScenarios]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeploymentScenarios](
	[Id] [int] NOT NULL,
	[Name] [varchar](512) NULL,
	[ProjectId] [int] NULL,
 CONSTRAINT [PK__DeploymentScenar__33D4B598] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FailureDetails]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FailureDetails](
	[FailureId] [int] NOT NULL,
	[Log] [varchar](512) NULL,
 CONSTRAINT [PK__FailureDetails__1ED998B2] PRIMARY KEY CLUSTERED 
(
	[FailureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Failures]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Failures](
	[Id] [int] NOT NULL,
	[TestId] [int] NOT NULL,
	[Baseline] [bit] NULL,
	[TypeId] [int] NULL,
	[TestCase] [varchar](512) NULL,
	[Variation] [int] NULL,
	[Comment] [varchar](512) NULL,
	[Changed] [datetime] NOT NULL,
 CONSTRAINT [PK__Failures__1CF15040] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FailureTypes]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FailureTypes](
	[Id] [int] NOT NULL,
	[Name] [varchar](512) NULL,
 CONSTRAINT [PK__FailureTypes__1B0907CE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LabIssues]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabIssues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IssueType] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_LabIssues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LabOwners]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabOwners](
	[ownerAlias] [nvarchar](10) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Changed] [timestamp] NOT NULL,
 CONSTRAINT [PK_LabOwners] PRIMARY KEY CLUSTERED 
(
	[ownerAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MachineConfigs]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MachineConfigs](
	[Id] [int] NOT NULL,
	[Host] [varchar](512) NULL,
	[IP Address] [uniqueidentifier] NULL,
 CONSTRAINT [PK__MachineConfigs__00551192] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NonDefaultFacets]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NonDefaultFacets](
	[c1_int] [int] IDENTITY(100,2) NOT NULL,
	[c_decimal27_3_AS_decimal28_4] [decimal](28, 4) NULL,
	[c_decimal24_0_AS_decimal26_2] [decimal](26, 2) NULL,
	[c_numeric24_0_AS_numeric28_4] [numeric](28, 4) NULL,
	[c_numeric24_0_AS_numeric25_1] [numeric](25, 1) NULL,
	[c_varchar230_AS_varchar512] [varchar](512) NULL,
	[c_varchar17_AS_varchar98] [varchar](98) NULL,
	[c_varbinary60_AS_varbinary512] [varbinary](512) NULL,
	[c_varbinary31_AS_varbinary365] [varbinary](365) NULL,
	[c_varchar80_AS_nvarchar512] [nvarchar](512) NULL,
	[c_varchar185_AS_nvarchar285] [nvarchar](285) NULL,
 CONSTRAINT [PK__NonDefaultFacets__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[c1_int] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NonDefaultMappings]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonDefaultMappings](
	[c1_int] [int] IDENTITY(100,2) NOT NULL,
	[c_int_AS_decimal] [decimal](28, 4) NOT NULL,
	[c_int_AS_numeric] [numeric](28, 4) NULL,
	[c_int_AS_float] [float] NOT NULL,
	[c_int_AS_money] [money] NULL,
	[c_int_AS_bigint] [bigint] NOT NULL,
	[c_smallint_AS_int] [int] NULL,
	[c_smallint_AS_decimal] [decimal](28, 4) NOT NULL,
	[c_smallint_AS_numeric] [numeric](28, 4) NULL,
	[c_smallint_AS_real] [real] NOT NULL,
	[c_smallint_AS_float] [float] NULL,
	[c_smallint_AS_money] [money] NOT NULL,
	[c_smallint_AS_smallmoney] [smallmoney] NULL,
	[c_smallint_AS_bigint] [bigint] NOT NULL,
	[c_tinyint_AS_int] [int] NULL,
	[c_tinyint_AS_smallint] [smallint] NOT NULL,
	[c_tinyint_AS_decimal] [decimal](28, 4) NULL,
	[c_tinyint_AS_numeric] [numeric](28, 4) NOT NULL,
	[c_tinyint_AS_real] [real] NULL,
	[c_tinyint_AS_float] [float] NOT NULL,
	[c_tinyint_AS_money] [money] NULL,
	[c_tinyint_AS_smallmoney] [smallmoney] NOT NULL,
	[c_tinyint_AS_bigint] [bigint] NULL,
	[c_smalldatetime_AS_datetime] [datetime] NOT NULL,
	[c_varchar_AS_nvarchar] [nvarchar](512) NULL,
	[c_char_AS_nchar] [nchar](512) NOT NULL,
	[c_nvarchar_AS_ntext] [ntext] NULL,
	[c_bigint_AS_decimal] [decimal](28, 4) NOT NULL,
	[c_bigint_AS_numeric] [numeric](28, 4) NULL,
 CONSTRAINT [PK__NonDefaultMappin__7A9C383C] PRIMARY KEY CLUSTERED 
(
	[c1_int] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offices]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfficeNumber] [int] NOT NULL,
	[FloorNumber] [smallint] NOT NULL,
	[BuildingName] [nvarchar](30) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[State] [nvarchar](30) NOT NULL,
	[IsWindowOffice] [bit] NOT NULL,
 CONSTRAINT [PK_Offices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OldVehiclesLinkTable]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OldVehiclesLinkTable](
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[MiddleName] [nvarchar](30) NOT NULL,
	[VehicleId] [int] NOT NULL,
 CONSTRAINT [PK_OldVehiclesLinkTable_1] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OwnerContactInfos]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OwnerContactInfos](
	[ContactInfoId] [int] NOT NULL,
	[Email] [varchar](512) NULL,
	[WorkPhone] [varchar](512) NULL,
	[StreetAddress] [varchar](512) NULL,
	[City] [varchar](512) NULL,
	[State] [varchar](512) NULL,
	[MainZip] [varchar](512) NULL,
	[ExtendedZip] [varchar](512) NULL,
 CONSTRAINT [PK__OwnerContactInfo__0AD2A005] PRIMARY KEY CLUSTERED 
(
	[ContactInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OwnerDetails]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OwnerDetails](
	[DetailId] [int] NOT NULL,
	[HomeAddress1] [varchar](512) NULL,
	[HomeAddress2] [varchar](512) NULL,
	[Level] [int] NULL,
 CONSTRAINT [PK__OwnerDetails__0519C6AF] PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OwnerOwnerDetails]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnerOwnerDetails](
	[OwnerId] [int] NOT NULL,
	[DetailId] [int] NOT NULL,
 CONSTRAINT [PK__OwnerOwnerDetail__07020F21] PRIMARY KEY CLUSTERED 
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Owners]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Owners](
	[Id] [int] NOT NULL,
	[FirstName] [varchar](512) NULL,
	[LastName] [int] NULL,
	[Alias] [varchar](512) NOT NULL,
 CONSTRAINT [PK__Owners__03317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[People]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[MiddleName] [nvarchar](30) NOT NULL,
	[PropertyValue] [decimal](18, 3) NULL,
	[PrimaryVehicleId] [int] NULL,
	[PersonType] [nchar](1) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[FirstName] ASC,
	[LastName] ASC,
	[MiddleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Projects]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] NOT NULL,
	[Name] [varchar](512) NULL,
 CONSTRAINT [PK__Projects__2F10007B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecordingAlbumsLinkTable]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordingAlbumsLinkTable](
	[SongId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
 CONSTRAINT [PK_RecordingAlbumsLinkTable] PRIMARY KEY CLUSTERED 
(
	[SongId] ASC,
	[ArtistId] ASC,
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecordingAlbumsLinkTable2]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordingAlbumsLinkTable2](
	[SongId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
 CONSTRAINT [PK_RecordingAlbumsLinkTable2] PRIMARY KEY CLUSTERED 
(
	[SongId] ASC,
	[ArtistId] ASC,
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RecordingAlbumsLinkTable3]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordingAlbumsLinkTable3](
	[SongId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
 CONSTRAINT [PK_RecordingsAlbumsLinkTable3] PRIMARY KEY CLUSTERED 
(
	[SongId] ASC,
	[ArtistId] ASC,
	[AlbumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recordings]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recordings](
	[SongId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[DateOccurred] [datetime] NOT NULL,
	[OriginalSongId] [int] NULL,
	[OriginalArtistId] [int] NULL,
 CONSTRAINT [PK_Recordings] PRIMARY KEY CLUSTERED 
(
	[SongId] ASC,
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recordings2]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recordings2](
	[SongId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[DateOccurred] [datetime] NOT NULL,
	[OriginalSongId] [int] NULL,
	[OriginalArtistId] [int] NULL,
 CONSTRAINT [PK_Recordings2] PRIMARY KEY CLUSTERED 
(
	[SongId] ASC,
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recordings3]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recordings3](
	[SongId] [int] NOT NULL,
	[ArtistId] [int] NOT NULL,
	[DateOccurred] [datetime] NOT NULL,
	[OriginalSongId] [int] NULL,
	[OriginalArtistId] [int] NULL,
 CONSTRAINT [PK_Recordings3] PRIMARY KEY CLUSTERED 
(
	[SongId] ASC,
	[ArtistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Run1s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Run1s](
	[RunId1] [int] NOT NULL,
	[BuildID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Run1s] PRIMARY KEY CLUSTERED 
(
	[RunId1] ASC,
	[BuildID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Run2s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Run2s](
	[RunId2] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Run2] PRIMARY KEY CLUSTERED 
(
	[RunId2] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Run3s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Run3s](
	[RunId3] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Run3s] PRIMARY KEY CLUSTERED 
(
	[RunId3] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RunOwners]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RunOwners](
	[RunId] [int] NOT NULL,
	[OwnerId] [int] NOT NULL,
 CONSTRAINT [PK__RunOwners__0EA330E9] PRIMARY KEY CLUSTERED 
(
	[RunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Runs]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Runs](
	[Id] [int] NOT NULL,
	[Name] [varchar](512) NOT NULL,
	[Purpose] [int] NULL,
	[Started] [datetime] NULL,
	[Completed] [datetime] NULL,
	[StartedBy] [varchar](512) NULL,
	[RequestStarted] [datetime] NULL,
	[RequestCompleted] [datetime] NULL,
	[RequestStartedBy] [varchar](512) NULL,
 CONSTRAINT [PK__Runs__0CBAE877] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Songs]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Songs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SongName] [nvarchar](300) NULL,
 CONSTRAINT [PK_Songs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Songs2]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Songs2](
	[Id] [int] NOT NULL,
	[SongName] [nvarchar](300) NULL,
 CONSTRAINT [PK_Songs1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Songs3]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Songs3](
	[Id] [int] NOT NULL,
	[SongName] [nvarchar](300) NULL,
 CONSTRAINT [PK_Songs3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[Major] [nvarchar](50) NOT NULL,
	[CollegeId] [int] NOT NULL,
	[StudentType] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaskInvestigates]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskInvestigates](
	[TaskId] [int] NOT NULL,
	[Investigates] [bigint] NULL,
	[Improvements] [bigint] NULL,
 CONSTRAINT [PK__TaskInvestigates__182C9B23] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaskResults]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskResults](
	[TaskId] [int] NOT NULL,
	[Passed] [bigint] NULL,
	[Failed] [bigint] NULL,
 CONSTRAINT [PK__TaskResults__15502E78] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] NOT NULL,
	[ConfigId] [int] NULL,
	[Deleted] [bit] NULL,
	[RunId] [int] NOT NULL,
	[Started] [datetime] NULL,
	[Completed] [datetime] NULL,
	[StartedBy] [varchar](512) NULL,
 CONSTRAINT [PK__Tasks__1273C1CD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Test1s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test1s](
	[TestId1] [int] NOT NULL,
	[RunId1] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test1s] PRIMARY KEY CLUSTERED 
(
	[TestId1] ASC,
	[RunId1] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test2s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test2s](
	[TestId2] [int] NOT NULL,
	[RunId1] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test2s] PRIMARY KEY CLUSTERED 
(
	[TestId2] ASC,
	[RunId1] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test3s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test3s](
	[TestId3] [int] NOT NULL,
	[RunId1] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test3s] PRIMARY KEY CLUSTERED 
(
	[TestId3] ASC,
	[RunId1] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test4s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test4s](
	[TestId4] [int] NOT NULL,
	[RunId2] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test4s] PRIMARY KEY CLUSTERED 
(
	[TestId4] ASC,
	[RunId2] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test5s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test5s](
	[TestId5] [int] NOT NULL,
	[RunId2] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test5s] PRIMARY KEY CLUSTERED 
(
	[TestId5] ASC,
	[RunId2] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test6s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test6s](
	[TestId6] [int] NOT NULL,
	[RunId2] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test6s] PRIMARY KEY CLUSTERED 
(
	[TestId6] ASC,
	[RunId2] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test7s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test7s](
	[TestId7] [int] NOT NULL,
	[RunId3] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test7s] PRIMARY KEY CLUSTERED 
(
	[TestId7] ASC,
	[RunId3] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test8s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test8s](
	[TestId8] [int] NOT NULL,
	[RunId3] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test8s] PRIMARY KEY CLUSTERED 
(
	[TestId8] ASC,
	[RunId3] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test9s]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test9s](
	[TestId9] [int] NOT NULL,
	[RunId3] [int] NOT NULL,
	[BuildId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LabOwnerAlias] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Test9s] PRIMARY KEY CLUSTERED 
(
	[TestId9] ASC,
	[RunId3] ASC,
	[BuildId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Testers]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Testers](
	[Id] [int] NOT NULL,
	[Name] [varchar](512) NULL,
 CONSTRAINT [PK__Testers__36B12243] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestScenarios]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestScenarios](
	[Id] [int] NOT NULL,
	[Name] [varchar](512) NULL,
	[ProjectId] [int] NULL,
 CONSTRAINT [PK__TestScenarios__30F848ED] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThirteenNavigations]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThirteenNavigations](
	[Id] [int] NOT NULL,
	[BigInt_Id] [bigint] NULL,
	[Bit_Id] [bit] NOT NULL,
	[DateTime_Id] [datetime] NULL,
	[Decimal_Id] [decimal](16, 2) NULL,
	[Float_Id] [float] NULL,
	[Money_Id] [money] NULL,
	[Numeric_Id] [numeric](38, 18) NULL,
	[Real_Id] [real] NULL,
	[SmallDateTime_Id] [smalldatetime] NULL,
	[TinyInt_Id] [tinyint] NULL,
	[GUID_Id] [uniqueidentifier] NULL,
	[Varchar_Id] [varchar](50) NULL,
	[SmallMoney_Id] [smallmoney] NULL,
	[DataColumn] [nchar](10) NULL,
 CONSTRAINT [PK_ThirteenNavigations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Make] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Type] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WideTreeTable]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WideTreeTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeFlag] [nchar](1) NOT NULL,
	[B_Int] [int] NULL,
	[C_Int] [int] NULL,
	[D_Int] [int] NULL,
	[E_Int] [int] NULL,
	[F_Int] [int] NULL,
	[G_Int] [int] NULL,
	[H_Int] [int] NULL,
	[I_Int] [int] NULL,
	[J_Int] [int] NULL,
	[K_Int] [int] NULL,
	[L_Int] [int] NULL,
	[M_Int] [int] NULL,
	[N_Int] [int] NULL,
 CONSTRAINT [PK_WideTreeTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Workers]    Script Date: 6/29/2017 3:29:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[MiddleName] [nvarchar](30) NOT NULL,
	[MentorId] [int] NULL,
	[OfficeId] [int] NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Albums] ON 

GO
INSERT [dbo].[Albums] ([albumId], [AlbumName]) VALUES (1, N'album1')
GO
INSERT [dbo].[Albums] ([albumId], [AlbumName]) VALUES (2, N'album2')
GO
INSERT [dbo].[Albums] ([albumId], [AlbumName]) VALUES (3, N'album3')
GO
INSERT [dbo].[Albums] ([albumId], [AlbumName]) VALUES (4, N'album4')
GO
SET IDENTITY_INSERT [dbo].[Albums] OFF
GO
INSERT [dbo].[Albums2] ([albumId], [AlbumName]) VALUES (1, N'album1')
GO
INSERT [dbo].[Albums2] ([albumId], [AlbumName]) VALUES (2, N'album2')
GO
INSERT [dbo].[Albums2] ([albumId], [AlbumName]) VALUES (3, N'album3')
GO
INSERT [dbo].[Albums2] ([albumId], [AlbumName]) VALUES (4, N'album4')
GO
INSERT [dbo].[Albums3] ([albumId], [AlbumName]) VALUES (1, N'album1')
GO
INSERT [dbo].[Albums3] ([albumId], [AlbumName]) VALUES (2, N'album2')
GO
INSERT [dbo].[Albums3] ([albumId], [AlbumName]) VALUES (3, N'album3')
GO
INSERT [dbo].[Albums3] ([albumId], [AlbumName]) VALUES (4, N'album4')
GO
SET IDENTITY_INSERT [dbo].[AllTypes] ON 

GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (100, -42747034, 16224, 255, 0, CAST(0x002D247F018B81FF AS DateTime), CAST(0xF3880484 AS SmallDateTime), CAST(0.7107 AS Decimal(28, 4)), CAST(0.0888 AS Numeric(28, 4)), 1, 1.79E+308, 922337203685477.5807, 214748.3647, N'©ßvabßUvbðö+/@ÐböªBü/U:öv,häÖ<ßCÜÖ*r<ÐvöC~uüß >~b>Z~Bîå/*zÐÃ©+@~Bãª©o@~r oããa>oöå|ÜvruAååðäOa~ZÐb¢åüÐß._îbUöbA.äoßßBªv+äßÄßU©.rÖäBÖ,¢Orbhu*CüBßã>aarßOhßUao', N'oå>å>büvAUü~Äü                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'våÄîöÖ£.ýöÃüöhªArbý*ãu<Aä|<ÜA¢buÖîýC/Cb.uBî_+a î¢ö,©üAbA.Ãb+vå+*å:rAh<~bü|CÖ ð£ãU~hBu,UÄãüÄÖbÄh*Ð_©îßZÖh* Ä.ðzÄ<brCÃÐvh<u<rOÜãaU.ÜAÜvÐAößaÐîÃãß_UuÃå~:ª:.OÃ B|+>z:ýhZöu ooäÐ_uß,©£ð|oC£üO~*bAÄäv£u~uã©vzý+Ä.~åîr,z©/¢ß*rßAüÃ~oZ:zªBz¢~_a,¢|ß.U+Z©h©Ðb.¢ßå,.ßÃ|ÄßbvCýßª|ßÖ£baU|Ü|©©A/>|.åýv/UoÐzãîÐÄhC+>b~äü,+ª|zªãha@Z >äuý@O £a*rC@ã£/ZOüä¢~a@+ÃC¢ ªZz¢,rZî+ýåUröAo>b<ü,äã|.ÃðãÃ¢ãbÄz.bî<C¢*_îOBª/¢ü+å¢££öÖ/ÖrÄZ/rÖoß_å_ýUaöãªäö©:ßvZä Ðr.b+©ªoZ.*ð hAZb|BýCä©ßbBßÜZ,/ý~åaö,<>å+BÄ', 0x9422AC71E97870B19CAAA5DEBE55DF2E142A063EF73B0093BA81110F810BF75052D3E4925AC33395DD16EC0673663C81A7E765FA369545592219B76767612F91B3558CEB704CD351F77161E04EF91F534590679AA6FC19BC8E8B70410BCB2E7CE65B531DDA51105A131302C534640A28F96322D6F995EBB63CCF5DE5DC92462B42E5F9F3A60279F37F0D8792FA538829804847A7A9578251709CE10AF42B7E80CDD6824F6A1781F7EA2E57EC0E59BCE8473365944A9E82EB62A88209216FFF548F06C423D038BE68C650BD7AFF954217E0F8C2C0C5EA352F5497ECC29478D57A2F035D089498170E74FCCDFAE007EBCD666B2829AC3E8E00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x94CF394CFCD44D7A424BFC383A8248E0B34CC91C3B4E4CAC1F5B284FACCEF175B837FFC8DEC178287F7F9EBBEE942CE9E048F8F1C5889546828C2DA0ABFDCE745A877F02827F02F2D4A09CBBAF90BD8A2F3F6F63D5FFB030A1B9465194D77D82B02A61671529666046061D24EBD996F2CFA3706B8E6A9E5AD74F61C939B05DFC231A0A852E557406D90E1DCEE18B44C7225382F06611F3468B0790C6C89C2795A92100D1CE10C3792E6A927F4DD0784B0A99A6E52E6C961226C4FA27C5AE3E3DE78725C08B73F9129008C2FC7F74F8BB8E45BC2EF541673C8BEDAA09169BB4802B5497C5AAB8BF96A0945425AA9993B2CC3F997FF20F47A51FE9359DC9EFFBF45442D02ADC3310D586258E61ED4291F15AF73DD602358D1B0DF2A5C18321CCB0985FD068C968D6982EC3F9CC81E6B8DD574343D2B124F21FB4B41CEA8D4E526458DDC88D712928F221A5A83F3BC19A2739C86A3FDEFAFF736DB1B3144BEC0BE0709573A31D2B6B2D1B50B00C7CB3E3F319F5B0C4E413855EDE541FBF7514A63599C8CEA64DF7090E5D3C248D4AF3F6B9CEC0FA563B46FB5D0F15C4C80BABB707AA7B72B4E53CA521EBA267A8EFF714EB5E65F1B5, 0xF952CC709737334102B1841DE3CE8041D4911AD86B99DF536E1701D96AA5BA02ED5B821FE874A56EEEAA9FB623D114456A1C915F9A40E45F7379027F3659D65CF6822F884C605960ECACEAC0FA282F9C03BC6E4E145B68AC7622AB6E72263895D442BFA1A28CF80AC23072EE5623644B49657B79EB88489B19821129B4EAEDC67454ECB8698EFA77C3648BE4E87A5652BD60240DAABEAA4BFA23871F7ACF55D742AC790137ACE2BB6B04B686FC64B39F2CBF6B54C6E01BB5AAA0BD4506DAFCF40EB3A13B00541B107E69A2A507234F9570E7F2BB6301116291C45696EE9CB49008C27749C3779FD8A45BD55D3E75AE875127D41EE741910DA23EAA3CFD8421E1B4119D45AB06D2F9481A17082BB4231B16CF45C7C896A9C73069A784CD63DB1F39F4A82DD768DB4B55DBD6CD2989E2ED1B8F252E3F5A191E68D614415F4E2CE43FF7CE370BF643ADF3FA71EDBFDB9DA787B9683E3DADE0DEDB8AC401539AEB06AFF18D32BAAAE1254B783A45E82B5E8C396CB9A5E5EEA79217F05C8131425A590E6B3DCD4E6BEDDDD743F2C5729BF5AF2B38C7E6E04620C14AFB1AC94E60F3091EE1367DEE913ECE7FDCCEA2FBE11F7CFBAD55F97A7378C84B7C825250238E7650E9A7906477C09AF9F96703787EC569DB9ECEA00BF98EAB686E32710EEB7E5B4E5751123A8F1883ECBAFF810B7550CDB61977B255ED6B565BFC27F5454F8B0E7A0BB5202CB32F4C854AB450FA0C9FF31E64BAF574CB0660ECFBB63E67223D9C2FF106FFC02FA003E92A2C0A391A5C4F5C34D6E1949599AF05543430FDF1E4630D172108059F32EFC3B70B499FFB27D19F67E1324C5C079A5857FA6BFA6F06F846C9FD21F95349BD02E71DDD894F0F0A2D6391950FB216B00F87B0ADA5C6F454B11203D6FE06D74B1D2330653F2A100848EF3E97DE70E993B24C1172A39C173BF2C92C764B390C268B4678EB81B171E576A765B5875D75, N'bA__ªBubO< U£ÜöÄbO/+UA£B*¢,ã+|zb<äÖh¢ £<åÜ@vBaBb@ßÐb_,ªa,/rüÄ,ÄªovÜßaßbÄ@ö>:@+ý _ z|ãu_bvÖÖrCÃÜ>bîBãUZbÐÄa|~îh>a/ä/+bhÜöÄÃ_vbåªãOý,ªvhBUv~äã£öoCvÐÖUU,.ðhoh_Ðß©ã.Ð.îÖîÐzÜOC>ZöZÜ_.a h*~Ü~::Ba|><îa.ð_v+*ý:<bZî£rå+a ß*Äbo£ Z/¢Zu©¢~v@*uZb£ ©å><©ßvu£|OÃ|z+Öîðbð*ov,£ ,Ã@hÄvhaAO£o£>O.¢£>öAöo~ *üÄü>ªCß*.|Ã@ãî__ZOCÐZ~Öð_ªîÄZ/_ðß+z/A@|@*ZBªÄCß~.<©ý<ªb,übüauCbüAÜÄ:ªC>Öª~,ý>hu.ÜzzßÜ_:rzð:ý_|zuuC|ö.*ýZüî+årbåãß|UîßvO<z>h©©@uAZoÖ+~va. aãåO|aUA', N'ý ,.üöb¢îuz¢:© ªbz@v|_ß~ß.zzÖ>å£b*uÄåÐÜ.>¢Bra++rãüüö>*ª/>ß¢_£Öå. £~C:¢Ðz@BÖö/¢|/bB<ß_                                                                                                                                                                                                                                                                                                                                                                                                                                           ', N'ÃÖßrbCuÜÐÐÃä*ßUÖru£.,ª£ýåvr>_ZBå,@î+©.©OZzarÖÖr¢ß*v|å@ÐbBßzßðÐU:£ß<ãååBÜ|:', N'00000000-0000-0000-0000-000000000000', -750862207, -1196886593, -32549, NULL, 1, CAST(0x002D247F018B81FF AS DateTime), CAST(0xC6A3054A AS SmallDateTime), CAST(0.8787 AS Decimal(28, 4)), CAST(100000000000000000000000.0000 AS Numeric(28, 4)), 0, NULL, -922337203685477.5808, 0.2639, N'ðv<a.,£<£_OÐ+Ab:Cß¢bb¢u©©r~abåzåÄßÜö@@~<C ª öhî@Ab/C£vÃZAß uß£/ÜUZA|vCöªUhüÄaîÐ_zbýü:ru/C<îÄO+©:îãB£C*vðhßä>züZhbßðÖ©: Abª/ÜrU/å:>ßOßB.ößbã¢*ÄChrÜ¢+/îß/@b~@î<Äå,übßoBzü+üöª¢ÃÃ <z|/ªb/_Ã+£Ö>îbz öU+©zýB:£ý<öOßß+UA~îZv _>CÜ:|<<î£vÃ:z©Oz<üübö~@~ã+vå:,b©îãOOu£îO@~zîB+b~äZ/zzv~îªO¢Orª/UuA|<<ýBßbÜ_+Zª<:z©aOöÐ*¢vZ~AAÄüîobÃbßªCär¢u_Ðr¢ýÄoä_~UZ<©ðrO.bß+ß¢urî,£Ä|oý >ßîb©~zåä/ îßr,å,ð:hãäÐBý.bz>', NULL, N'vöüäAo@ßÐî>+zz.ÃaÖ ¢Ãã>¢Bßbv>a+Ä/î£ãU_äu.£.ð**ßÃý,zÖß*Ð/: ÜuCvzÐ_ßð,©~:<åBub/|vÐa+vCÃ¢îbOr,îÖ£Co ©,|.,a.ðãäÄh©ýåbAuÖýrAðîãu:r|ÄUýbÐÖOÄ ª*ãräÜOö>u>ãÐ/+oh¢:£|O|u*hªÄBðUÃ*Äª,hýOoÄîÄUÃÐüß¢îªCÐbÖ/Ü¢ãÄo:ä~üß>Aßüah:zð©:z@¢oßBO', NULL, 0x880839E6D41290E396DA685BF056C514CF0E011CE926DF1E9E82C0C7C08FC2BA40F02EF3A5F752EAC4EDBD65390AE4C9629FFE70ECFF9762291A485251C8230617AD1A0028D26FD8BC1657FC6879E5949DF665209052CD4159CCC98BAF0099FCC9B64E8BEFE4A18F3026B3D6A79BF9B034B3B45B630375C5E0D9A65B09E329BC7D5B32B12B5AA4B855D5F06A9EF699BDD21856FB4B3D98C64089AA163D45854CFDF7584C694785DA0EFC058D130B26E93FE889F08D2D713FC36B70A2AF8E7A1050A36DA69E4D548A937CEC4F380AB33562C1D755BB94BFCF861989FDD7E32B8081F53D6F9D7F4BF194FF5D10412207B8B83B3FEDB72554BBE49E2084C457B3B0516BCD42CD4398E275E5C1BC37AE8E6412D0449BA33DC95BA1818BFF5FC72D3C4BACBFD554C4EA74A35C77D1649783350FBB72F312170D14A272A14BB89883AEB784718BEFB9104DE6D0F846C5F7F60AFD56EFA3543929349FAA33E1239EBB0AD9C91AE026F84556AB240D421EC64FAA7C964E62A9DF597D5B3CEB45862E2A4714EE6DFCDD16E4051198F8302CE615D85B88658C505960FA6F9C84E90D00D07CF9C52E305952CC66B2495110E72951742712E9FDC99EF6BA8D728D4191FAF710C77B3666B8E47F08BCFFD907085013454A10C1FA17D3B35BCE73A3E6C58AD4B85140486CF2EABC4293E040CAC4, 0x3D5F47F68138FDF9F4C7DB9745419843322A21B6C807A65360547F663693E997DFC066867E93537F534654A416527601FA9D0E9FA338EA36B8F3962DB996C361DD44B884DB11C49ED6A16281B2023C0DDD7D6C99844AF3A6D62FCE8AFD26C6BC83F3C6D29AF226E8D86FC801D56883B6B7884F3B2A29DC935011ADAB4339A1B0DBA6FEBF3B6A73EB5783C01581F1D06EAC17D374D78A925916338188447AA59FCE18262F6AC47B4D1464E4A668C7125F403FFF2B662CD95013A4A908E8EAA6DCDE214668CAA104E89C865F72A6EBF14E202248057B7938A13FD61BC61A72642ABD07C84780AA949F3B178FDFCC66AA28B35AE7C5A2A06164E8A528F4853DCD2A2135B59E22A9CE768EA8CA64EA59D5D92CF313C08A9F871CA6635EDB81A019FD4965BE96B00C05098C7137F9, N'<_ö~+Oª~Z¢,@.Ðu/,ouU: O+<î<ã:*:öZv/aÐ<£ªÃ+Ð, .ÃCCÖA. ohh*~C<ÄÖhðO:UhZuÄð@¢|BªÜAbu+ÐÃ A¢CCz£h+OîðUßråO_ßîbBîÄªb_~|bU*A/ªhãCAý~|| Ä£äß|hå©_ß£Uhî@bÜb~zð|åßrbbb@ã <_|ýörÐa.O~ßrÜ*aðªöu>ýU,oÜAª>BßoÄ>OÄ|ð|äAbOh*Ö©AãbC/|¢ß>ZoãOoh>z*.BÄª£/aABO:ßCb,BaÖ/ü,ªBÃÃ..b,Äî_äßö©ü/O£C.</*©oC/bo+b*üßaaîuað£+Zîö BÐh|~ßäüh£ avZ£z', N':@ãh©ö@ö¢OÜBo:ÐãaÄö~ÜZ<ýÃ*ÃîüÐZ ßÐ//>übrA¢o©rA>åZ/vö+üÖOAã/ U¢ýåî/Z.aZ*b£Ö_oCßÜ£ãß¢_<*üãýv.£@Ðö.¢ZÖÖÖbäýbuZ¢.~brbß</ý:.|<//ÐåÄ@îßh@ãbAîÜö¢:Ub /,ur~Ðv@.Oärvz£CC+Ä,ßZbroAåÄ<+ýo>hab@©CÜ¢ZÐ üãÖ~Cß@B_©@hzab_ã|AbrÄÃCzªª/UðÖ@|ÐuzZz~©ãîªã¢äÐ@¢~ðbv©hvo¢Z@ubã¢îý~~ÜÐv_ü*rzBä>/åBß©ýÃUåªüo                                                                                                                                                                                                                                           ', NULL, N'99999999-9999-9999-9999-999999999999', -1069124894)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (102, 1354883544, 14871, 80, 0, CAST(0x0000901A0000012C AS DateTime), CAST(0x5F6F030A AS SmallDateTime), CAST(0.2977 AS Decimal(28, 4)), CAST(0.8435 AS Numeric(28, 4)), 3.4E+38, 0, -922337203685477.5808, 214748.3647, N'Äýß~ª_îð/UCîäoÐ*ð*ª~*.Üßä_O/z>î*Ðå|oîzÄärýa~A,v©îÜ*ßA¢,ZraÐb+<¢ö*ÜOýª~:¢£Ö,+,OÜ:v>@@hb B>Zöî|£>Ð*bUvrZb  ÐoZuAåAuvßäöBßv:b<z¢_bav©a ö@vý.rO.ðAå:.ð©zã¢ÜUvüßhßÖÃÜÃoa_A|BÄaß:Ðð,*.rAîÄåÐo¢åÖbüÄCr£>.ÄÖA /äßüzAOb ä¢,öÖäýîöý+©v>Cýåªßu>©~,äªbåî/C:ã.O  o/ß@>ÖÜ£©o*Äü./,ßãrbaboßCý@äðãäzß©ÄoýÄýîßÐr/ÃOöaÃba~ýv Bvý.@UîÐßzbîzÃZ,BãZvvåÐCðb@Oãßvz@ ¢åaz<©åa+h¢v¢z,ÃîÖÄabr_å<:ÄÐåaAÖ,üb,+ß*ª+U>~<©/', N'oî@ª@v/ hãAüoC+Cåå£UýzC.B£ßÃü,ßA>öÐB@oäÄ£bUöz£rCh<ªßÜüßãßB>ä/Ð+ÐAa<u,vªÄaðªðboB::Ã_<ßaU@håz.©avîÃ@ðzOüÐåäåÜã+äÜ£aA.ÖOåöAÖöB>ürba©Ãu_UßZ<ü©¢îu,hvC©.¢~@Ðß|î_uåuî©ßÜOÃ£u,rÖðÜ>vAß+ßß,zß/.oö.ý vbªÐÖöB:u/¢åvrå©ÐU_@Co.bãªå,+AÖuUböÃzAÐ ö o+O@b~|Ð.Äå:uB©_îobÃbOÃ.¢rvO*Ã>u~ÜaAåz_zß¢ªb ßããAÜh|vUvüÃÜîä +,Är©ä:b¢©ªªÖå:~£bß+.o||ðö >b C.Ãü:Uåã©ö+Ö,C@ü@+ß+bÃb<îußoZÄ@öAz_OîÜ.uÃß,åý£Ö:Aü/üÃ©v. rbu.Ð_ö..ÐB|*bÐöªÃUZr>U:*                                                                                                             ', N'Z|U*AhäÃÐrßüU:<~ð©îÃîÃaBýAhhÄßÜbªU£ão+b/<*aÖßÄýãÄð Ü:/.ª|o+aýÐýð/Ð*aß£._ª<r|ÃUzvAZ.ß<ýªOãbvaab/Ö+B b+ýbb@ÜOüuãîzãBýÄzr//hOOÐ+,_|b:rªðUîAU ZÃß¢öýoüoîbÐ/O£åðOßzÄCuª', 0x459AFC3CD4231C669F5738DE1C9C865CA32F74C9FEE294CE0C4D605A4CEC938B67E0DD4047454B3893B6CC6CE23684C50455A81E2F043E63052E3086C3C11AB3C4AD763CBE45145DE33C36471528EBD5C89A56F743745C63A1793B1915C574D19C18A834BF4806BF404B3AF2CEF74DDD425ABD296B23704F51139A450AFB481EC764ABFD7FB6167F9397B6F83A6994AA2B5ED6BA074B6678A859E3ABAEC1B444021B2A6A4B505D8B443D95D46C7815E77FF019AC248D177CFD325526D36AD1D2E271F51E3E2A5EDB004B76C9B6920C2F44FB2CBDA808207504AE6C19FB37B8D96CC2F1FA83F6A954913EABD9164DC66B2525E2D73D132AD9517F1990BD45DFC8929C5DF3A012AC4D52D72C6A5D465EB6E700F3D555E09C589818A803DD18974C5EE2467AF0D3CB1379948565E7BF7C0B2162A8BD520973B200045A8869A8703940DF0B7AFFE4C61435DF5CC05A3671D99B9DE17A6FD9FA546F9479EC7842AAD0244C2508B4020C3D9C948772ADB258CA9381ECCCC7F5C966E5B70A6B6ADA9BF2348C9B0E1169249991A4DEDB0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xA6BC3CAF58F755DE092E82BE22FCF7A1D2C1F8943D211649B82A5C533A2217EE145D104D2FBB81A49C56836D8B524628A1F0D11CE2BD4985A6F2F62E9B02A3E61794A9C5ECA972174054F8E79EA9BE66E334B14A51FB0B57138AA73CC452099AB29C56F6A9803BF87EB9DB8DC562E7FC33904B665158941B8952B161023553ED4B5D340153C7BD62F8B8CC971F7D92B0A3AB093407A2495A083A6D56CFDAF64866EE41672EE5A96BD3E86E988BFCFB0BC000BE562C1FE5A914DAF9185A66931EC28331313C2A82BD019D601F34B0CE0B3E6296CE1C9F1C4608985253EC90116D5450D507CBCACF957E00558EBEC675630CEEDAF8CFC5022367EA28A3D72ED1718CF3CAE4DBC640749201501B4A8D884122EE47FEB6189D8F4DB2A0E0A22BBD4F2FE302CAFC918846AE6565CE75E6D9D962E681E8E7D2BB73563A9628255FD2674300EC668ABD459166014F50B3CF1A67D9C77EBBAAD5685C288F74C2FB5F204E93FD, 0xFA724EA4A1EF82E5836BBF871F2E4F5EE116BD6D988F3EFB48829606E001BCB543A66C6678D919BA5282D9BDCFEDA2CC10C26D7D3F1DDB6A33535B1F587C0481AE0A4379C2E8E507FD021B16B6812B5BE0CAF51E933F7525CA0133257EFA61D67D570EC5AA290A27DC657F3D02C5B4B227003E8E86E6EE6F941DAEC0B5C08903A044995E7366B0B6C0CE422EBF3823054D80FE7DBBD35096699E308C7A49721BDC7C9CBD2C553FC04F87CEB8A4BFB05BF9A97234C20B47CDF402F5D435243C765B2651429C66D8F7413D2E330597F2A9EDD492D0D63D59D034CEC92A606A8A2B4B575C7E6E6DBF93D07BF384DC14C85C0F4BE661916C9F1DCC810ECE9DAE97D7B203E8AD3B743B8015FFFF5B4AD4F31F066C1A14832999DEB83EB1EC5EF1F621E41CD2D92C1A219B10664B916C44D3F78DEEC730948253886909F4FCC24E212408DD772E021AF3EB4B7F041CDE0772746BBA5F7029C68D61C8496F232524D8C14427898ECCA5F472FBDCE5157E36AA6196809107EEB1FA42501565B9AACFC526A642D7B77EE3A7C6C5ED74, N'ý', N'ZAÃU£aý>uväz:Ð>vå©OOßÃhüOÖb.Cåu©@ü_ðßvðh,<äUüoãoäbo ßãð~îÐbåð~+ ArÜ<O|:¢Öbß*ãåaAðð_bÐåä©büABrAußB@rÜ++üz~_|Öb|ÐAÄaüaAzªh C.u_*.Ðßýv ©u©_üU<r B¢>uý+rbuÜÜðb/vüÐÜUCßðbz.*> .Aßß,ßu<ðý_üu©ªu<,¢ß.~u:Ub>o_Oß£åä£Oüü@UrÜbÐUvîo äãaÐÃîãß*~ zböÐOåB*A/U@å+~£_<uüo*ã©*ßðOöß*¢+rðhßz|*O_håªzh*Bvz Cªoüuv,+üî,rb¢h©::ãuðåÜ¢röbA©|bÃ>A>ÜAüð_ðO+ZoðßüO:î£/b.Uã_Övr*Ã,ßÃÃbh+£<_ZzÐ>>:ZhBãu©/v/ªvð>u                                                                                                                                          ', N'|>ý<:uÖãßß.CoÜ©Ð*b:hC@:Ä+/v/ä/ovîðÐu@aab+UA.vzC£ð@~.Ö>ubAvBAözü,£huuA/u b,Üå>b/bzª>*ãÐ@,ÄÃrUðýCbv¢ÜhBî¢<Zv**Ä*|ýßaÄ ß¢_î¢ß>*Uý,BZÄªävzý.ýab|,O©*Cr.îvÜU¢bä@v,vUZäUbýÐÄÄ@Az*ß|ü>/', N'6e49d5c1-ffa2-4549-a967-17987a1d45c0', -9223372036854775808, NULL, 5595, 128, 1, NULL, CAST(0x0E0A003E AS SmallDateTime), CAST(0.7255 AS Decimal(28, 4)), CAST(0.7304 AS Numeric(28, 4)), NULL, 1.79E+308, 0.1532, 0.6771, N'>åäö/:bB*bCUArÄ+.@@ÖðzÐzzªaÜv*z<_ß_Ã¢åBAî©bÄªÖÃ~b Ðªoä>Oo|£ß/zãaÖ¢Äu£aÐ_.<ävUaÃ_ð/ÃöªÄz©z*_buZ~~ãböýb:ðb~rO©ýUöoäCåaªî,b AðZ<©zhîv.rbÄ>:@¢*.@£Ãb.+rC,~ýö©î£a_¢ªðîbÜÄßÖBoª/<ý_ü_©*ãåB<OÐzZ<@ob<ðåA/@<åüU©Zb@üBa,Ã*ý£ÃÐ>/Ä', N'/*uöBC>ªöC/bß,~uß.©ÜuZbßßbãUo@ýßo._î/*ü,:>bvUZOvB@ÃAb_Uhv.haZv//h¢î,äÃß<:ZzÄuß|>î|h£ßüÜ¢o,¢AröBrb¢hª,ß..Äu|Öu_î:ã£CÐhßªOävu:bÜv@rC£ª©öBBoÄðª,a,¢<OO|ß*bUaüÖC|ö+ööA|Cåzßå_a~.åaÜäå~ýå~ÄÄãA.~Ärý_r*ü£*:ZÖO+zAßÜ©+aOåUýü<+U Äb<Äb©_<,bî*..~ãß>                                                                                                                                                                                                                                                                                     ', N'ðb+A~@ Ð_uåª,AÐrZ:z¢<z+ª:©Ü<£ooýB|.£Ã/h_*ßöOOzö+©+_ r¢uªÃÖ~ðÖäb,bå>ã¢B>ã ÖZ©+r/oÄ,ßZªãÜ:*ßöðäuß>Ð_CZßCÖ~åÄa:*_U< /r+bßÜuCA>ßh|ýCüßðßBo*~¢u.îß Cß|<ª/a./ðÖîOÖªö/zÐå>_¢.,Ob¢Öã,å,ÜðÄv©ü_C_*ýbOüªýÃÜBOðã|ooB.+,©ª_ä@,ãî©Ü OÜör£*rr:¢bbZÄ:ð*_C|_OÐäÐ:r©|ÖbaaÜýoî+@ßåuîÖª_Uhb<<*|rÜýbb:Oo@£Ã|Ab@ÄzAýazÃ ZüUrrb¢BZÐ:ßýaBßî £+~rr~<Ð/Ö/> v@:ÃbßvýBî_.ß~v@ÄrubÃ£ ÖBÜ©Ä:¢', 0x0AB716A52730A4F17BFAAA1BC60AEFFE63A097D3D32BE93A58883F1CE70E1AC5114999DE7EE60D832A7B9824917BCFED4F354F3DF22DDBDFCDDB4D9EF0870A6DDFE50A7C7110807C9214A95792C5A9DCB852CCB1BFDDD2E36EBA10A2996F92A2702B44AC71537C3EB5D3ABDE83834C083270E59EBA59AE0212260DB600DDE2238106E76780FD6A65D68EFCEB32F35FEB6D08702989F4E7167D42994A45C53ED7F0875C7D9BE487340580C82C5DC2D01EC62248F76DB9998D1FD0EA3E63201F105024FAAA97E24F89803C23082BBBB9BB717A83237C466A37EECF5DCBFA48D0E560B7DC38C72587E4D3BF773095906164162FCCE89CFC9409BAC3BCC785838E376B3DA874DF81F44BF39F4FBCCE39A15D6DF9B4CB7CE7496423D27D0369BF5F4F313FC558E8ED84943B80F5FCACD73B81215E5A8BCFC3BB83F443500C04F0E23340008B8F7349747F741F90FBF24CB74B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xE20A65D3806D844164A59D78904A9EC1BBAC4BAB0DD8EADA16AF32C091A78B0475080ED7CE6C7F1D0A32E4CFE2FC8F455C30, 0x00EBEE09208BBDD03AC3B0BD199802873CC7F34F2C2DA1DAF31BF71A20ED64601680048A1904B642AFAFE3478227B54AF90708953D41DED24A13160594A3B04D5F4FA69994786E3810B19F7D4A5958CB66AD2018E4CE23D4A1323F05EEB1AD0CFF95E733801BB58199D0848CA26187F0BB4A9FE7829768902BD2F76238684A5E03927EB472254A4AF79E7F144A973140AA4F4AA312C689672D5607AE2453483085258810E3D27D95FF54EFE418534694A0B7B7E91DA64B3C0816871C1E9C25A3554E8F240E215DD7D1B5A4BDD6A54FD90F730D6C9C5F12DEDA4C08CC4B6177622E4C8EC9C422857F5ADF1768028D6562C7AD0CAA8EB907F63BB04AC219918C703D418E8A178515EDED8E12BC48A9DC4CE6A5049D55CCD47544988D, N'rvüýuZ.B@..Ü*ß:hörB¢B£äÜÖhý©ð.oãßhÐaî_ã|*bböåbßßªßöð@UÃ|.OuBZÖOBU|ýuB/u,*@vAªðî© rbB<U |/OªÐ ÖZªåöÃzB|Äo~||ýü£ö<v_ÖBÃb¢ýU.ßîã>bªU©o©u~~Ö>î@î© ªÜUC:ßýrðß ÃbÃÜß B@üÐz>ZvÃüýªÜ_Äzîßa£ÄAvªbÖ  @@åü©~.,ÄªzvöäÜßaªhvª,oäÜoªbU+Ã_oöÐobaðrC ªz@ÐÃäU/ª:ªbÐh*ar@ü*h*ðÖCaC¢Öý©öovÜä*A:ÖßßÜuöCrªßbß,uÖrU,Ö¢ÃÐ¢©ªÜ©î<*<£Obr@z~Ãßýß@ßÃOZÄ,b@<~.ÖArho/vrÐU ,£ aUå©Ãö¢åußý/>ö@,ßabÜzOzo/U_ßbv<Z_üÃoOäÜ£Üåß,oÄözÃ .  äaãðÄU:.ãßö Ãî_v+uüu', N'/,îaÄzuCÐäoö©öäu:ª uöbäb:ß,bzC/Bîå~/aÄ@hOÄBBOÖUª,hÖ+åOb+_ã_ðîOßª.bAß*.uÐbObuüÖîÄ_ß©o+brÄßuîoOªUaî>©CÄ:vüðaZÃhã.Üöß+B>¢u*ãzüC>b|<öbz:BÜaB_ÃU+Ü>~ýßhu*Uh>ZZzv,>h<ä/ßÖB@ö©oßv|ß,ä| Ðüz*ßuuß_AOÜ>¢ª.r,ðüÖ>:ä<b_ü~Ãå/Öö©@ßCAu~ö_>Üî£r©hªaðª~U@:åÖ©vrähÖA|üB~B*Ä,ßöüb|/*Z/bå>h*.a*uZ_zÖÃ*AåbU~|@©uußZ_+   üÖÜUUåu_buäbobbU¢bÃ*CÄå|uZð|h:üîür*ýîBÜýäÃ> £ªbhÐAî ¢üuvåuAöü©.¢vüböÐb*_ZÄ>.r|ðªUÜßB|£ZaýbB©bßArZåb©_B.©Ã+bð<ßbzz.ÄOãzbªÃbü£ü©<:©zC >Ubh*h.Oª*_oAß+£Cã*ýß:ý:hÜÄaî~UoÄÐßb ~ßÃîåý _ß¢ozß ßöh>AUªý~/,ZAC+:Zazz_A©Bö<©ð o_ÄbU.  ', N'UÖßÐ~UU>ªüro* oý@ßßZA||~Ã£.åÃrÜÄoåbU>~öß.~ @:Öýß,Ð|:ªð_Ãrubðß+ß.r>a<Zð<ðäaå:ubhð©ª>ü¢ Bu**AZ_aýbÜð öÖ@_<U¢~ªAb<obCvräãÜä.ÜhðåO,ãaã©ZÄOOobAÄýÐ<rvååu.ÖÜOðo:_ü,ªªbUÐ~r.O/åöBoãhÜhð~äbýüüBU£Ðhv¢rÜ:/¢ÖýåýãÃ: <£¢*ß+z¢,@|ªCv£*|©bovÐ Ã,@AhAªA*@¢>/¢ZöÜöaßvåß@<*_.o£ZbÐ ðöv O~Ü<rb<ÜrÐvÐZrUðbß~ý|ß>OäÄU|ÖCÃ*©', N'99999999-9999-9999-9999-999999999999', -727874824)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (104, -2147483648, -32768, 255, 1, CAST(0x000C0A17005974C8 AS DateTime), CAST(0xFFFF059F AS SmallDateTime), CAST(0.8154 AS Decimal(28, 4)), CAST(0.1148 AS Numeric(28, 4)), 0, 1.79E+308, 0.0808, -214748.3648, N'ãîabAðbã/ßåZCãöä£ÃA.*oÐöä~ü,©,*/hrîhÃbÜU,@£Aðüý@ îÐ,~rhÃobu/ö£ob::hðößoªîßAã@Äaî~/bÖ£üäöbrüªã ZÐ*~~<ßb~>Ðh<ßOzO:bzä@~.,<ªråÐã|Ö~>Z<ðh_B@ä|a@>bÖÖA@|_<ÜoöOBåªOä©O+îZåßU @r £a,åý_/hÄ ýuBÐh_ÐA£>*aîßhªÜåðÜOA oCh|zC*obh roß|Ðv@ZåÄü£C|Ð,Ü|rðhüåö¢aý/ðz Zä|¢ýßuh', N'åo¢O:Aý~Ä~ªäuOuvãðÐZb+|+©ß_ðÐ~_/_£vßvÜoýýãrÐÐ/¢,,ÄüZ,+O@~U>©<bãCAOz~ð/abÜÖZUoã£UOh@A¢vAO:Ðrav>>ðabÄ|Cb<üÄå>£bö*Öªv< _ß>ÖhhCOuýßZv+ubCbCC©_                                                                                                                                                                                                                                                                                                                                                                                      ', N'Ö,B@,/.aao,r~ö.ýöZÖÄBu,ÄÐv£@h+£ý>ÖýÖbªßÜ|ßvBüa>O©zO,ß~£_ý+ÜCßîä£>,Ãßö£ð*>ýoZöZÐÄÜ<ãaOvrîC:Ö©ß©ü£ð¢~|z©uarãåß/*~Ä£b* bã<UrßÄ>îv@ãa>* ÄO,BUãß ,,<ÖåbAÐz£~Bo*+@üÄCðzbßöývý:ÃvbuAhäß ö¢ãUß@+îvo+ßäC_ÄîA ª@Öªb|bb|*bA>~raBZ©@_.AÐB¢©ßh_@hC@OßraÜÃÐ<ß|rhåu©B//u>ßr>A@/åUîAãðîü,,ßB@ýßbª<@öÖ/hACbðªÐýZo< ß<|ßÄZuîãvZ*ðuÄÐªA>|Ã:BäîÖazU,B£ªOrz>ßÖUÄãªäÖÖoÃîý,v£ð£*,Ãåüvð©/O¢ÐÐA,uÜvväããuBo~z,Uaãý', 0x27ACBF64AC19052BA82271EB815537991375F222F19B563CF68AFC0C4ADC8FF64221B266D6231687C00D8EC94BE4970ED85B4E2AAB540D8C56836E221DF9E0CB937AA860A3D1C3EF5E6B61E40C8CF012F3EE33EE8E644BED13250F53B5F46AC62CC236D13B366B07985ECC40F2297FCA925B2F2EC5F13D2E2FBB4C7DC1703A6A009BB749561FD7BC832B562F980AFAE9A645C05AC43B013B8507A17FEAED462824613F57723573738472AB999B0E9624C062D77BAFE0A5C5997CC44F7D57D295E52E0A36CAA37770D14DD5519067A076707CBE8716CA7844BC7ABDF67024F62CA015B46C03605A1DEB66A9620A533532DB4EDE00984A7F1AB6C67A50E58100AD57A9B17AB233731022A19BAF21163A68458A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x46F59355969AB63DE509376A66FC0B60A2BB7FA8DACDDDF7AECFF99F8C120B5A66DD6761155BE3187D362A196A3149240BD9C5890B724778189CA7C6A016B0D3FEDC038895AA4B47D7662AA4A2C48D7D86D494B34C814FF495EE4879B31D776785571A8D2EC08F618D7DB2A447A3D5540E2940CC81FD867C8D0EF3A661D193B9EEC21F4BA9FF4EC5443325CECEABACF219F36A89DDABE588D09E001FCDE9FFBCE9F8B585848AAB0FDB7A874ED8B7AEE262008C6D6609DC43DD967A0BFF2EF85B3368E5D5F5276E8F485BAE632497B018EF1EBDCD5C9155E01C72A7ED0FA00FAC812B1A6FD2D8EC3A92FD250B5B791F45E6611BE1712BFFA21304B9837F8180A84C02E1F87C40461731833B5F6C4A85A3536106AD852E3B562C785BCD1F69BA107D7CBF589726C9A51B03AFEDF0A035C97F15301D7AD3231DC68ACC04E578F8C8, 0xE1F08A2C0B2C986091817E4D668C43924E09389D96AA59A1920D5AC4C0A30BE625C5BE453E530A03841A41A19F79243FC15229EF8F2B943796E899FED2D39FED769728A0CEFD53FAFE35187C68B70218E91A036E791B56FA3186AE55B90C30B07A542B07518371C3FF2FF05A1218CFDEE68115B8D031735A412D6F474EFD41F2046701148CFBC765A8406E4A2AFCE719B7CF6F38F778E048E0D0C523142A7401EEFE55AB16BB52EAB9AF1090C228304446558F7F8E08FB8C86B933BC35A4517DCB6D5C2CA63B03FC7D847F47675085B79F81DCBE9AF573E503C9245C8795B5155D92C455CC049E0B5293010989B32436347B1CB4C793E3D5FA7728DD16A674E8CF69EAD58B2FEB9BE2D16B07F4695B50A4EE270B78004DCAAFEE5A54DBC1F4AB1E183A1FC94FAB058F, N'ßUß|ãÖrª:rý__:UZzåhab.äbÐ_üboÖ.råä©@+*að<äåÐ*o|uýbhu£öî.+ÖãZÜh/Ãßß£©ÜÄîüåu_r@hÄ|üÖbC¢r_öüvh¢>Äh .Oð|@î/Zzo /,ÃåUbvzAb bªUÃÄ@|v:ObuÜ*rhbbzÜü:äC_v+î~U,CvBC  ßrðÐäÃo+Oð_bîrUÐZ+ªÐCo/o©ÃuÜöüÃUäßUå,bBÖÃÖ**ããÃAo,üÄ>~r£ÖÖbO<,.uuZObü+ uvãb+ßBzßaO¢_ýýÐZ¢~C¢ýîZz hh_©ªbßbÖ/©_ãã©/UoZÜäUU|î:,UÄu+|ÖA©öÜh.Cã>U_bÐÜÐ/OÖÐý@:îîýÖhÃ_ @bCßßoÄ©BÖOö+ýÃ<o©£ß_<¢|u|Übß+v/ZoÐ:üöý~Ð@£ýß~bîr@~<bÐßA:_|U,©åÄ>Ö£uvU>uÃbbAã£Ö¢<åäZÜß+_*Ãa/+Örb¢ð<bðä¢üa+Üý©ÜrßßöÖ>ßªðÄ+Cå|Ubäöäa,îoÃÃ¢Uîv.a,å~>O¢/ýÃvAýÜÃßýbÄö@ãC£+Z©BUCvî @ÄüuZb', N'.öOÐ*ð,aå¢OO îOZuru@_Oä/+Ä<bÄªÃý©>BåðîA+vb+>bÄaª@©ýBä_îubÖ+£: zvör@ãßZ+ OãU:ß+*£Ãä_AªªhC~äßO@+ðöÜB_åroßuz©ðaZ:.Ä,Ðö~Üv£*b,Uö>OßßðZ©Ðã<:@bzÄö©CßC:BÜß. o>/rßßðäÐhåhbaßÃåîv._<|Ä©ö~C>.,ý+ªCoZ¢£©ªr~~b_Aß Öuä_ýßÃöÐ_åuß* ÐåÖ<å¢,Uvªß å                                                                                                                                                                                                                                                                                             ', N'CîÖßÐr_/+ß.r|BÜ:ßäväOß|öÃ+üªöO:ßýb.ý:ýªCO/+©:/ão<hý<¢B:  ßB+Uð>O*ªu<©ÜýßUh©Ð.å>v@ßCßrýOåªb££åUåvör ãu*<ÄzoU>/Ðð: ãã/ßÄý*/ ä~h*ðaU,ßu|£bOz.£AÐ©/åor b,:<Urü,å<î|ßuuvAðÄî©ß©C+bö¢Öîü/ðaå¢Üð|a~UOÃ.äãß>..ü/z©vÄ BOU*¢ü@:£Ü*ª<B+Ãz.ªýÄ@rhC*<aý¢*¢ð:ã,Üu¢rOürb<îözªÐýU£Ä¢|üBUZ>>:a/ÄÃavýðBß.ßÐzh©r,o.U£Cürßv.©ý Ã©>r¢Öröb¢ßî:uååvã/Aî br+zÐ>Oa|', N'99999999-9999-9999-9999-999999999999', -1309473871, -1084169994, 32767, 0, 0, CAST(0x0027445600192774 AS DateTime), CAST(0xE86603B6 AS SmallDateTime), CAST(0.5811 AS Decimal(28, 4)), CAST(-100000000000000000000000.0000 AS Numeric(28, 4)), 2.3, 0, NULL, 1.0000, N'aÄÖbb_ßý>Ö£o >A:rvÜ¢£ýOUaýAoA*_övOðZÄbÖîö©U|ZävÐîýo @r©a@>Ab@¢öorÃåh~ÐÐC@ä©üÐªöoÐZvbOu.b>îÖrAÃ, ÐB+ªüCooUAß©_ÃZð_å u+åüýZß¢©ý@Bã<*U¢U*O¢CBßh.Ö_ß¢ã©h*oüãh,zO<>OÄöüOO:£', N'ÄÄBvbß|@vßbhäö< +.>äAah¢ðCr:~**üO<.£bÄÖzßßî£/bäa>äßbhßhÄ|:*ü¢Böð<bü+@ßU©£rAUB>råUOüÄ@zã+*ÄBª*ß                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'ãüO+b<<©ªh.öÜîªbv<Ä/hu,oU~AßÐ£ ã@z,h ßßÜÃZC,îåª/BA åBu~¢~aC<:©ööß|/:><Ð/ÃöÐãBav+ý~ÄÄz/ÖZÄÜ| Äz A*O| :höªZîrh<Ð@|ÐÖ>äüU¢+ßhÖÄð.Ð+ªÄ>ð/ðîä£B..UªßüUý~öß:bB_r_ +uÃäoß_Üu~hßã¢uäßuCO Ü:ößÜ~o£.,U,~<.._v/bAÖ©äßBOUrvzb*ýªÖÖb+U+Cßrî.voß/vüÃBZAßBAÃ.ð/hBoAªä£©>årÃðð:ö+ãa/Üa*,UÃ~ü©aÃã:©ÃCÐ+©ZoÜÜb<,+B h£ä,>©hÐÜÜîZÃa>r+UUU*uýOÐvýuvîã <¢_*ß/üý|+öªÖý:ÜvåBoCäýî©Ã©uÃî<äð~ßb<h+öZvÃýZ,.Ðßuö+', 0x53137AC0C8BE753F6643EB7CC936791AE1D89EE02E67A5814750055824D1FEE9AB0D137F55D8F5865B3683E8E611CFDE591DAFBED8AF0FEB6EF97978B81C1B944402D1BC22F9C408E21884F8E3BD9A368027FF06214010FBFD28105B5F7DCD3E1BEFA3E34013BB5F58A7DCC02A1707B15E42F7911D147304F2D5BEFAE969A8654A46DDF419B7F66D6B9FAE7A634FD0E5205FFD1D853B20067B9EF06A54C076EFFE7675E43A1297A74C8A267D65F9A0A204D9DA896C8BE00F25D6787BC68B18AA29BF7BEDDAECAB0DC855D0FA15A3A182FE4D657BE6EC83739666BE64991CE0C0717B54A67DB3C8182DCCC116BAE6FA8235F67C79259DC43C3C0757732E4773AB7510889A4EFA044A844D4D192B6DB8B06C3B2EA39F669AD4B6176A755B54E9E55815A0AA5D60333AF131F4D84FAA11CF4FA707F218D00C0E75B4E337908FEF2F6368C115CC0E520B07F4B26D72C2840B069B26B44DF6CC88099135A87CFCAA6242000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, NULL, NULL, N'ßuß£aßÜ_ÐOý:/~ã+Aäý<oå>h h/£ªä:ÄßÖÐCîªBaaÖßhOaZý¢©¢.ªabîÄ© ä,CöåÄv£©ãÐ:.Öü<,b+üzã:AðUbBßÄã,UvU¢åßö/î+¢hîur', N'@©ã*ÄAaðBa¢©oãüa uo> ~|höböuzCÄb+:ZAýb@UUÄÜßzÖÐ_£h|abozöBÄ,©BÜªüZ~ZÄ_ðavÃîv¢ßÐßOz,|O_Äýuo öZ£äo:Bß@Ð:AýÐhzzhå©h*år*Ãu//~~b_uýÄªãÖß_auBÐZ.ãbU,ä*>r~,/>:U£+ðh,>ÜÖ.Ã:,bhhhß<bZ+,OOÐÄAa. o*Z~å¢Zü Ü¢B£|ð<Z+b/ªü.OäUrÐ,©:Ü b@CB<U@ããoZ©ZÖªUv/©ðüÄrðCÄ¢._|£ äÖ|bß+ßC|ªÖßC@~>ª>hUÜã++zrýÜªBZZ@üß_r|/å£|+*ö.ß~hhßb.._a+OÖª,a>:z<ZoÄbZAbU~u<a.å.                                                                                                                                                                                         ', N'<ZUäC/ßoaßã>¢bîb:h£åBãÜaoß _*Üärý,AOb¢oÐðåvuuÖöO~üöÖÖ>_¢>UÃZCvßUö¢>UaÄýãüðür~|Ü.ähö,ãB/>ä.Ããöåª©BAv~UÄoåýBÜã_ bö:v.üz.,ära,ªahîBzzC_Zrohýb,Ð ªö@*Ð,©:£*©¢.,U _äãrÃ@Ur@©UCvüUa©@~bäUZÖu¢£ö/îäßðß/u|@¢bÃ ãbh|O©C©üåßO<z|bübåZÖªß:O:_a/hî@+_,r¢©:üãÜðýaÖ*C£<|~O,|uZÃ+ÄhBuãýZßöî+:zªî:ýÃß//C.+ü~  üüoðöZÐãÐ_BýÄð,uZAvüZö|_<UöªÄÄvU©öãüÐ', N'99999999-9999-9999-9999-999999999999', NULL)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (106, -1869662292, -2719, 128, 1, CAST(0x000A8CEE0040EF0C AS DateTime), CAST(0xFFFF059F AS SmallDateTime), CAST(0.3254 AS Decimal(28, 4)), CAST(0.0435 AS Numeric(28, 4)), 0, 0, 0.3537, 214748.3647, N'vã ÖB/<ß_UB', N'Cü£>/å@¢*ðzîß|CaÜ£ÐðÃrÖ>ü.ZÄv,bUßßZ£ßrðUª,îðaävä+ßÖ~*Z_îuo_aªß*üãbBAZ:u~Ð>zZZß<Ch.*/¢>å@v+/¢£î¢ßAöböÖU~îªOääüU¢,Ã/åO:                                                                                                                                                                                                                                                                                                                                                                                                           ', N'*O|Üîa~ðãå>v Ö_*îã/ß:£A_aÖböuA/*CªÄÜr:©åAUaü<ýZ¢oBü aBåÄhaÖoü£Äß/ohÐAÖh:O|ßu¢bbA:.ÜCbC AÐa£OÃ@ð+_r_zã|ª,ö@o:Z©BböÐÄ_å~Ö ßCýACüÖ£¢/©.@Üråß+o_öåÖbî~Uüß,>ö:u<Ð||ZýÖ@ßãý©_o_ßÄ>', 0xEEC2BD78604248E7B1B6AC791C5F0B4549E92C8EC821C0A4E2A8A3F82E4E5E7270D399924DF0A1A3243BABDEDD0499BBC819E7FD38364BCC021896B79F50B962573A0949C578F8584788698C75E1C7DD0EE72F156761393A87CC8F3459E904D3824886A200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xF550208EB5B0, 0x572151B8A9B721A3FBF601CEC1F8E9C3FE5E84960A2C5A24E2BEF2DFF4D8AB896DC9756EE3A0404CB2DE4D90A12C8EFD665D8F572C36B42AC62DD6EAC542AF224A7761F8827ADF5E1E37E42BDFC982B630F4789648545D37144BA7B6CA55866F2F2A4529CB957AEC7D3139F452884AFDAA1FBAD0CA18D9F61A29E337D32993C8B074FCB48358EB9A7A8C18171B68E58B00AA0BAB9AB6A516514F0FA1B14218549E7044DD8C967952331F563E00C2DBB1435736291EE82DFACEE663344949E83773C478AA2407FF6A31B8777B6067158E745E5E590CEE35B642490FA6324409E9361ECA3B4A308C3B58CCF86570B29A66D0D5C0EBEB8F2B848EC268DAF85937ECAF8D44419DD94443D122013FF6CF458FAFA8D55D841DFEA7F245AD87C8B243FF940BB6E36E58C9F6907C19C98DEC8EBE7CD82A4F83D968918F9C4E582CBC7A1FDE02AAEA19622057DFDFCC0704341A06B6EE0AEF87F47BBBA32453D20971C9D402FAEA8B41A3A51AB7D36FA40C608D5A8248A13EB18A98EA86EF46F50E4E4D6E15F805094A8EC51249F038B384D7AE4296F94FC1CF8B2277620005515DAF0C6886018E145B8410F3828EF5C152E465AE41035E15FE8B9E8AD58EA74A8973B599E3CF2C834999E712E95C3E419561247D9A570F5951F669FA63043FCDDDC6690FD85CDD83B7E264A81C4B2CA24D5CF4746929AF32635C47ED653220455A193523F22F693983A1C5B8F2673C05CAC7AD060FCA63B31637AB7B14F01D85C21E4E021508AF1DF3BAF0C863F63FFC1F41229D8419368FB5820CBA84ED24938340F6D31939F0C117901354D99B4F20F8AF5BD3CD7F00A8E8BE4C93FCF59906965D4423006BE2E6516086, N'<ß ,.@b*UhÐ,ªßuãvoUbooý©hª*|äîb u,:_¢+CÖbÃCÃCußA,vrÄr<hzã©Ußo@>*b.Or Ãuîb>ý<bZ|ðßzO~Ã*CÐvhÃüCz~|rÜªÃb~ÄÄbz£Ã>£v|B ýä ð£ÐZ/ðrýUßÐð.vv©åärª<@+Ã.u¢ähåÜ ÐuZ', N',ª£>Äß@ðÜb+aåu<ÜUä,vbärz ã+a.OOýhß<U_CÖÄäÜ£hUäv£z_<+åäß@. Oå/>>ªî,äbÐuuhCÃ.Zubb:|ÐÄäÃßBZýöãröäZ*vbUãarðbz*Ur:_Z*vÄzÄß£îbZ~bÜ,arU,baOßU:+ß¢_*~åã/©>öu_|_¢oO_.ChÃzoýß,@C_aUöîoB_<.Ö£CåbüÃã>,A¢ÃbU©öUr~B/ð_üöýª©,@ªÃh©<aßUOZüåhbîzrÃuuä*åzzÄ~ðCüBoCå.ð|+Ü©hýazC|Ü:b¢ßð:o©vßß*Ö/åCurßÖv£ýÖßð|Bä ~rÖöCå>ooÄöroCÐAauUåßCZß@ßbäýaîbßðuªªß a¢bACßb>äaÜî ãý_<îö.Zß¢Ooßå,uåh.rîUUÐbOa<zrärB|Uß,ÖÄ©,Araåäzð£výå+Ä/~Ðß,ÐööýªÖübU¢|ãC.ÖßäbUäuåbßbrýã,h©B~+ýÄ:bªUîßbZb/å:ªî|                                                                  ', N'öOãäCð,ÜC©Bü<vÖ/b ß/aö/ßÜÖ¢ @U<~Cª¢Ohã*Cr:ßCü ~OCa||ÖB<aÖbB*zbvåO@ãå¢|zrýÃU_ozã:o:u@ÃðßAC¢/BÖýßhrîð/>Ä__Ã+~bäöä/r£räãÖrvÃßÜahu/ýåB*U,,ü/î©ß  ÜOOÖýåCßöZ/Ä£ÖÃö_.<ð~OÖ~ªbß©ÖüOöåöð¢~Uh*zrößî_Ð£Z>+U ,Ð~/~oöb/AýB>ãÄßb*ZZh¢,Uö©b o,vªðª<r raBrväoüÄ,ÄaãuhbürÖ *', N'ba89441a-b18c-4611-869c-70a29c5c159f', 2165835530, 825719062, NULL, 130, 0, CAST(0x0000901A0000012C AS DateTime), CAST(0xFFFF059F AS SmallDateTime), CAST(0.0844 AS Decimal(28, 4)), CAST(-100000000000000000000000.0000 AS Numeric(28, 4)), 0, 0, NULL, 0.3166, NULL, N'@ü,ÄäýÄba~ ß+~_>+>++Üäå aBbU£ÄZªä£äu>¢£>hvr>_öäÃÄÜaßöß ©bbÄÜî</                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ', N'ÐöÐÄzýÐäåU@£,ßbu+_åÄ<£bzOh/îå~£ãðußýhý,Üvüb|ßAÃZ©_@ð||ßbî._O|ãüZ~©ÐOübB,oB:@~>>o:hU bÐZ*.ÐBÄ/ur/ýßühz>z~/hÖ:CZ>,ð+Ä/~£uä,+ÜUý+ööåA@Ü@*äöã£åðüßuCUÃß', 0x304D1B49E2631AD4E0A2AEFAD1F86BDF6D38D8467989066B4FCE02FE333B03ECC241050B0CBB49A7E96F2A75D94171282E238C20AD9CF4A746AFFA13611CA1A49FC13790F35FD3B2EF305C0A5E91910D5DDAD010AFE23F264C5DC45CC03646CDCE86D5180AE034CE4FDA317C3FEA48B41DECB5864C90F4BC821043959B76F1B9EA8F3CD8BC79037CA501C0D5B1C3E662150F3ED480BF803D921896F99D9F32D8E87891B0AD70F8A4E938E14AD01F0BBE2AE17F8C381D382A0FFF46A3E309DF06CFE7EC383135B4A5169AEA48DE356D720DD7CEBB1FA6A0CB3F66A1AE2A55C0E058DA7BE832D28DF42CDA759D32F04CD991D3960C3A23E7284621F9CA94067BC1DA0A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xB984403A49DA8F443003984F1AC71C56BFB4A534F353A110D9C260265FB4C3270149200D925CC26094A2F84388AAB0CCE924012565BA0F66E22F60867969E57B40704ED1A70FC362F244A0515A5E872F12943C3AB29DC24639B92A63FB3BE72BBD7C02185CDF24DA609F33201ABE0B84A73174E52CAAC9A3AE0797EEE46067B65D7494DE5B6FD2326F62DA136AA12B7AAEA5BBC9C601FF12B35F69544736F500377CC3A52A2C29375F4275C9D0B5380CDB1C403FA49DEF5B75812BFB067DEA396DD9DBEDDE8650817C836A848C3542FD265D782BF5B65B9A8D672FA8012E31E1573B5CF6D94B2D55CCBEC220326ACE403F2ED4A805, 0x0A, N'', N'üv/ÜhO>ª:@Ã.|BÜüCã_u/uÜÐ,ã_|åÖOAýUäzzZã¢<O>v+AÐ,Bv/v:/hÐ>Ã,Z£öÄÃ £/ U:£ßaîÖvÐ>*+Co<ª ð~_BCß¢î_ý_:ßðÄª.h¢¢ªU_©åaý AO<:C+.båuC£Að<ðußö~¢ÖÄaãýÄ©AäuCãZå*>b*/>£ÄOAýªÃÜ¢:bb,Ãv<:¢C£ÖAAýýßÖAC.o:>býA@ýä,Aå..ob/~ªåA:uÜÖ¢ÃOAOã£©rzª| ÄUü<ÖÐ¢äª¢ßö+o/U+ÄuÐ *  ü©_+uuB|>Cä+î|Ã<oåAb*BßÃu.ßª+ßý+î¢@BrU¢,@v/Uzb ßaÖ~:                                                                                                                                                                                                                      ', N'üåääoß,>OÃh<<Zb~ZðU¢|B£|+oba~¢U@b£©¢U*bßaabÖCß~bÖ.:©rÃÃåuZ<aÐ+ð|/ª/ßª.*ðã/¢_aî:_|AUoo~z+öÜ.öäbB¢b@z>,Ü/*b@ßÜbhå ãö/ÄCÜ,äZbäãa.bÜ*a', N'99999999-9999-9999-9999-999999999999', -961662000)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (108, 1947930620, 32767, 137, 0, CAST(0x0000901A0000012C AS DateTime), CAST(0xC2FB022F AS SmallDateTime), CAST(100000000000000000000000.0000 AS Decimal(28, 4)), CAST(0.3791 AS Numeric(28, 4)), 0, 0, 0.3332, 0.6084, N'<A/b©,Ðîß£CuÃÜBÖÖbððZhOü>o+hÐßîü|/oÐBUh@*uCüUZ¢**:|ä©.* ä<_@aªoýÖo£Uª+£@î.~barÄu_aßvUAZobãä¢Ã¢>ÖbCrB¢+ÖüßbövãZz£Ö ýaßîÖÄä<oÜ>AßvîãAåýª~ovß:Oba ß@rä+£>öh+>Uhrü<ÜUÃ*ýU/©oÐßÐý/~¢ão+vZo/ª.îå@>*:öz ©ð,£ |B_Ä£ßÖöÃÜä.ýãÄO¢ßböB+îoßZå/©Ü©uOßßOÖ:Üß©öOÐ¢ö:B~obB ÄuOO+î+ö ZðC¢uoA_/oAZZhOo_ãßÜã>Ä|î:ª¢ý+_.ã ©UªaÄZbbÐåbb/baaãb_o<Üu|ÐÜ|._b¢¢/ö<ð_@h_Ä', N'ß>ãA@¢ü@<åÃäîAbvöÐ©@©v/¢>ªb: ða/Äa,båÖbÜ|_hÖÐB|î>vOßbvB|bu_î|@r_ävoå£ý+rÃåöChÃî.AoübÖr+/ðãa©uhub*~å<ðÃv@åýCOzü.*zCå,_hß©åÄüßüÃý_£îÜ_ß/<*î/oÜbrhö.©*BUã>ußu~uÐ:|Oý~@.rå_å£_<BüA~Ã|a,Z îzß,_Ö~ãU¢:åüÜ>©ÐÐ_C</Ä+,UÜ¢î£ÄbväBZÄA£hüb.îAuýUBaãZäOä:~/ýzýüð~î,¢CÃuöÄb.o.Aß OU@_îß/rbý¢ÃvA*hýCßý¢ªä|äbhr/A//ÜCßb:/AÜ<O_hb@Ã©ÐvoZrßÄ~+ö©ä©uÖb_OðouvÃ|Bb@:bÐ@*+<:OåhUü,uÃ>ÖOBv.>~ä~@/:|~roZv@¢/ <rÖ~O,öüÖa|OßðövA|                                                                                                                        ', N'ÖãAýªZöB©hÃbb/Ãî>ã rî¢Ö.å,ßZrAuü>Ü|£oÜüå:äz¢ >C*uAÜruöÖCB¢Bu<©å¢ðÄ|ZåbÖÄä/ÖA hB+Z/bovAÐ_A/__©Ö.Üý©Ãªöß<OZb ßrÄßü@ÐöA¢Ä+îüaU/>rbCAüb£/</:üäåuÃö* ¢~aöß+oZZß£ð|A©býuÖu£h@bZ<bÖãorA©ðßðrCZ©ßÜ*¢ã@åðrßu<Oh©<bü£ Z./hª¢U£UÖååðB.åßåuÖªo_AöÐã_UzäU:ü+, uArvUÃ/ð*_bÄßÃOÐåÐhä.räÜÄ,ðî¢.üÐa_|äa>*:BCªOÖß:ªÃ>|uu@îaO/_ãÖ_Zð~*ÃUCzÐ,+©Özª©AîözrhãÐ><¢|©~ü@Ä', 0x3EEBF0B06C543F47C5EC3ACA3CC040EAA5ED2062BDF528E724DB685759F55973DD9E8AFB2E26C80FB4A52D9BCC8280FF5BE977051EDC3D49C2088B90EBE7EECF92C6ED9E3545BB7E2510AD17C78C1AA15B69FC6F7E545500604138269A3823CDB65D080695E1C9152DF8E00D2E258235EDEA3482EB7E513E70EC3DF40D95E3ECECE0616984140C799FE642857348D23ABF0238B003A1E1380CCA95A8A4D5089714F3204EC418B1D9DEBBE2043CCBCB281A02340A5D33E94BFE285DB97F63D5CADEAA7180278376A6505FD247BEDDFB40FF6C8EA2A0FD3AE009D54F9BBBF7597AE61826915A4A01968C8EBAFD61A18C212D1CBA12D53329E07090765134DAEA58055861A6B66AE5B46AF71511433C7F67492E6E9E3D47A4B3EE4621CAD4B062B2A361F80940E66AC23706A8DD1D179C33100E08056B4C1BBEB3AEB770491BE0B995636EE244762762C4AC67369FC795D6A9EDB9C5A85C4657453955912EF9791C26EE48B9A9B9EE99E6A541BFE4E51FEC18E0C65B611A11381C169C0A209634CA324B10B07EDB2DEFFE20DE031B8772601A69784D321DBB0CDC0F9C921CE4785070768C99D46E6D3DB3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x403B0D1C95A43CF0B71DE697158F04D46F3F9AD21AA78E92A4FAD88BABFC3B9A5CC17AD0CEF207EEE0F4C1328ADF7709D09AFEFD18034199AD7B779ACBB044BBE24B3B531533057C37ACF226E55B08C583CEBB11FE3D82587FE022537A6C2230AF064F3FA423F49C9581C66B111AB35173B217FDF532BDA5C9E2D33511B101CB8AC176DF0BC9215FDA1E7C7C771746642CD0E0C855243A7D49AA76C14FBF8BE37FFBE04FA3D446AA90B722D7B6402DB19B6F0840D139756586F9966052600F1B9298FC7C36F7C0588A35379E0263C6087DC425E0B64B1246857AC8AA3EE55730A707441E44B17BA4AEAFB59B01D66322338DE3, 0x2F644686B5F6BB2E161AA5DE07F7FB1FA8C4CB48803207967644AF17A576B001C8F578A2FD988EBABF76979510BDFADF68038BC91746BAFC5DB0107147A488A06AA315117E5822103511890A9A7186B84ACFAEA2EBE6E9823B7B454C881D731AEDF72B6CA7E9600FE17B9406BCAF62EB2A572677F5E6B584B993D60313D588189D6E1DA3461911616E9EC06F51E3C58B18592130F6FB240642A7B213125CFC0CF37C694E92BFA51045C50856254532D6CD4BEAB9B35721A24916609F67FD4E12A2B47CD57A77F859B310EB30F2CDE1FD74DB46C77242589C5AC6047C5E05A94877F6B470C95C5C55529105A26BF1AF7B34632A8BB7869F5F5CDF7BB3737BFBAD67A3B9FB197033187FF074E13CB53069178847FBDB1E90F0565514E9E0A9E2D695583BC837B362C42F110BC612BE22A6AF129BEA33FFD24812C8A4C35B4A37D60D9E4BE47A6731642683CBC912C9DE98326E39CE0DF8A29585F2B66F0E9E68E5D935B974733D2C47E037C4B034083548EA0C90ED1069C915FBB55F87B1C255871AE5EFDD106A24F541F2EDD633F2617CBD6D84010E7BD5706BA378BEDEA5951EE13D964E1858387FE89BAB1D7BF2E20953E2CA443D54799E107F716CF166169C5CCFF4F65B12636435041972CFB7F579C16F6AFCDB51E18CC3F73E99E6CB8E82840FC1ABFDEBAD417E650E383B06CF598AF8AB81FB1AC10BEE683264D4CA7E6A7697EDC0F6497BD6C2297D7543A851BD28E40FED200C866A4DB5BD95B9486DB3E6A3C1A4180E63407DD5BFD29C4BC74516753CF0BA904A69108373408BE51C79BBCA8E9FE6ADA41981CE704B4DB3CD01EE787F440C7DF956595893949B23B597B84516D2BD285E68D0226EEC20FF1C5CB571521366D86D3ED038458E1A0F7E5E19D892079DFB44C5191774E90E0C355A3B36DF2AD0A231DFD8D70184E3D04EC0A410D2476C15BFBA2C8CFA4F648330C402EB53E330548D77A6B32FC5FAC0E249C8B345FD39EEED267624FD43A7E27B55A63D81F77C6A8F4F835BA0B9E6FAC06CAAB086B03D338A14FD2C6D0C5649CFC437D91EBC3EEACC5E24F579DE4D34407C649199F75CCA1773B36DFA50FD83F93A8CDC810CDB032DBFE4278B47BAABC7C8ECF0A7C4B0D8676DC1AB09D1EF7C61A1FC3F5171B234A06064D912343ECFB807A631640CDB348AB474144A30FA5BD068C5EA4B7A5A5516B8504660D6C5332EF2F2012BBE1855C5C7B59DFC9DE96F660809AA6E54843EAD501BACBC94D3B3EF41E6583EF8301150702483C5BD5978CEE0E058CD1AC4D96DB454DBA36C9831F401AEBBB791316DD7F75AFE300078F0F7A2DDDBB47BE6D47D0CEA89A4556EE4D7F38FC40F9DC03CAE7281D5C0C5A96C3B64E4008EBD7C791AD93EABA6A8C9818875263D71B4E159E1A12D41F91013B7637E4D3F716E56, N'+zzÖÜÐrîzöÖßÜhåvÃ¢ßÖðzOO©£<<C +ü.BAÜã|a£rî>ãÜ@¢oã*äÐuý.bChbCUÐÜü~ß.ÃBC/hªo_aß*,oa ¢Ü:¢Ð.Ãü£Ã>å,<C@výBöbÐîÐhb/,UÜÖîCðBý>öbýah<Ö£ÄÖbåZb,bbvîåÐ>©ýZÄåð~Ü<+CAzðCððUoB.z+>', N'*äA£rCÜ:,aÐ.~ßböZÃÜvÖ<öo £Ð¢b*¢ÜÜO~ÐÖßoaUä_Br@© A<A©Ð©öåîåz|,h+A,ö£.U O<_ÜAîöãößý,~ª übBUÃßå>ªªB<>ÄväUBÄZ|hü£Aðbð<~ý_ÖÃ/å|O_>züðoð./hÃüÐzå ÜßB/rÜÜüaA¢|ÄßZ+zb_uü~rßÐª<îu@ã©©/ðªßCüÜÄ*üî@+Ã£äz£ÃÖ©*r¢ZÄªZäÐ<röîZå©~ObÜ>¢¢ZZ+îãbîåhîaBÐü@.+<ä¢<Ä~<.ÖOÐ:ªýoÄ| ý Ã/ßßªbAåroÄbÜÃZ¢ah~Ãî>båO._ðã+o¢@bÃAbßå©|~rª<©ÃîÃ@Ä.Öz/r+ð£O>Bbãýb_Ãav~rvðh Z<,>Ä¢Uz£Ðäu£>©CoÃo:@+ª,haî/ö@                                                                                                                                                         ', N'oCîå@h:ääÖOUr A@~:b~ÖÃßîäa+ÄÐß*h~Ab@~Ü~auZ~ÜO*Oßü+ã>:~b< aa@ÜÖCb,b©Ov>ðßäA*:BAÐ>ã|Ð+üä©aü~r~ÜbU:O@+CÃa_</A¢.uª+Zv@ÃrAÖb_+©r©z*AÜßåZ~£ªßãaUðöuvÜ*uîzU,A/./ãÖaßåOBýã¢* Ü£©ÃãrÜßhzCîä:,bÜ,Ö:ähßäßAhbãü+¢/a/U¢__ã£ªz_¢Cð.ÜAr:äå:£äßîßbÃýOð<<ãAh.UãîßvãUu©CÄZßÖðÜ_|Ü,ß£Ðßö¢hªh£b,£¢üªöbrßª~UÃ ,O.aÄðZUÖª~CCå£Ä£BaA £OÜzß<*üÜu.A:_/Ä~.ÄßoîA+>ãr|Cü>u©aÖý¢Äî:övü,Ob£ rýb©zUOÐo.ßüZÜäßÄr+:Ü/bå@vãåö¢r/Oä+Cðãî/ßAãuîðoo,o©ýÃr_ÖðohA,Zß@r*ß..ÖåäZö¢Öªã', N'99999999-9999-9999-9999-999999999999', 1270983234, 475931487, NULL, 255, 1, CAST(0x0000901A0000012C AS DateTime), CAST(0x59030397 AS SmallDateTime), NULL, NULL, 0, NULL, 0.7446, 214748.3647, N'ßÃÖ~ÜoBr_ðÃßA|ýªßBß|zo,îb_Zß.:*öã>h@a,@/B|oü*ÐOÖbö £ðbh©zã>UåZÜB|Öü_.:ª.~+<~ý/_**@Ü<CÄaÜ*<uoåZ|ßßb,ªÜ£*~*îb|ª|©äzoî*>ZüãÐrrðu/_Zß£ßðAö~ÃoOCu£:o', N'*äÐ,rz>B|ä~:.*ð+ÜÖöÖÖã*~rr oÖOZA,hä|ßî~*zã:BaUÖßrãåÃuAb@@oOaý  ,~_bZ<*|åo~:ð+U|ö/>üîZ~ß+b*b£Ä~*ü>b@:O:*äZa_¢|hhv~U|>+.BýÖÃrhZðo~U<.zÐCÜýhB¢Zboßörßb<aäªbý@Ä>Ur~*ãö,BÄã@::~*vßßö~åvð<åÃ~+ä zu.ZÐö>Z/BÖÄu*v~a.@*ZO~CªývB<o+Au,_zbOä.Ö>+ãßOb|uZ©oä@bh£z©Ö©.ßvÐÐ<ãßü_ß|B~ÜßÐZ.ðÄåO<uoÃ*.©Ð>CÐ*ÃBBBÄuÖUÐã~Ööv îavßü@¢ß@|Ü>.zß :+uBÄ¢rÄÄö£/¢¢.ÖbBÖÐUZÜãbz~@ðÐ öö@h,ÄOªvß|Caåroåha. _bbo~,A.b©ÜýªÃ>C>Abî<>ðÃOÜöähÃ,îza,ä/üßzhruhÜC,                                                                                                    ', N'b,Cü>ãbo,ýß:ov*Zå©ªZ£©@uÐÖZZÜîb+ÖOBZvðßo*Äbýýäüðääî:ßîb+åîUÖ|Ü,<ð/ÃýobAöä/öð¢@uäß*.ðaª~äCÄ.*Ãbª~ |b|OýÜßãü~*öCÖ*Ã+öu*<<zãßä:£©Ußã*ªb:£Ãß~¢bAauîaöb©zB+uãbÖÄ*CzhOÄÜ@~>ÄåAÃo£Ð,/Z¢ðä>~ýðÄ:hÖüÃð*©v<îzUÄz>UO¢¢öÐ>:£:B/vß|Oßbb:ÐÐOB <,U<Cbîª*v,+ZÖÐ¢z uãð.:ðÐ@O©ãÖ>ý@z:*vü@.rßî_oß>z ã/,öv.bðzÖªåuÖªÖ.ãýz+* ßß¢B>îÜðaä*azBAvå+.üuð_übzÜÐü@ýö>C~h¢ ~A_ã~aåÖZ©+~Bðü,Cîv©', 0x14D7381FB250F83C3DAE03762219D5360C79A33D1B7D85449825464E2EC4136FB59CA7E3180F621C2D44115F881025F0FB22286E4787789751F4878D09AA0E789B93C18671F11DFD178610D66B25BB87FF56520B9CA5282D24109124000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x13823598C4F54F9E7F0A052B57C077A12B2B39FF8DB35802DCF56B93626060F97543738DA1D361C63861D74806704D67B683E566EB8846602A32BBCE8ABB3C1EA90CB6144DEA0057CA73C62CDB10FC6BA803DDDF7AFA0DECFC13626E17923C7D24B89EF9BA391ACB828E9B78C219841A364F2686DE5DA3AFFEC9173987913F37374908227102B16EE9115CEC5E9529E28F4838C86CB59FC715EEFBF021E044F04E6441781161A8339EB79CCC, 0x51689F34AA3F5977CB81AA400D8307C04C09CD6B9DFA54B1D02D9F0429B419D2C55D9C9351EC350497D799BFCED053242CDE6B93FE961A5713EE647C9F554D1668D77BB0E6736F5FD3C9D4C56194E2FFDA7BD84B4985D42F43457F6288B965428A8257F655A33DB86F0BBF35C254F67E0C64A2247C02CDE2024B6CA1F30CD61A63923BDE3DEBAA363D20DB3DC69F6DEF4E0056241641C587B475F30A369CC46234A4D12F19174120BA6BE65B26901B63DE7D52F3B6B20322CCB329C7F79F00A15C790821CD3DD637BF366AAB5A6A612459902BB949D1AC82A0AE6365EE79281A6B45FFAD87FA95A0A71B33804758C86151046E677446588ACC85801ED97048450D5040156AB49D5FFA8B122D9D2C3B48E60113E90BC0A524ED74E0027976C736D2EE72F618B2F79D670F6DE9332AED9F4A3838D85C5F3A4CAA1B27F6D39BE583C3DC5AAEBA442F330A7682FB53BCF1C38740B7403EEFDA73B4254CFD8B01C9CC29E92557CF3EE5050804CDE5DC3EF9ED29646E92E3A444D402E7FA94F832A809ADB5D16A9799F3485BB2, N'_uCzb<ZUUÖoZ_O>u_ßZý<üßÜoACUhåßÖZu/ßö|ãß*<vZß*Ð>O>+vC*h|/*oa*bC*ö.ýzÐÃZýý<£aÄ@üßZ¢b£@_¢öBä,~,ß:Z+ð +*.Ö>u,v£Ähãî,*ÐÐý:ß.ßbuäZÃ~Oa*¢Ür~/ää|/CvüuöA<rAbÐzîBî~zrår@ßB£*@bÃßðäå.AÃoßßZãß>|BvbÄÃZah©ü+î O å/öÜ.Cuäåå,ÖÖ<ðb,AUa,zß,.ÜÜOðbC+ü>öãåab/ä,oãZ_U©ÖîüäbOð|£|+¢*AöãÖAÜU@bo+ößhýhöBä_B/abvzß|+r £:Bã:zbvÖýoÃÖªîvbö/Ã:@BUªöÜ>Ä', N'häãÐ>ÐZ_ãäãB_öÖU:*bÖ¢ö@äC+ãU>_~_ßzaßðä._Ö,ªß¢._zãÄzh©ubr*üªCåbbZZzzuööz~ð@aU*ÃuÄß_,Üu/ä|vß:övz£Ä*z_zB *î.Äuorßã©Ðîz*£vbã/Ðöh<* ¢äzåAoðª>O>+>uÃ+:üßu*ýZbBUÄå*+u.b,~zîðß>ßZßOoå|ªÐ+>OÃhü¢|Ußß:bUCöbzC£,:@hZ,bOCîr©BhýäbÐð.öÐ£CabÜAÃub|:ö îüA.Ðî/:*~h*îvUî*,ÃÄ©ß,huªA>îß¢uoßbåAzO>>Zz_åÄäÜ/ ÐOÖU©B~åOhåö_@öîrCr*äArrr,>äv@Övb~B:<îCüzhCb¢|ÐÜ~ü>Ð|B:Ãü_bv~Äª©,¢îü                                                                                                                                                                   ', N'/zýuAÄðh~££ÐZzaaÃüC.<ðää,ª@:©a£Ü b@rÖ*bÐÖßü,ªä.z©,ðöãAa@/hã/O<<~ýå,rÜßU î+££ö:U@OuÜZbÄðzbaÖª@ª_Z*,.Ä<r_ähªA:,*|ýîzUüÃr@ZübhÜA£ßzß*z|A@bý©ðo:Ã:ðÄ/ÜÄu+~ªoåhÖ,bÖß<ßÐ¢Abaö+vvZÖAbª>o/ vö~ðUÐo©îÖ£ðîB©£öãå£.ß üCZãCã_vU¢/|_uß,Zî b¢ª +©+,£©vÜî/ª¢ßüîbã+>.z<@h/h/ªÖB', NULL, 1200464570)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (110, -1, 25248, 252, 0, CAST(0x0000901A0000012C AS DateTime), CAST(0x4A3D00A8 AS SmallDateTime), CAST(0.3914 AS Decimal(28, 4)), CAST(0.4937 AS Numeric(28, 4)), 0, 0, 922337203685477.5807, 0.2379, N'u£aß©îvAbÐz,>î.<ü.rãoarî~C~hÖaA><,+ ßÃ:A ö+©_BOuß|ðÐAh r/Cu| CZAÃßðC@b£vüO>u£_+>ö**rbZ<*bOåÄ:åÄr© üÖobÄÄî£Üä¢C_îÖÐ¢üÜBö, ~b Oößb<z_z~ª ä¢£Z/@ªÄð¢ýüÐvÐ/|+|.~a+@üãÃ+ |uzh,Ö Cß@åÄähÄOýBßÐåýöArÖäUC ~ßu,*,Ãß >,zÜã©ÃÐå© ýÖå¢:~ZZö£îbý<öb<:Üz>oÖz*|rB*>aý~ß ãö~öÖB,', N'ªzzZî¢uZB*ßãý|Zå+rö/¢î>rhBBî>auCvbÄbUðOÄZÐåUü>ã,zb+î:/bÃßBhß@zÜbhÄ|öäU¢:auoåavU£UÄ~/£z©ßýaUhÜ+rüüßBUðî_b/îîuvOÃ_ä>|ßÐ*/ßbÖüãa<Ã£ArðroýÄ O@ýÐ./_ß ÃZvß,uª,vrOöÃbüuvrbv>+åßU¢r*Ã.ªro@zr.ã¢üzßîÜ_,>:A>oU<@ßz,<|ÜAvÃäªüÜoÖÖß.|BöÃ<CUãCÐzrv*Ð£ÃaßöZäöACAo|ª ÄZÃÖÃ,~hßZuÄ£Zü>ªvUh:ÐüähÃhî~:ö©UßAA>>£ b|O@Ä|u©bª/å :äü ãªýv©|+ _:äUðaB¢îbî|/o|<:ãüab*ÜðbÄ©î£b,aßOoB+.hª*v.+ü                                                                                                                                                           ', N'©b>ßã~+vrÃðru*rüãÃåÖvý:CAÃ+©ßð,ö£ãýãhv|./îü./uðvoz~Ãb£ªÃª,ÖouÄ<vZý|,+*ß|h< +AAÃßÖB>> ÄäauZUÖ>.rÐ.Ãh:©_îß<A|ªzU©|Ãö,Crýð|C_obCbbÄvªö åUourÄazhUÃü¢©b|ab@/Ü| C+ãÃ.ýã*Äz ©:ÜOð>ü¢/ääO//ý<Ärb>_ îbã+aªzzîý©ZýªÜãoA:oh:vO,U.>zo¢ßß*_Ð _<+zCüä@h/+ÃäAAA,O/Ü©üÖOßOÖ+å>£bb@ª|Bãa>.©UßbßvC~Ö,oBö£|Är>öu<¢£Üz£*/<ö_Oö+ýÐöhaî¢ÜCC>üBäAãî*bZðAªAÐoîÃCßãüo|©ãÖb>A~Ä@_Z*|>,¢brC£:ühð,ãaö£zv@ß@OOBãäAÃr@bÐ,ª.Z>Ö¢ä>BÄÄã©£A¢brvÜ_Azr_u*Böv/bOaUª©o|¢©Z.<<Uorýbhzßüã|Bbö_ZÜ_ãv££©.', 0xE70922975CD5C8A9DA0711AF6634E2AE067EE724D878A7974525A447FD71B4E961513F016D4B58460FA38BCEEF091B7878D7010F50DDBF6F628B51363181AB6852274D15F4E041BA25A01535ECD8A83C0A2BCF2670A5998391CF9FE1FA22158DF7227BC7BC0583979647E9AFC88A838AE3152C05B285F8AD8EC98425415FBF038A873DC95CE08004A8379029BBE9BA074C14FEE5F510DB722ACE39F2815E563787E625414CB92D0294285D7BF5CFF2A50E7CD82C60DA0D7AACCB9F8EA68D8249E158A1D4C379BB93E7FC50CDB3607C5ADB94E3058529D6ADD8AB94801A9F5B07A513999C2D1DE195C14545648940C64C4F44B212AA7DC3B782F4FC18E53A7848A049279FC6E02DBEB34E4440E4722497E44831D5ED495C2850E11A3921C8B086CDFDC33F1826856E17F45F5C3983D30FD064349C09A25B56EDFE4FE4C6F39CEA9DBD72E7AEE47FBDC2C2BEF8EA00EFCC0E0A69BD94137D2AA26D521AD7A0A8235774BE7B10EC60EBE576D946E4626CED0F83D6BB8ADF568A3F4845419164E6211A9AA1754173BB21A97DD81D3A37453F00650A53CAEC99781E343BC7A71F5A8090B72B49C0F7AB9BC7B4110C063950080205412C5A92572D0028570D38F37A8A23588D820BFC7F08BA6F8C15DB8D71E4E432C4A2DD2D25FD60FE4897A09E63D33A86E9AEACCDFD06853872EB06415273B7000000000000000000000000000000, 0x052FD8ADF5328F220DB3E7681B0BB9DB54A3C2381635BE1CA4BB3AF71EACD4E02D745EA461D9F37C1CABF0529ED056DF4C65FDCFF43913CF70BC0839F7980360DE063AA7AD147A7BB0451C6A456B7DD4655BAAB8AF05EBF3618E33A5D0B98583A88F749795AF3137EB811FAE1DA889053E34D49CED4AB1D91A46451EE1D4AAF6C098C1B6F7E53EB62972CC2DE53DD6B8042E679BE5E8965DDD9A7D4F69125617D729ED84E7D30E58, 0x727A7D84F3DD708C1AB26D0E10D80264D85C68EE4D161CB556BC4F51D131200EA5C8751BE059A79FDEDCF8A3AAC818158282FAB1F007D05C5EC72E378E1EBBE8925F694862E7837FB5C810701E780B8DA339CF4E366E1D9DF719BC182A6F11BF210F104A5ED0B39AFF7BFC27F7603EE5BCA094544F6CB22441CB51482A6B5445B7504F0E68C02ED286344FBA71F6A597DBD75B8ADABC70B45CEC09937F6A709327B76FA7102F7DFB71C1CE1A1DF8B24A25B96D520FC96AFBDF9AB17BB79B531BC4BC93BA86FE86AB5A601918EE56976439BE6DC5FD1D835D4C74C7757E0144D56EB3556164F8C42732C1F8AFB0510C89034C41F82E8D1DA738366D1237112D581B43A93B00360040FA45923C24D4ACFA673D7231C04CA6E195AE282E8BB2EF2194A0936CA8D189CD4C01FDE9FAE082648A72AAF99EFB98CF9DC8A5510DD2B5485571A884403F5296B4A4E5BF4EBDE7B42BC3A41807F6829808C4CFDF2C37BF7A4BB4938938FE244A201345FA15D880DFE0F025492E9C405FEE0F7B7B6F72697CE46B739A2A5E7C2D9F59F7F4B188822F43EFFF3C11754BAE73339A2882A8DAADAAC815AA65E6B58173F8AAD4A44CAE658D4C3880722D6A6E1FC426F6C354AAF77E4A49E873D8C95D3A7EC819CB77092685359B36705A3B7C5EA68AA1BFBEBD1F4DB2565A02C6F2B582DA45F46550A3A8BAFF718EB97486240FCD8ACC4D289E7BC0A8CC1821AF23BF42E5B3961446160D03E2E6BF4D2F66D92C314B353C26675A3BCA34BC848A870BDBB24BD3C0F00FC8B67CC86A41DE2E9042F3ECEF63EE821C7D595A4A115A88795ADBE39AE493183B22827FBF5DFD185C9BA37A919D98A7ED2F2E556695C4B75CF44F0F66FB93ACAEDAB0CCE06FC3BF8041FDAF6EDFF6DBC233F66BB53DB1A55ECB22CB0DEDB16108F7CCB7ECCBC77E6B6ED4259815497DFD734D320528F771290B6E144CF8B2938F9CA676133FEEF76C77FF47698B0D4982A5CD99A07F5BE0005A8DE15DB23173BC4095FB6ED269BD8455C6, N'ýð/_aUÄv£©~@¢ä öo|oAåÃCüß£¢bU©A|*ÐBAzO|ýA.©  ußu+Ðã,z_~zß<Ð*ª£Aý¢aoåÖZ¢üaoa<aß¢|ß.Ã>ß¢vßhßuß:r,,+ÃÄzbö<bBä,h_CzAão_rö@oýÖ Ðöbß>ßÜ¢BzB >åðª.öUCZA>rýz©O/ä@Ä|Ðr@aZ*~+îaýö@££v CrÐ£bÄ:åßrh~rUÜ+ÜÖ©,ªCª£Ð+a@v:£aðBÖ üðÃ>bC:o/ÜÄÜr|ÖîýäÐýªbî©Ãð¢*|h©B<:', N'boz<£/uö©uzÃÄÖab+ÖÄåaaßh>C~zCªZÖoîãß_U oäöa:¢ð£ßC¢ÐÐÖ>ãb+Oý_äîãbö|@ßðO>C._aba*@|<ÜO>å|a£bÜ:+vßzüCö@b.ßîðCªzr>ÖAa£.bbÐ O+|äÖhÐCä¢uböbß/o£åv+vvßozÐ/ÄãÐUuÜÖo@_bÖrýÐÃü/ßüruv.O<öðCÖÃ/,Z.AåýãO ©ðª|hb,@|ãÐ>ÜU>|zbÖããbÖä£*î~Äßüª¢¢_Z©äb.|,_ðöö¢bî<~ðb*>¢oÖðÜhßßÜähähÃrå/a*v/>ãîÃÐäÃUrb@ZhðhððZvÜ~Öbßb<*Ã~hðÄbbCzãuAZB||ßª~aÜbü@Äb>ãÖÜB¢U>ý£bCßrbßßBÄUü©arUr><~¢¢¢r¢~u+_ÐªßßCî>Ãß+ðüUåß<Bßß_@îCÜð*A/îO¢ã/Z*C:O_BÃ|,h_ª,ÐßÐ@Ö,ßaã<aåÖåbÜ¢ÐB_ü_ÃaðZÄäü@ýuzü                                                                             ', N'O£ä/¢v>¢/zÜu£ÜÜ,:b.rCÐª<Ãüb <ß|ß~/ªüä£îÄAb|ª>>rrÖ~ÜU|B>/A,Ö©rOh£Ðý£uoß@ßoÃOboýürÖä~åa u<ðOö:åU>ãððä>ãýAöbübäð/ZA.|î*ªv¢.ÖOZýãbîîO hUh<*Öß¢ßbU+|<åîb  oU£Z:Ö©ÄbCabO©~zbîöro@ü/~O,ªßBöa~|Ab<üÃÐÃbÜ@ßýbÄüOãaBhO£vuÄZ*bîöOý<ª£>ßbuu>BÐ:¢~BÃ£¢vðð:++ßvv.+£oã*ß@<b:*ÖÜä¢BîßªCO©.ZÃUbAuvÃ|ßßääðîCßb¢¢Ov>hbßZ<a©huÃUåoCÖ>vßÜßðüaÖoaÃßb|', N'99999999-9999-9999-9999-999999999999', 9223372036854775807, 391801237, -19772, 128, 1, CAST(0x00207B840136FDAC AS DateTime), CAST(0xF49900AE AS SmallDateTime), CAST(-1.0000 AS Decimal(28, 4)), CAST(0.0335 AS Numeric(28, 4)), 0, NULL, 0.4042, 0.5727, N'bh: äb£¢aäüaÖz aBåu,ßhBZ©', N'rUß_ªðühß *b¢ð_ªrÜýZUAßz~ ÜuîAO£B_:,O +BÜo@©Ðãª:v_î@©<vO/@övhÐuÜoÃüb<o.ä,å>b>C|ÖÐ ö+C©üªZvö©+BüAöÖ@Aå@üBhACÜüOÃzör_ßÜä£>Ð*ßruÐ>zð:hÐª_äu*ãUB|O¢B~¢ÐO|oUbCAz@ÄÜå,_ßä>AöÄ. z:ð¢_ö_ÐÃ¢ªazÖÖub¢~u*>~üã_Ö Cb£î äUÄz:|bÜßAoZ,UbCZý hOýßåüÜaOrª¢üÃ©:>Aî~b>:_</Ã:zÄußb Ühå/ã*Ã|î                                                                                                                                                                                                                                                        ', N',O~ÄÜ_b,,v¢Ð/*/v Ã:ýÜ|£î_~br_î>~å*bvBÐ@Oh.Ãbh,/b,b*ä:|.ã@©or:ää<ÖAãbvOoªoZã*ä~Üohýß:|£h öUÐ.| Äv|u', 0xBBC02785490D4794C41B4248F1D3E74C767ABC9188B4C6054700E6111C437267F3645D7C752B2CFF026F6F45F13BC2041329F7DD00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x9407FA223D4927357781A8DB558D756AD74A4DBD8E184480130B3EE1FEF34C9567A2D0568252EDE3D8CDF8EE9D15E6358FA851AC8F43C27BC2790F320A463784341273B3BC1EE7845C6AE5C12056E2FD25085255A19F0624DF, 0x0843BBD8919574B98AA1327870C1CC50245E015A6B97110C01F3E1E2950C4FD4678ADF41A092532BAC9C575BF290E294D44FE1C5DDFA287131AFD69DB491247E525E10E5E28BAF920BD6AECE3FB51971114D0E452A89F76D616D0FF1BBB5771B78D809947FFCB249A04EBA064B59317C95648C6682DE53C867A384747BBDD7555F935666AC85F1159BC5A5DBCFF021073C935C562910989985412DDC773DCDE27764A7B803CAD0107376CBBD3977F976827C37E761802C4EFBBDE16A57159E5DF7C2646A49680471C34CE3B245DA5F0D48B759FA06E581F73858BD45E865B85DD86DC676138F2D1978C524159C7A09215DD422A0BCA35711406C31F0ABBE895D9386DAD713E8F9B889408240C16C5ABD4E9CE7134218A13516B435A75D3C6EB93CC68116A0320D75DB69167B201650D41174A20FD6751A7BE5A4C05EB2525B4DD2C903FAEB441D1C8E7238D901251400646195E99A5EE2C7AC0631FB71AEC2890DC8A9571256E9CD568580643C4179C090C0FA51BC72B373E63C4EE51322AAE0B0AECB387BBDED0E78C79214DD7E8A6A8C706AB1B471CC9B143670D60804B933DBA0B38E764144D2D2ECD8F4DF9F9568B1E358A2B7F82B3FE12F23444C1706740E5E393CCAFCF44B2C97DFC898D8BB75A0082424AB177CE27474AC461DFF86BBE564E68166589DB5EE0D761F18, N'î+.AÐ+,Üb.ÃAÄ,~ä+.U v:> au£z<îß¢C£vÜÜäãö,b@©:ÖÐÃöüîoÄ:o/åBA@ÄbZoªbðbhßb@~ZðrðßäU>ö+@ý£ð£<ßîÃãzUzÖ*b.ã©|hî,|/@ü>bUÜAÖÄÜoühv~zî,Ãvb¢/~Ü/.ß+uªªb>h@zä/bZ>ªürBZ~bvU>Äz+î@ðZß+r+>o_å£Cbýbö¢ý|a:+©hãÐCýCîÜCUa+~¢ÃBCCß£u£:AZO|bzß', N'|ª©@:v@b¢B@åbª<zöî/î£Ä:>+Äß                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', N'ã:Z*ößüüo¢äªÖaCC|ü©ÄUh.,ü,ãhooÐ/Ä>ß£U@Cß>*ßv|zîÃ*,ßÖobzÄAå+_üßßýî/åUu:äbäåuî oß©>oßÜ*üv£rBª*h|ß©_ß+h/©<å@Öîvä.+åbÄbßAA£ðouACä@îZb_*_ÜÃuã©îv~býÜßÐÄZ/>a£@h/ür¢+AýäªuzbßC+>uoCÖbão:U+hu<ßbîã. ÄArzåvÐ<Ü<ÖîªððZä@ÖbªßÖ,ýîÜ+ßO.r.Ü£:AäU> +,ý><@z_>r+B ÐîZßzý>*£ªb_>ãv<vaZvÖu.Üî@+:ãzýbCBAÐOr_', N'4a16ac5b-44ea-4bc3-adf2-7e2268fe3e83', 1)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (112, -2147483648, 18365, 244, 1, CAST(0x000079D70001368C AS DateTime), CAST(0xFFFF059F AS SmallDateTime), CAST(0.8284 AS Decimal(28, 4)), CAST(0.0000 AS Numeric(28, 4)), 0, 1, 0.6158, 0.5074, N'a..ß@Zb<AvÜ@£ãö_Ã.ÜbßüZ@@U©ZÐ¢ö<*oð_|å@ÜrÄA|ßýã©üUð¢ÐzãACîZZªÖÐ,zzo<ð,ýßåaäbðÐÄ@,a <Ä Ðb å.£ªUo:ý¢U>ã*Ö~vCÐÄ/ÖC,rÖåª/UÃý|BoAü*r£ä.bZ<r©bvÖu~~Aª|ÜA:ã+|aÐöUöÖrÄªðîbäA©ßîýbã ÃAC,_<ªvöå+ZZ,**uvðã_hz©>o~åöh<Ü@u Ãßä,Z~:©A_ß|£ <©ÄoýÜ_Ð/î,îÄzß.ªÖbb£@+å¢UB<vhÄ~ð|::Üª_/ßü,öa,åhã¢öA>ª©üZã_ÐÃb<zrßüoä*¢ýu¢UÃh/äu+ö¢¢O©bzå>oöbßÖÐ>bÖ', N'ÄZ<ýößå*ýãäüz*Ö/ãC@Ð£v*rÃð,å@rb©£ß££h¢Uãrüî£ZüÜ:az£üu<Ü/ðZzA.ýãÜÜrz>ÃBZrå©@Ã+ÄîÐhöär_B/OArÄä r/rCCåB£vÖîA:b_übbu+|å<h¢UÃÖh:<,.äÃUz|UßßbåOüObaåuüh<<Özöb<äO*>ßv@ª~,z£>ã,|>aZo:O©äð>*îöC+ZUB+£:~bð/|>¢~|:Zbðvz©îaÃ@>|zî¢©<a                                                                                                                                                                                                                                                                                                       ', N'.:ÖBðö+Ðî©Av*AbßAãb¢ b©CüaÐaßîaª~Obãzß**zOCa<urZãß£¢ö,b ß¢hðr*îa©.ÃOüu>r>Äzoö££Öß:oaU,£OCÄb©©/hövC*b_AzªZ/CUbî,hý,CÖOîÖZÖ>bvOß_b~*îãz~rÖh_Äßv.Cu îÃZz,Ü++bZAýb/<îA£Äý|ã.O+ª¢Oöa*,ßövhUÜr~_:uZOÜBCUîuÜ,UÜbv', 0xC3397AE97F9B459173779371D6B473BE1755EDFC27A69ED2941F7DA5F540F7EF960049EEF45A47D4BFC1B3DDA83BD4D86574EB633859611D9AA7555F1E9F9B327FA3DBD56B84CABD0E183C65F2C02A584AA540805493B73D9F2C534D04E7B51F26815D055FFF6DE0AA2E551F1CFB2ADA7DFC14795E1ADEECEB9E353E307DB826621C3F716224F94B3860D6253E9820A40179CF08D33CC00BA27119C1C92EAF2D762EBCFFBBB9775803C941FE44B8AD537E913DB7ADB053255B34CEF00A378109B0A8AF10DB20E8480277040AFBC2C6EAC4C64337F0F880C5DB96A486EA864DCB47374E9C089D775DA9F5B435AB482A996DE42C44F44918B728E934457C615D7B2938C2C4732AE1264EE58EFB434A19926C0A19055A09D7FD1E96741F6832E14797390C73866525430305F50FBB1D73DDD0A2D8714857212061C4A5DCB6C2BE1C0447630A3EA60C06E4D5025413C8420122964FC5596FFE3F17EC11C1C0488C4147D90A74B9699F2996D28C7255CD0C9982A4B91F72F8C2944823F351944A469B49C00D3ABDCE47B9F7252F87E38BEA4ADF783E1B8E6CCE4E16762B96754D954B8CF02995C0D2DCB35C00284DC93BB0BC39A8711B0B2A0CDCF1BE2346A2B143A990E3FBF262548A0D9C8ABE8E448185DAC56F5CCDDB793F61E34DA301AE9511AB0000000000000000000000000000000000000000000000000000000000000000, 0xBCE540BE5AE41E647F806B7E9870394980335476CE17A3990E15B0885F067913D2C5C49F9A071578AE77FABEF665B433C86415DD5745B0A541A7B045349604780758ABD3AB9AAF791EDCC8561DE4A3A8607CC0FAF19BBB8D141E5DF357CF43187281B79EBAE1882DB59CBF7B7C5A885C0307E4B7D50A866B9C1EBE8D3CBB214E98B0E39B2D05ED7EF4924455DC4010BA9500EF4FEA8C4268FB4C019C23FBF1F97A71E2CC76ED2FFE1966C243C5318F5B0D04F73CCCD2630B6E7BA0E003515BF9A14ADB6A5D4343A8D0F03584C9FEA2C9BDA58E1E04B52DA80ED65EFB4D4EFBC80BC8A17B5524FDCAC04E6BDC9CDE426FD8D6235DC23CF5EC1D335C87E5485B81F46D79005D277398A7C45DB549510B2F94EF22762B9E05CED3B55E22C876E478F2E9E72F654112B1628BB5FEDF40A2CB272DF2F526E5565668AA2DA7C851D031DFE5C2606ADCC953DD70139FE806EF931292FB9B84EE520D9290C6BA136AE811BB841EF97D41614B639E18B5D1B76E61BB9A94365635ACF093B4CED9150E40728702E464E7F515D030AF37E5D69C3CDB2265FF78D5B2BB86D72E66C8738835545EA62ECFD20979C684C4, 0xFDC61AF678F2B7AF0FC79DD5465E8CB98E4C5DA77AE387306D6D0818EC39F311AB158811136F5080D1864496085988747DBF3737665E2C1A3FEA880BEA9EC3D6D38C2930D57AA51EFCDCD6F49EF02714E4949B2D01BBAA4DE96ED229E7449632C36DC37C30589E0219183B8A87387C4EC37427550395D417E1DB4767A87C37B745A430302DAAE48CF69913E9801FC6B1F28366731D412F2D98AB9A541036599CE08344E2074B21188F9B5F6A82EB97C11596752516C49A047503978110907BBF3F7609FDDBE3AAA661, N'Ð|bß@<aýB.hBh*:ÐUªhb zv¢>UßO uö~ãÃ ,hb boh¢Ö,ÃîðB.åü£ß./Z/ v£ß©ä:|v:AbªOZBîrÃ@Uß*îBî*ýöbvåBÄÐb, :Özã/:îaßÃÃ|åuÖÜr@ðÖÄÜ@:¢rOhüî:uÃ|Ððr.*åabb©Z,obh >rh£ªÃUãuuvÜbðu<ä <ß|ÜoAÐ£ÃäOubhý£,UBböA©*rC¢UAh/ß@ã|zÖÄbBîüa,©ýOhÜ,_ü+ß+:or~A.>¢|.*Äu|Ãå©rýoýAZÃuö<:¢ª::Ð<Co_ha©, :ü Zü|B>äÜ+¢+.ä@+BöAaööîüÐ:@*_r Ü£~z+öüî+CÐÃbBBÃZAÖîÐ* >a.zuC|o |bäÄã|o/CA©åuvãå£Üu ÜZ~. bZö¢Ößßö.CaU+ãÐä ßÄÃ/ZÖ~/~ *ã_Z</,Övr', N'Uäößhß£vð<:/>åÐåß_+rO::Cäã_ßüb<©_/<ã>:¢ÖÜz.ä+CÜ~Ä@öÄß~OÜ,ßöZZãZãaßåb.î+*ðª/äb~ÖÖböB:hÜãüUÃ/©> <öa|ä~uÄOßhªßuo Äßbru*ÖãÄuöðãÄ<Äã~h<ä>Ðo@*ÖZ @ü¢ßîýªªzChOOã¢¢Zå< /Ürb©<rBî©ä~:@rv CðÐäB@<az©£                                                                                                                                                                                                                                                                                                                                     ', N'U<ZüåÐÜ_h/Ü@Ä¢U_Ð©£+ZOöÖ: UÄb+ß|ý*/,z>¢:<ßü<ö ,îu<~aaÄUb@_>_<b<Ü£u@*räUuAOî>u<ßhö*<ªßß_ZC+äÖabý.zOãÐßAÃ+u*üßßÐãbÖ+ªC~åýä©Uußa<uür<rA¢b î©C+/ßÐ:+_ßa£<äã/rýb_ßå+ÖCa¢ _ß/ÃAÃ::>_AößãZr<~> £Öß£ýÜBÜÖ¢zßBCãÐ+ ªÜ,+ö£öCÖüªoZ_@ZÃßýßÃvªÃÄåUUã©a_ßhýÄövßOÃåahO~*ÜZß/bÖ~£*oÄ£b.ÄvBöb h|ß*.üßB', N'99999999-9999-9999-9999-999999999999', 729091103, -2064054467, NULL, NULL, 0, CAST(0x002D247F018B81FF AS DateTime), CAST(0xE71B03E0 AS SmallDateTime), CAST(0.7507 AS Decimal(28, 4)), CAST(-100000000000000000000000.0000 AS Numeric(28, 4)), NULL, 1, 0.1244, 0.2115, N':abö<ãBÃu@_öÖUåýUB£ðUhßubCr Z+åzv<|uåäÖ£@äaBußu+AOåo|vu uäå+£Ü,ã¢uÃv©©C+*ý.,CÃauîßZC>ÐÖývUýAü+ýÖ:o<ahüÃ+b>ß~äãr_ã©<ß<Z î:Ãý/©B.üý£ðöuaBðCðbaðoh/A:OzîOvOã|_/üvÄüBã~rðUzã|_Ä|U üZ||.rîBbß,ÐC£<©üärbðB~ð@Üh*Ö+:Äö@ªUå,ä>býÜÜßOh©+î|ã*o.åÄ¢b£b| ©*©ßª', N'ß~aÄaðzßC ¢<üäß¢+ÜBÄ@U r/@©B.o+@¢hCýã¢o<~î@Ða~~<äÐZa> Ä|vßv>vr.ööCããÖãÜÐ¢¢h¢ÄªrãðOU©ä+az/_ÄA+©u+>~ÜåÖÖÐAö_+åObã£~.|bü                                                                                                                                                                                                                                                                                                                                                                                                           ', N'~B_,rCÐ+ü,ÖhhßzBO:rÄzýhC+Äb/öBo.Ö>rßu*@ðuO.', NULL, 0x882085B4DA5B327B21269851B31A4DB619E16AED43333F977EAC4D7C1AB17CC905BC0D44D227852565205C8AB1D8EA95534C3B8CEE072655E1ED352D0DB66070A9CF4BF60C08E4F15C448722D6B5E5A6C2B828CD75F0DBFE95B863E4F25817AFC0ECE0E28DF3884B684930A97F037E2C088F6B548E92FBB9F34D6053A5FFFF042CD862EAD40319CE30DD642BBF317F913A36DC62EDC3212DF026EE3F9234A5694A2C7CA6A1935704769C24B02ECFFAC2CDCE186E239C1669B735F9AD14D93BFB38FBE193B4D8F0A7DFD7EC509E70FF212C2C71C41C3645AD1513EF6C99AAF09D60287832EE670DF5DE718F4BB0C6CA4735D881E86777DF01B6337DA1E8830E34E74FF075F7CC32C51F7CE5AAA6F9FC4F48A836C0280836E849777CBAE96B0C5A635A6461D5554F69A6BCC8EA91345BBC372E59404D4D0CDE18072C805077DBB36F8B474B949A79F358CD196C3F4B57151BBF83BA11CC0C154E8548CE29CE182EE0157B06ED0F279CB566E77F339F9FCDB0176490F421A2A37E31FD0E52AACA8AB4EB8C2ACF50280C98E605ABE48DE1AEE67B1E116A873ABF72D887BB12184A0A9C5DCA481375FD5FEF58F80D1BF6BEF1504E28D68CB81F2DB1CDB7F7C86CF97F9CFB0E87C2999A707DBE22118F2CA37C1A966AC4EF737EE43D9D9746BE0696825F, NULL, N'v£ ö:@.zuÃÐz:aZUåaß©Ävý ÄUª/r©î©bbÜ~rAåZÜaoßAOrÃã>z,ýüßa©ýurðüB_Übu,uÃAäh>îÃBrZ@bî~Ä+@ÃCUÖðrßÃ+ßð¢aüüß:o::U<bhî:ÄÄoa,+Ov+Co:Ößb/CBÖ<rz|U//vîvrABä<>B_*,|/Ð~ã£a,£.ß*ü,/v,hð|öCZaOBbªZzüîÖÄOA:ÐÐ~/bª>:ãbÃ.rCöªÜ::oÐ.Ö|,B /å~vr,ß©. hî>Ü_ A+rbrAZýUÐåÐzüaböZb|Uß>A./@Z£_ö+ObÄrrAC', N'ªa:>b*:zBüuÄýbUåO©Ö>a Äß>|UUßäðo£ü¢ÜA@*Bbü|~Ä©rý<za+*î~Zz©a>Cr>ubbba::ä©z©/AÜCbã*UÜ>ã_ßÐ+*:*>äýå< @£~O_a:*bÃ<_@O~Ohå.ý,>Z*¢Ba>o/©||/ª/UOÃÖb<<BUããZÜ ÄC:<öA+U|:aör¢aðýb~hðür©öîaOBßvÄÐßÐ|BB>|býªuÐCZäb ãÖÃ¢.Öðß_AAOhÜrZr+å:ßî~Abð*üðã¢hBÜö>AC.ü£z|:_îäãA:îîü¢>öO©|<,üäÃ.åb+ßÃvBüðß@ C<Ob@ð<ðÐo<výz+|ð~Ã/äb£ß<a Oßðb                                                                                                                                                                                                              ', N'ªbO+.äA,Ö©ÐªBß,î_A Cb<bã*ª>~ZhßB£v,UOO@Ä£bB+ðu+röZvîÐÄðhü*Aß+:C¢å¢öß/hÄ+>ª:A+Äðhuz¢ýåî+ö*vZãhÄ*rö<<ZZ_Öß|å,CvîÖv/å~bßCÖüvý<OäåuÜUUBîu¢äÃ_ß.ý@U©:>a,vhz,ßÄ@AZb~üÃ©ªåAßãAßAî@ýÃÖ:A A©ã<ü£öãvrÄ~|¢üäÐ ð*£¢©ü~uUÜ,CöbaüAîCrÃüðO_£ u:Z_hü/_©©,ýäîÐ,o/hU£~ª~bÐ@¢ö/:BA£+ÖüUvo@_*Z£ðvzö|ÜÐ..Ã¢äÄ>,/ß~Urzüu@ý/ðOýÐBU ðh<u©,£ÐÃ¢üÖîvÐäÐÃöBb*öAßühã|.©~,@Ü*ðrhr~<ª*vÜbOOzvAohU~O//Ãvßovö+*,<,ö@_Ö@~ÐªÜaîö©vo£/Uvro<Ü:öÜ *,å.ÃÃß*Ð<,¢©ã~©.ßzhîBZöCCZu<ÐBßÐv+rîªrvåî.OA¢ª+~ß+£££/UCöZ|.|äa+~å,:,Öß~AUý©Cî>>ð£©+:ObãhBüz¢ãzb.ß:ÐuîOb_bª./|a', N'865c47a3-004b-4621-9c6d-687a0ffe5aab', 2129059413)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (114, 1, -6510, 139, 1, CAST(0x002677D0012377A0 AS DateTime), CAST(0xAF07051E AS SmallDateTime), CAST(0.3004 AS Decimal(28, 4)), CAST(0.7642 AS Numeric(28, 4)), 0, 1, 0.3958, 1.0000, N'|Bð>|*+ãßåbð©~îUbB.:>zÄ~AÜ<<~ß@ßhoÜråý,ã|B<.,ã¢/|+ÜZoråU, <ßäîUý+uÜ@ßÃ+bÄ|î.ãZrOhbðuAu£ðv@ß_@~ý£ã<AobB¢åýÐ~ªZ<,BhZ£ßýAüh~ãvZäß@C|v|+vbCA.bUZ£b¢ÜCÐ.UöO£ß@å~uã*aor:AAîAßboª,öß©>@r<oC.ZO,ªÖã+<îrbAbBOaªåBî*B ', N'Aã+ba+OåÖîZ£/or:ªU. ðÄ| @ª~bubrãªåÐýý/îßåhzOå*oÐå:Ðãð:ßzZA@,ÜC©ÃÄ/A_.r:o*~:Ü.+:o:äOÖ *ðoB.Äüî>AÖ:ª</ ªzÃa|> aaåî~*öðöð+*@å:a<>vã_Ã ßîaãã_<ÖÖä~hb@ß+_|Cß_UCî/hzr>z£ß ÃBý|@B+:oª>ðÖ,<©CÄZ.äÜ|ßB.ÃUvU:rßß+/ßßA<Ö++¢ªü©Öß@,~++:î@r:B,COðoZhöabäzÃß©>.öOCÐð/Ðääã/*:ðª ðb¢O:: ãÐÖÜ©bî|Ãö>|a*+:©/bz:Ã~_CvüÖÐA ü>äZýO©bÜövÖ,ü*~ý_ªöÐ+håhor£.Chß£¢_bob+Za*z+OöO~Ü©ürhB~~*ühãüA©£ß:BÜ.Z                                                                                                                                                   ', N'O ö+bÜÄOý¢åÐhðÃ|büÄrð_züÃ£|Äã.O>uAAßhr>~vöä*oð@åÖ_Ä/|Ua£aüÃ/uý ~:+@Cîî/ã<hðü©üßÖhÃüzÃÐöýa+ßo>b*vªZîÜ..üäCäü.zbüboöz_AAåÄ/@B@Bv*.ß£*,bb ÐÄCOßÖ@Ãö.Öý|ÖßU~,O îz:Öã@|¢£Ä~üCª~ãîãböîãhC*vÜ£ü.ÖaåÄ/.U**ZrîAUãÜåüOý Ðzu.bO*,|Öî£Uö|b,oo~|>ÜÖýßîv~,ß:übAÃ£Z+uåüÜ_ZUßZvÃ<ßa.Üu@<.UZbßOö:ÃOîä/CÜðÃªÐU:Öaªaîîa/|ZßOOäCößoªªã|ª+,v+aBÄO>ZA©UÃbîvðahåCÃUU©ýå/h£ªO,u¢£_a*äCZåhOåvÖv Ãã/ÐvÃaC*BßÖ+¢.>ã</UÐî£ZÜßßBbÜÄhoßüÜÖ©öð¢/£UA+ðvÐÃbßzaªÜroü/åîb~,©~~©£Ðo@>ªZU,U,î_++ÄðãorO|~Ä>bÐ,bä*Ü ~böåvß,z@ßî|_ @©ä:ã/', 0xA310D362A1661F88093197075938BF188F437933DAAEF5DCE10E004419B6A213A2CAE810E9283482FFC71B8358DCF16D48335EE19F68C3F41AF7809266DB6E538F84648F4FAE2F670EF73413937283041D93FCE657C0733A06F4F6F2A8A11B2458C8F3D478611D9903F7D3A834B060A7747B75D3DE88FBCE102A895AB83DBF6DDB10BACB7FAE8CBB7562E260EDCB0655934E7D2D2C4845CFCC24C44ED7C3E1C63866CD23F59528C5EEB95E7BA69BE1452333C669BF924093CAEBFE5AEA3EE3B1811C2787FEE260FE25B83E72E9C92931437E2AA4FC7707A62539580A96CEDBAFD5ACFA8973594741D3C8430653CEA901C1CD166B133FB509150000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xC489556757DD8E9D3CCF9FBDEA37E9D03333005257905748C9B86F9B95F7F074F1F782B77D60EC29C4306C32220F2C332A6F81D6152F0A33310D9E9E6DF20745DE2ACCF2B43152D346D68E26, 0x0A, N'Ü<å  î@©Zªb<rÐ,~ö ðÐZh,CÐ,++ão_ý+ý/A.,rÐîOhAÃ/Ðz+£bAîäC¢BÜªö@oãCbbCuZ*O|CrßCý*.Z£býrb@b@äßö¢ßvrÐ*Aü¢ @Aa<@îÄAa£Ð+zz:O¢A_ý~*<,_ÖäýbÖü+ÜüCAýÐ|ª+<äouv>üÖ|Äý/£ÖO_ªðÖbÐöU©*ª O/Oî<ð¢B< OvvåU@býöCuö<+ßß|£_¢>ä©oßz+ß@@', N'Ãu/©>o</OÃ.<CuößB©*ü|ãã ªBBðhu:/B|UvöhZ.oB:ß:OA|*|ÐãobBä,Cb.b_Züuý,|ü©åü,ðß:,Aä.b_~~>¢vA<,åßbå+¢ß<~:ß<~©©Ö/uU¢:+U£*>üÄ:~Ä*b~ßbî>_O£î/.ª~öîîÐOAÜãö@~,_ä£BaýÖ/,aå¢ãöÃbý_ðãbÖ_bßÐ,©~U£Z:@ü©_|å/£OröAvåU*Äã,ªÖ*Üz~vZ~bäo+ªO üa@/£<Oå_ªb|ãozä,U©ÄoO*öZªä|zb|.B_Z*O.ÐC|<UÄ_Ä//ÜaÖCð:OÜ£~ob¢ª|>A¢:Zäö©ý@|hÃö£,|o.ßzZ:>¢+@ÄªU©>öîÐ©ðUo|ß Ö~+ >ßýO~år                                                                                                                                                                                    ', N'r~hãð*UbÐäbOÜuý< aãüü@äCZåÃÐ.©ÜZh£@Bß.uu~vAÐzoÄ~aÄvå*äZ©Äa_b£@£bbÖbCÃîÃîÜ¢,Ã>hßhoBÄÃ.îðZ*ã+ÜåO|bªö£_CªåCA*BÐ:~O~r,å_ßö£OãÜÜä@îa~bzb_<v', N'99999999-9999-9999-9999-999999999999', 968080938, -424644801, 10790, 150, 1, CAST(0xFFFF2E4600000000 AS DateTime), CAST(0x4CFA0378 AS SmallDateTime), CAST(0.7176 AS Decimal(28, 4)), CAST(0.8307 AS Numeric(28, 4)), 1, 0, 0.6647, -214748.3648, N'Cö+  OZª,¢öarÖz@ZbA.Uý_ÃÐOA@ÄZ_©UA©£hü©B+ÄBb,ßãããßuªBB,C,©ªooÜåBBZÖob£, +öb_î:Zî*OÃåbð|o£|v:*@ðªßýýBb©ÖO/åuoAãuö,ÃßübýbOÐª@@,ðüäA/Äî<Oã©.>:oÃ.Cß zb©Äö@ãöß+:oUß>ð+C~hz:räh|~_å<z<ÄObäzhBðåü©ß,>OÄöU Z@©Aääß~,öZbzbü:bÄ£¢uA©v Ü,:¢+äª¢oAöAouý>|Ãü~î+Ð.bCýz¢Cvä.Ãb<*öabÃ/oba.ð>£C£ Ã©/.£b~väZabÖB¢:h@o¢Ãåå:rÃ,¢r>£>:ðoÐU©ßZ+Ðr,.CZðÜ:', N'üa¢ßßýrö£öb+£@~ßöîr<ÃävöÃ<AB.<äÐh@@/z*ðv:å£/©ãÖî@:ýåUå:BÖÃCzöC_Ob uhýo@                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', N'ðaßuãZãÄh|ü>ý<vb.©ªu¢   <* ¢¢î+ð,î ä£åð,Z~ß_~ÃBãöb~<ð+*ª©<Ð<öuBUrbBbo,._ÖröA@ßÖßU>©_ îaA_ÄOOh::b>|*@~A©|©AÄÄ. båÄöU:|_îZbb@:ru,zÖå@ö/urußCåZOZ¢u¢z:Ora>ö©b<@>u*/£.ö@ßh/>Öa¢/©¢CÖ/zßîÜrBÖ,|Z,ÐÃÐ~Ö:¢Ö*B.>äü/r+bZAðÐbr,/£: rhUäAÖbZbÃuý*,*å AßÖå+ vU:ýª@OzßO/hüO¢ßr,ð +bb~ Ðzb.ãÃ/ãßüª~Ö/Öä+.ßðv+ÄÃuª+übüOrå£åuCîö>ýzOraU:öo:a£U©b*ª+ru :ÜãÜ.ÃB|_Ö:<zðür>©üo/ß~ü_öu~_ªÐÄÐo_@ .ª|*+¢Ä_OðÖChBÃubî£OåU::@AðaÖÐo+/äbb.ßbOå.*A<<,@A<©vå :OhBã*ÄÃß:Ü+©Za¢ßUä:z:î/ýA£,üvbå<B,îözüÃ<O¢îUCßB>.©../AaZÃCßÄzÄ@+îå~åC©@voüCßarå', 0x2825C7C4C1F79A5BDDDCD23F08048D08502A967CC436DF38DBA1778222E84DFB67BC4101B7EB9E7A3CF9C361DF9B63A8EB673A6ECCC3CBF2458FE9207F1739F58ED6D74CC28C50648B1B3FCA727E58403ECE97BAADDE2EA4F04EBB28027EFB25C0CED208C316E65F17D5E2B183007FC736A9E2B07F7E47B0A8335B73D027620D201A0AA4AB507C27E837A2D8FB7D21F0CFF3F1589C4AA54186225F90BA728EEF73D59168F6DA1BE62CBAC847DB6FB42B116BA4DD350971D574C81E89F0EC6D76A9B36526ECB8FAF4D80B2BE1825D65176E347E4ECDB1BA6963BBF42DBC92F5404C519E280A8D3E5971B00429DE8F531763061BBB6D1EA9F8F8FCC231C4CC374516EB9430BF3C0CE0F624DD1DAC908AD367DCC9B57700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00, NULL, N'vövö©©~¢.Ãýý@U,Cã:bÐöÐÃbOÖvbðýzUÐÄßî~v>b:_a>ýÐß_@ªÃ>ß+©_vuÖð,@Ä/,Ðvß/>@|üAZ,ÄOb/ðÐ_ Zß/+Av¢+>|£ðß~Cv<ýBabh@ÜBvßBozý©ý,o~ZåÜOåob,+*|hbßüö¢_UoZ©ZÜ:_uO~ýö//@üªuðhîbh.ÐÃ©a**bA/hýZ¢ªaÄ öäß+,hÄ_ß+ÄÃ.*bhv_bÜ@äã_ü@z/U*ýurßüu*A*|ö:_ý *Aßðo+bðößbAU.åßZz<+<<ª+äßur@ßb ãrª<@>BýðZvýîrB¢:Ð©ob¢ãä//b*hä.CÖÖOAß.zÜu>/Or¢<©ÃªÐÜoî', N'*ÖbB/ÐãbåhUhabßb.åö|O©©ßö.©@C¢öã<ü©b*u*<£*zb+ £¢ÜÃ+ZöÄbÃBUhabzüUO,©b+ÜÃO@:îß*ª/¢ÖAÖ/v©îÖîýüCB . ,båý£ªUaýOÜ<ßu >ß>v                                                                                                                                                                                                                                                                                                                                                                                                             ', N'@ý@>îh,ß|BOb~.zÄ/üoÜÐ/Bå.üÃ£<zªb+Öåb*>Ö:ãr.Bª/ußAÜ*@Bvßbî¢bö/Ö*v<BÃß_U+öuÃð_AaZýÐîªÄübýBðßoÄ.ßABäoª>Ð,Uß,.z. Zbî Br_o¢z.CªåÖb£_,©ãÃä,ßU £ßz_Ü~Ö£Ðv,z¢<ðuäO,h@<ÄÐäîÐ>~r>_ãäî  Ö£@ãuAßvuÜOî<ar,CßoC~ÃäãUb_Üã:Ö~ªåC_äZZ:î<£h_ªBOZhÐAÐuÖbß©~o<A.Üaªz~î©@ã@ÃrBbÄz£ü*>ÄÐÐä+hbÖrÃhüåbähöZ>Z¢ªî@AA£Ab+öOh_ÄA', N'62bbf8c1-2a31-48d7-87e1-23123ad315d0', 3813550217)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (116, 309836539, -12183, 43, 1, CAST(0x0000901A0000012C AS DateTime), CAST(0x68C5055A AS SmallDateTime), CAST(100000000000000000000000.0000 AS Decimal(28, 4)), CAST(0.8305 AS Numeric(28, 4)), 1, 1, 0.6710, 0.7530, N'* ãär+b/ÄZÖCzÄ~ä@a~Äb©ªrbð~öãU@,.åüÄ*Äoý,¢hßbB>¢îooßOUÜÃÐ¢ßvßCª<Ö+Ã/Öä@ßä~z/@ßhý.öA©bÄuOBZýÄðîrZa©bÄ,båA£*ö~ö oð<ßãäBö.bh@*:åßåü,A/äÐ.ª*býaÄÜ¢uÖCbuCb Obva|äÐ.oä<ýrðîZrbr<ßCöÃv@z~*ß|Üîbã+ªÐãÖ¢¢ßhUß.zäßäoî|@bC|Ðb_hb zÃbhb_Ã:u:äOZß/<BaÄ@ü,å @ÜUAýßr<_>ã_ÄvU h,ð/Ä ßzhvö_/|*îßÖ¢ZZ£<.v+£ÜüåÜãÖ,+~:/ªrýöîÐä©bühðÄö£öb<ð@o Ãa U<CÜArÜ/+h.z ÖÐ|ª ©£boßOß*î£öZZ@ý¢£UÖåaÜ*>*ßu£ÄÄrü|ýa*ZB©ðüÃZh<BäîzÄC<ßÄzîZ|ßaöO¢O:ýÄZ@¢ |~ßð <uaUöz a~ÄoãÃBbÐv©ýÜbB©', N'|,Ã+|îýßý.b_~b¢ã¢ªÐãåª.|ªZîßhv+_@ä,ð£¢aßoAÄ©aOÃª*ö/>ö£>üýhÖZýo©ÄA@AÐ©Ärý~ð©ãåÐ_/ªZ<rßåªä*.ð@åÐßý+ý£<höö£Ð:ðaý©bU~ ©ÃÃ:îoðO+UÜÃBãCÃ:îBbz£*ß:*ö~å© ©ö|bCzîB<|ö|Ãäb*BîZrOo>Aa*äa_u zÄðCÖ_Üý+_ß¢>*b£ü,ýä©                                                                                                                                                                                                                                                                                                                           ', N'o@/_bÖ/î_vU£äÜÖzß ðð£+_a©öÄåª_*£ÐUÜ~zaÄuö£v*vÃuäuBO_Ö©ßÜü/äCA_Zaî~î¢aoýßªÃüaCOÐýÐä©@+ßîb/ý¢åoªr,*v:ÃÜ~äbB+öbÃß©ÜÃå,OåÜ£BÃãra@B£ý>~£ãÐbrhaª.ýåß,¢ ãrvua@~¢+aö,ã_ýÐö~Bhßb£©UOv*£uä:|ÃÃî+Ö<bbu*bvÖob.vðUZ<>Ü_ªýãUuüoh>ßhãB*OBabªÃª.>arð,Zªobrî*ÜÜ£ã', 0xB464266D6231AE29908E15ABB8AD52744C4029BD2665F63397FC230E8DC47DD65389CA2580CCD067D8DE52854A4751F750BA045BC6043D4E6EF3D6650D9F9CCC103F582FE22DF37F6FC1E4481371E850AB2CBED2C0210F4E4B7CB78DF66B5A384286740BEF211523C784EB051FF53BFD0A86B9E1E1C90CEF2F09E3667566890366AB05000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xDC6089169B0B3B35092E5641B98270B27957787A85DCE53DAEAD60FAE89F74EFAD012E252FCA46BDD0B926DA8D25BBE41951EC538D1376007A4C68EDAB404D6ABA6693B8534A82AF11BBA9CCB50BAF89F17CE196B220629A8A2DAAE36258128F6BBB1F27920290CECE3D42D169AA4A6F9CDEFC2E5FB7B79A03F82E269F9F4CB9A91960FAEB88F7EEEC13C874DD9031E0E33B47835BE330B40485239AD4692E, 0x89284F49508313E70E414CEE42BC72C64E436458C95DC5E9ABF565645D1982E499845468E19692B7339C4DA1E3C5C1C8B1D38526CAD6272B63659D5A1EAE8AF4BE6755BE680AE5B8B0AC242D102305E6349DB389945C19C25D29057BF83799841158E37B700360A6EECD751DB2F91A3F60B72680FB0060624E93613E0469BF78129F1BB8408975313C0C9BC6E6FC0F630FC51B4011188910F8802DDCA121A1850DFD0A13DD62FFD641F444EE65997B5284FE2F3F4D7F66FA150BBFBF5C998F1A6B16B8E9F1FB85ACC645FE1CD49BAB5E05DB58A3F262378E9610FED2A23F7AA86529834EE191608878827807804A257A5F61BA8041EC2808DF2953E0FDB20A86CB56B7AB185D7C737ACF2A70E92F0E4BEB84734085F96679017A6FB73E808BC677F13C2A92796102E4460572C1B71EAF1B07F4783EC901D1EF3DAA9EEDC435F94363F8F8F2E4B87122715B3FF4F4B7495BC09C368C1287AEF06B3A54CFC31420100B2E5DBF26BC374E8256CD6DC1DDFB8660422D28FF6D30DB4A0787A963A25E5D3B2EE8C55989340365E709BCBA402F8E3FCE6E80E6F7119EFE82751F348DEAE0F7703192F4352CD70E29C21763742009D8F9699533DE76431D4AC7D71415CED7FC29C44A0E9C9909A29772BC35F93A89616B463B2455AC19F9ED75A96E54C2F85BEB1B3AB0D6FB3C605FF29C6BB90E23103D76A8CE93B3A67CAA502026EF9B4ED47A614ADEFFD98A700ADBC46310AE40DF519930DD1A29C73774BE0585DA1570C4A4C8F157C4451063EC38C4B8EF436CFC0F41D5566A70BA509A126941D40595F46AFFBE48BDE91B0B88CDF1E1650F483051087599401A59330DA1BDB1DBCF8FE6A3CF4DEF85243F2626C9CD9D7FD8EA8ACA39EFCC8FFBB450A68B3A1C2C692FB83D0A3E96C158AB2DC94F73764CBCB335B632E6A2DFC357A71AFD49F9E923FABC99145F759A54C9718DC20240, N'uýb/_ðýBv:î ªrÖöbÐuÖu,@a*>ßÐÜ/Zu+oaB.hßrªª£Z|+:zoðoUö~,ß:bbABU ßOÃü:O©_ðöAo¢ÖU:ýA@|ãZbZÜÖO¢+bÖB*vßBä,aC<,Uzî/Übu~Ba~Ã>_h,OÃýboäröß+ðhª~A,B/AÐ,*ýB,ßöÖ@©ÖZü<rzh.U,Cö£,oBý@üO~b>,aãÄå©+î//Cª£oh+Ðv©r£¢/Ä~özß/Ü bÄÜ~:+~UÖä<©@@ß@ðähuîðääÖ|CCö+|<©BAîä~©ýoAî OüðOß.+üZ|.oãîßîv:Z,zýa.>î£*Ohbåa@Ãß£ð @ýªOB©äböÖÜÐÃÖ@aOü>ÃåÜaÜh<_h ', N'v CÖ,Äß                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', N'¢ãÄ~.,+C>>@ãhu/ÖýßbªCÐÄÐÖ@.|ýCZ+bÖbbb.+ÐC/£ßÄoCB©a.îÖZ¢åCüãåýßh,rhÜ+o,Ã|:z>ÃBîa~,zîýÃ,ªÜhOðB|<ÖzZUª|+Ððv ã::Üðßuüv>©îoÃß_aUý<~aü_r,ãZ:r£,¢£äöhýr+ÃhZýB,h|ßA+>ößÐã<ð~@öð>bãZZ>ãå,AbªÜ:Äý:ßvZ>/ßo/ãða:u,©.Ü¢uhßC¢Ðð¢ :*avh>:ßv©/bUÃä:|ß/O¢+Oaã<ã©©¢_~ß>Äbß£äöÖª.Ö _ü:ö©bî>/ÃbOý/©©ßC¢häZÖýÜ¢îü</Aü/ÃZ>,Äa|£B+ß£åãurZü<Üª<vu<oboöaa£BÖzooZbBb<Öîü*îÜÃÖr<|OßraZî|ü.Äb+h_C_bbýå+ÄhÄ*vhvv<Oß_BîöBhä+@', N'99999999-9999-9999-9999-999999999999', 2837981281, 1, -32768, 0, 0, NULL, CAST(0xFFFF059F AS SmallDateTime), CAST(1.0000 AS Decimal(28, 4)), NULL, -3.4E+38, 1, 0.7858, -214748.3648, N'@Zßb£O/ðO¢*Ub*Aß/ <aã<ªöî/vª<ã~u/Äv,ÄÜoªßÃ@~Uü. :ã~:ßÃBAÃåhrîß: bCß*B¢B©OåroüaÃöAöo£vC.Ð¢UÄß¢öÄýuO@hobußÐîZð>ðb©rrOö£ßbðÃbÄäðZAuOrðÜ>|ßüÐ*î*ã>UÃOb¢/ÖÖ .Cª/b +å:åbÖZaZO£.ruzîÄbrãAÃå£ª<.å>©åCÄ£*::<ßÐöÃîåýa__A@.@uuzÃaßZ~ .>ªZ@Ã|ää/UZ:å Üý©~ðåãýU+î< £/©Ou._rZª< ý©obOUÖ üîAhÄ©/|>*î¢ruu.Übbb*h>,Ovðu©ðbCho*Ð.@<|üüÃðÃäCÖ:ÖZCOÄýã.¢ö:Ðuå~Zß>bä<aU~>b,:|Ä hOÖð¢üö.o@ ß~AãÖBB£î+båüÖb_©£ª,ãîªz_:öü ãbå*hu£_© Z*ðßübzßO~.vÜ|h>åýÄZZhh bZO@ã_,ýa zAîB¢uu©Ü,î~zzr£ ©ã+borªÜÃîÜü£r/v:vB~Ü*<bª*Ö.<üä O', N'o¢vhãz ð :ÄhO<zäbCb|z* /ß:OzÄb:Ü/<v£OCvZ:/oªåu|öoCßrC£.ßzß +CAuvýöÃÄr©ÃðãßBårÄ|~åUh~vU©ßb< *Üåo.råªö@ãÐ</ä* _@ª~vÐ<åå¢aÖvî£Ð* hü¢Ã©zB¢bA>©o,å*v_åÐBb,Z_~åä©ªraCBÄ,ÃäãZ<¢£/+r<¢äð£BãªUB|*hB.Uü<ß>_b©<£,Ä~v:,öî*BvýÐöCo@ãªã*ÄÐäU©Oªä£,ö+ZU+U*ßÄª/ßýovu@Ä Aub£ZÃüÐaÜu bÃÄ ª/ÄÐðOAîuîîÐÄü/£î_¢OåÄý|.@ a>v,CZã£ßßü.ãOo/+ÜUAb |/>b@/å:o ,äa,ö@ß/äz£ãöCÜýÐZªÜO>vÃöãåbÖ.Ü*£¢aýoÖ<äüßoÐ                                                                                                                                                  ', N'<,v_Äªã+oå~ :B£Ö©:_zrzBßßüßÖß+ _ýu*>ÜuÃO>v<C.ßZ+ruCÄO,@OZ<ÄÐßB~Ü|A*uÖoü:Ö+ßðãü+aÃ/_~v¢*ªÄOrZ@ü,.ÃÃ|+<b¢bU£öß~~ zBÄb*_ý@ð©Ð@|ö©ößý,Uo,a@¢ß< ªÃ_AhãîOßîAäÃO£ÄÐ_bC|Äoßr OîBO/_b©îUhÄ+ÐA>Cåü@|ýÖZÜbÐ+Öå@Ðãß£ýb¢<<ßAv.~Ao bbªvä©Üroß,*ßÃîAÄ,å~bA.>.<Ä@Ä ÄÖî.ZÃZvåoa/ãZuC©CCUÄOo~vA©Bä+üU>ßb£:,.uÐ/@Ä|¢rhvZß~.<ª_ªzoUaO,>OÜöar~©vÄî>v£/A¢ã_ß|_,ãau_AhUor_bA_ß©Oð©¢|å>ü îOZ@.<*ßößðö', 0x0A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x956D6A27DB013A5550A7A8F539CD26F594B71599BF9A043FE5A86BD29D9E9E9FB86794E6D3AFE86DCFCC72DC1E54AED4050460D891495FFA682A41339668B8B109093DD2394022E4CFA8CAF328282090F996CC993EC50D6F07997EA86DB4D76614C0D31517DC9BC5E27C09E97E6CD14009B139FF9C1E7343FBCECAA0C279761AD163DF68540B791DFB06B7C2BB24F09BC73E9EBC7AD7CAF54D8F194911FA036805EF171A8C69EBFE371C049567B087D7DD2FD884DAB9A0FA99EA1AC4F12F0C00034EBCCC0CD50E5D52A0855ED3348E9C08426BE2217F8D4B4E1D81A24F260C070F039218F4BACA07207A313A344127655B7DBCAFC329DE83C1717EEF546C0E2C937D4ECFA175A84D7764C1A64E52160CF61C46D1695D43E6240E, 0x3CDAB3B46C04A6B7F357C3E6D56E375F6737356E5A71F937253DC2363968AA921F25119CB00D3A49AB5E199E5960FCFB25E47EEDD9E728CBE17C8F2F41707E8BAD30C6AF5C9AAF5AFDEBC2FB585BDEC440C71054EABDB937FD46BB337E0B073BE08EF028994C9E8A3423EFED242C73869ECAEE7A5F29A0F0768FB116DF7BDCF1E4871BC96AB52AF4288620C6CDCC12D1D33595B31D8DDBB6ED00B20A9A88ABB947FE099D10A91BE89FF952D909DA23A97DE043A9E528D457AB64DC6A022059A0DA667ECFC374C02A1AAC14233A02AD12DD088CB94401D31F29B1F1ACCCB1E67EA0B1FEA25C54E50820188F3814B11CA8B7C98CF9949F5BD8935EA51182145D68C6958289030AB6892283992C719A0B789549F40324ECEA0055250EFDAED4860CBB27727E2E92A4AC1303D610062F67F9532C7C391F5944DAAA8233DEFBB8DA4EFD8C704A288C4A02A447EF2115D9FA26BE15AA82574CED61E398D4AB5FC6B15A2888137ABF1CD0C6E17995D76922C4D0870D1FE50D58F6B09F0E678FB89EA3DD9694F88DC68067A245E4A0DEB715F7C0D3032451A7CB4CD09162DAB0B4400D43D5B841D52A370A07A67CA029B718F98916A7BCB57A5135CB4827FC63A5B6ED04D65D09FFD322959CF81DAB2B2A23187868509A0C8458C88382768D033BA661EF8E9C535A0FFAB6F31220BC5DA60AA0240E83FA541CE17F7D94857C5D95926052BBBB9C8DCFBE696E9AA6FA639C6BDC78D568F4B8AB0CD3AD1CD6C5897E585D7FBF6AA1EA6D12544F198CBA75E61CE029A804872D9EA8A6AEE7EE71F9F9E0F041487AA432C9F20AC213A49E1F525EC700F59CE079D130E116C3F3037EA15B56389C782C6B78AD5FB6F9C41AF909875B892770045C00767018988D6ED6EE8B21B84D6682DA315B88473D297F0C15E80D3C9779573157FA38260814D2EA3E88C76EA362ACA3048157CCE7BC1FD6F66302B080323F7534EF60532D5CD21D889D08B4621168B33C693815218A499ADA622FA411216A0C48523AB4015875A7AF3A434AB36B74E4FB4E7416FA2A53A9A6C678CB2D2E0B6632FC6B0FD7B4B2E3F39066E647FFE76FEE4AA9C3AD54121EFF900D3BE0A97A802FDC17B7FF640D469C912269C36C61A6DF09DDE28548B9DEE94C1046A777024916E5B76AE82F6F893C62261B31A95B922E665BD7CC98FBE72338CDB254C79F248ED853DDB4F7BEAF9954A522219DAD40F17D1740, N'¢üäöäüîo ¢©h/Ðý|ýßZChUä¢bªBb:öÜAööhOöAoªÖöÄÄ@uA>¢ß Ðî£:,CUîvåäÃ,ä£O<ªß¢ü©Ã*O@hBß|~.©ªAhZ<ÖbÃCåÄåv äåb|îßO+buZZäühbÄZ:aÜã@åýãÖðãßü<ðrZuÜaÃ~>UöîaråB_bO/.v_A+o|bbU@Zvß+©ÃðZÄ~å@@åªåßö©,ßª@b££väª/¢@UÄ©£Oãu,¢Ö<ã_ÐAhÖZÜB.äÐ©ÐÖÄa/b©vü+vßröÃüÐvÖAhÃ>ð¢CB ©@B+ýað.hrü|buåO<uößªß+hBÃ_bvß,zü*~/våßrAvß@zrüðßz:,OZÐähüZZ:åo*ß£', N'¢/ð~.ÐÜ üäãîÐ¢Uö ah©¢ÄZZª@ÐoC<Ã©ªUZ+,äý/>,åZh,|ã¢raß>ðBîo¢üåa¢u<Ooz> å|<aÄOUßaouüå@î<åO©o+rÖîB.åo,Bübb>Ö£_ßßÖãBo<ÖðhB aZý¢ ü©ß|ðZZb.îrhî+ÖUöb+îzZbvooZÜã,ßü:Ð_Bßüå>:Ü©UvªAÖ bbuªÄa©¢_.Öý@UABuÃoã©/ýrä:_¢ßa_h_/Ö*~+ÐÄä:Z_C@ð@¢obðäð©£baÐv:bß_å¢:B<©>äö/ürh/B*@aý£ö¢v¢ÜCZ~¢<Uß£Ð©>bãbö£rü/ö:>¢î,Ð:boªU*ã *,îU<Oo|.Üªz©üAaÐ£ã©zª©ÃuÐßÖ>h.hu@Ã|Ðü>UßîBäzBb<aoäª@oaÖÐuaÐ+,bv*:boZ<vÜo                                                                                                                                                ', N'.@ß+h© Ö Zßªb@öã>üÖä,ãß>ãaîr_åB/öv~uðääbb£Äý@ãa¢ £Üß.Ä<~Ãz_hÜhr:O,©ßöÄî£C©ßÖCãýýýväåCzauÜý@¢zÄzð/vßCOrÃªÐCÃÐåÄ<ãz_h>v *å+/aöOZ ,+î ãAäßÜ~Uoaªv*b@©zÜ|ß£BððÖÐOÐ/:ÜZ+ý,¢ß/Ð*ðao*vBBü/>ü|ß|UuðBCb~ãßÃu î*©åääArî£ð|©£¢uzð<r<ßÖoÃÄ £Übr<CörÖZ|£B_ª©ªz*/</*_îrAãB~@Oh_+/ß/::Ä/åöÖv,©ähoä*väu.@ZvBBCoÖ+>_ooãoãîÐA|.ß¢ß+ýö/©ãåÃoAZor+ª ÐO+Üã>Ãzaa/_ß©ýÐ£:ÄBOÄB@¢äah_ý£@CÄßu.äüåz¢/£, å>A|>Ð£>haBãhý<_Öa+ð.BãÜzÜ<ãß_Z/hZü@Bý>îäª|ßC~Ðý,Öå.Z<îÜ£vUÄvßÄªÐ©Äãaü:Ö@<bß_A£Ðb>:b£äo£+', N'513b59fa-3c54-4f35-b2cf-28fb0730230f', -3460911513)
GO
INSERT [dbo].[AllTypes] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint], [c25_int], [c26_smallint], [c27_tinyint], [c28_bit], [c29_datetime], [c30_smalldatetime], [c31_decimal(28,4)], [c32_numeric(28,4)], [c33_real], [c34_float], [c35_money], [c36_smallmoney], [c37_varchar(512)], [c38_char(512)], [c39_text], [c40_binary(512)], [c41_varbinary(512)], [c42_image], [c43_nvarchar(512)], [c44_nchar(512)], [c45_ntext], [c46_uniqueidentifier], [c47_bigint]) VALUES (118, 1930788716, -3272, 226, 0, CAST(0xFFFF2E4600000000 AS DateTime), CAST(0x901A0001 AS SmallDateTime), CAST(0.8105 AS Decimal(28, 4)), CAST(0.1054 AS Numeric(28, 4)), 1, 1, 0.7736, 0.6683, N'@b:ßB¢aÐãýî~öräo@aÐ_ö uvüUuuCäÃuarðß/o*©Boü/r£Ã,£>v*ð.ðOßOãä,ß¢üZ©~ÐvbÐ*©b/Ü+ßb _ß|ªª*z~ZÖýU <Zz_ah@büC~Öî©äýhßaC@z|ua+ö+ý/@b>arÜhU+©|U~ÃýäÃ©/ªhöühßoÐb@¢Ohb@ª@vî<Bäî:*_vÐäUoÃZð,Z~B+rAbbÄÐ<.ObB:~ßO*ÖU>¢~_/äã+öîu©uA/åÃ:bßrÄäCb©ÖÜ|îB|£bB<Ü£~Ou*ß|r>ãbAÃBÐzöAÜÖ::ÜBbßbß£AoðöCAåä~äðZð~ßÃÖäß*vÄazÐzrßbO_ÐÖ|<©hb~bã:+Oä:_åü.ZðU:+ o¢ußãBß,zO_*Bh_ÃZÖ@ß ã/vÜzã©åª>ZOo@@ãßrÖ£üäÃîrÜßäª£>ö|ýzOöA@vC>ÄÃUoöªAã<_Öo*üÖ+~_aßZüý*ªor åÜ©>_<oý©AßrãÜoör.¢*.~:ýU uÐÃî|ß,Ãö', N'U¢åßÖÃ_Äßü@ßbor@äîzz©UrU.zÜ<Aßhß:bößÐ@©åîZ:*Ãö£Ð*v_ß¢,rý.¢,:ðb©ýãÃ*ýr.Ü U..,ßã|:©ACÖv Obäü+Chrüßª<@aª©_ö<r_uýßO|bðßîüîÄ>>zCuA©rA/ªÜ  |äý<OvbßübbÜßAr.bãÃÖA>z|zðßý>Ü+AäU@bß.ß£¢Ä_uA:u£ý¢+ÖB|Zb|/oU:bZOÃAî|>hª£bbCzüb@äÄOaä,¢öZö<>*U_O|.*_a_£hãaÐÃA/üB<ðz_Zb.ÜbBªªA£v,@å|åª@@zbAoã©ðîãý+a/ðýî>a|<îðbCrÖ Ooåb<ö.a>vî|ChrÜ¢£¢ß:@ýbåAbª+ýðüB ÐÖüîîbaî>¢~// Äo/:~öä©Oßr:îß£>*ð<ß./ßÐÖ|ß|A*</~Ðîr|:,h:b~oÃ:ouvýZ£ü£îv+ÄÄAhz¢ß ÖäOå:öå_   ä£Az,~Zbbã<öß£ßäÐ*ah:Öãð~ý ßA,B                                                               ', N'~.Ä©.£_a|Ü>Zî*U¢bor råCßBÄ,U>a£Ðã¢UUBO Ä:Cåü*£©¢bOöUîzCÃZî|ÃUZ@|CÖ:ZCa@îß<äbah<:AÖOzb,ß@@_örª£<o~zã~O,>b£b//:b©o/C£<Cr>ÄðöÜ|b ZOaÃ<ÃZåZ£UC©ýü,b:åÜÖ>ýýb+ßC£U¢öýz', 0xB5C8FB9CB74BAF3928B09D68C58B7E08F1E8F8084D9763B86032804546328C7FEEDC285828B95079C9784F6862FE1430ADA56D6A3F71A31E65433C85CB6AF2F5231E7AE96226DF37977F3FD447FB55621D5097A0C5213F7D390AF3E57DCBAD5E85594444842BCD86C535D3C031CED769EED9677BD3523002DEFDAF5833F9B9CCD1E04E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x10DEF28210DA8F4E7F4B6A3389F7A463328B33294166867B7553CB7B07EE5180E9B1DDFB75F8C277A1B45FB14424A90215689E541AC475AA57760DBD0E144690F9EA49D719A9ED3AC9BC878D06D53750A9C9659E50FD65253C33A3FEEB04688D6DCEB85ADAD1E96C7B648A5E3CE8A3823FBC1345AEA840FC84249BE605EE4EC453FA1F381DDD75D8DFF923EB7207E8538F21BF2FF122DEC48EBBD6B63602668C16C60A41C86B6562463B65B585558A7C3B4756E42E1FD3301B5AA96106BFA1DD9297D4ABFCA68A23BC5DE9B5BC293F3931597BEEAB825DF7F3D9266EC1035B87998822EE80DE7F94BD3228D1351D73F21B7030AD, 0x311039DDB822801C62B802621C340751B852D9E63179598CC1D566335251D2AD43E65711B4A2255D13A0D06FCED3013FEAC9B7DED45D82B8B7AD1BE3BC4CC910E5551F36DCF59D152C7CD290A8E9BDEDD426488999F4D9E5639F5A068642A0C6D6C08979B4CB63F52CA1B1578AF10FCDF02E0E96034076F17B39D23D9A968EE9DC0BBAE75F443909C3535CF842815A728F8D1658330AC2964998FD7AF8255A9612C77B7F37276EABF405D2B0E37EAEF9DE5FAD0D7F36B5D148239EC746BE109DF8C6E57A06DB3A671F6A642E3712B2CBE9039C99784D16DC11A9361389A66435F435B81D9933F3022445EE15D1879A3671D3DD43227724AAAF08695CA527DE78062E3A015A9432B5109974335F010A8A0E00A1B6C921137D100D6D90CA965DFD66760FA34D98DBDDA128338903F14BAEFDDE4EA58528AFE41ABDF14D26A1EA793B76CCE9F2673D7524C415A0EE8A791EC1BF92EB48B8783EC72A888FA78EB6FF3DB94D8D2562BC96A1D881C1120EF69043D38C670EFE3183FE8D21C7DEADCE950D1563343CECF85E02FC4A7037B62BB833F74CD4024EF03E87CA8E9740F4B7F309EBB3FDABC25456DA2D6512B4C14C47616994E760FA93BE2524AC715D601D0D4556664B032E0D71A3F5FAD4E9DE8AC67E4735D760D0, N'r©U©Z+bOã./:ã_r££¢~*¢zAãåvßßýr ©Öä<ÄCö C@ßb ÜB¢£å åßÖ¢hî¢,ßA~vr¢bÖÄýb>_Ãz:ãßUÃbÜ¢hî£ @ðhÄ~bÄhZ@U¢/va,¢ª,ßO@zß*©ð a,/*_Z|ã|Z<.ß|að~Oß/b,a_@äoa¢ *ðo+CîBåbhÃOß*Cüü¢>+rOä<Z¢,îãÃh|uUð|v:/CãÃB£Ðå|£._å@>UhOb©b<>Ob,ahü~.|Ä>O,@>buÐ.bÐ<ZßªbüBÐ@~+üª£¢Ã£~îüuãã+*BÐ¢Bßö©,ÖÄÜª,Ba<©bhhrÜäå,~h>B>¢/.vüu<¢Ã£Ä|ãöäBv>î>|ßÄUozäÖÄUßozUb OChÜýb+</£ððaZ ¢ªªöãÐOC£+Ðî:ã_vªå@ðh+h>>/uß>+öÐ/ðo|Ãzuªýa<,vhî¢î+ A<*Ov:C/.@+ªv/a<', N'ü|Z£ððCåÐu+@~ðCbîUbÐîC~äßB¢.uöv£+öðßA,|/b+Äåbåð/<u_Ö,ßßäý/ããZÄ©ßüÄo£ýza@Ã£©_,ÃßðoOða.>v|hbßª_Äh*Ãðî*ÐZ:OrabÐhv:z£ð©BÜ£+<:~>î>,üü>zã:ß:OåÐÖß,.@/å¢@ü¢Ab|b|/åoÜ|©ßbCUß.ý>OÐß+AãübðoªZý/*ð:ÖÜî+|ABobý*zZª<¢aÜîU©_r~+üýOZÃ+ÄOÜb¢bh¢ÄÃröä¢Ð¢|h£ü©:ÃÜr~ ýªbðå,ª£C@@ã_äoO_<~*ö¢ /A¢ÄÄv>ýäbÐoa©Ö |Uý¢CAZBC@vhz¢U+*vªåU©î,¢@©ßßÄh@ßhABüau.Ö@ªrý+©Uß+ßÖbäbå*~ý~*>Z,+Ð o~h, br                                                                                                                                                             ', N'bÄ,Uã.ý/å+<ðbhÖ,a¢bvUrßvA>££ü<ÄãÐ*ß£rÖÐð>ä>ýU.B:,az.oå<äåCr Ü <.©£rÐ COvåCÖ,ÃßA¢.rvöoZ©ãäüÖb_,oo+B ªr+CZßb@bCBobB~ð|b@U,ü*ä**CÐ>öªaª>/.bbüCCÜ¢ÐÖßÃýö<ªbãäð¢ä>ÖðÄ AB@B||©Oå<C,C¢ ¢C|£CÜa*@oÖ|ß__zA.ßÐ@r©Uh Ü~Cü:ÐzzU,rvª_aÖaðßýå¢ Obý åß.: @ßý/U_Äav>zoCÜßUÐÜrÐ.h:ovöî:..<ßöåÖß|~@:ußÐ,zObzObobuÄî,*ßoZ£vªãa<uUaaÃhUÐ>¢,bãBåªv*v/ªuü*/Ð.ußürî+ãößZO+aß<rZaZýb.Aýv~|åav©|üÐað_.>Ãahb ', N'00000000-0000-0000-0000-000000000000', -781959276, 0, -22493, 85, 0, CAST(0x001B7230009B508C AS DateTime), CAST(0x97AA0304 AS SmallDateTime), NULL, NULL, 1, 1.79E+308, 0.7877, -214748.3648, N'>ªüö ÄîZ ðÖaª .r,rh~<Oåbr@Ä<|öã| ßã|ß,<bb£üårðöZrrî~.B, ÄîÐßý.Ð,BO©ß<ä.ýÄb@ßraäv~/Z*AvhU.@ãå£©b£ð~Üavoß*Üîå*~|CÄA<u|h,*ãb.+öa@*baäî¢uäý/¢ö|h,ß©ã.CäO/@@_uöüäÜã v|ß Ä©<>o<ßðOßu:UÐ__î©oª>*+,vîh©ß¢z||:üoð¢ÃÄ£~ Äa>ÄCuz.~,uã+zBuv hh|@£åÜÜ+¢vü:öîa£,ÜOA/>rÄo ¢ªäã./+@:Ür+ªö*ä©oªövö*©Ä:bzÃ£*ß<_oO@ßä_b./u:AoU©~ßbBub©UrCö*bãß.,åbÜo åZbää>hrÃzß¢CßzÃU<<ö ©îOA~¢ßbhB<>UöÖA+rOCý/£_/ÄýCÄ¢~Zuau+îãvä o_r*Cåå_©åvzã uv¢~å¢Ã*>@OZuÄ,h@özÜßî/rzßC|bÐzý,©ýCvU+U£ßAÃoã©o', N'+ ýb@zß/Zb@CzÜuOå_Ävåv|bhaäÐA:oö.@+üý*oÃZßözÄ@@v<ýüh/î£BÖðî>/b.ãî~ÄÜ,UO_+Aüb U*¢<ªvb>A>>äZrb/£Ur.C.hßÐäUß.Ö,ðªÜ@|Zaãß**åbrðCACBÄßÖ¢rãußÖÐavbvB~v>Ã>h¢,,bÜ@bªßÖrÃzAªoü|©*<vBßBvªüª£ª ªüb,+|/zhuöýß~ÖU>/zöAh©+Z~ü>ðBýohåb*örÜ,h+uU Cý@@+:O*©z:zÄCßªð,AUßãð>,Zz£îß©ð.bo~:ý_£ßß<~ª                                                                                                                                                                                                                                                  ', N'BýÜuüOa@ZbaCBo@/ä¢@å£öroöã,/ý* å*Au©C~ÃÖ,@å>/ä/<v*ªöBo~hÜ¢ZCÜ~_ðÐhÜböäzZðÖ>hbÃÄb,ðo¢Ö,ßO/bå<Z|ýßýöÜzb+_.Aza ©:bbðrÄã/îO* ª£åüßý*', 0x559DBCBED51C962B92997A1755A3891DC96EBA3B792D06CB413384CE129EB80B3E0C452A18DE3C942719C085900D561FF8A2B266E23B842896F17CA197C719F4E16ED8485E5F05EB3126135F6C813A34DD65D570EB512902881D9426629AFD5F00CBA422340DC1999CC734BC2724BB15B748C432F1A9088F45D5BF41CADF889728B35FA0DC18FFCFA43BD3241C6CDA64617F6F19D6CB6D57C314DC5E4D7FCFBD3E9D9374C51A389E49F48EB6D5E373D8FB5BDF4B6F6FC05D4607DDC73BA082246C16E67ED9669E4746D0D0E23CB782DFA10363F1A0844DCFDC352DBD3D7163A8726949BEFDF4FF94BD98049E9EDE208E85FD25373C9084E7C817A1A339E10AD56D276FD36EC3E2AD04CF34087FAF30FE159F373F4B2C6CE2E561F6E5525C5BDB8D2F31766F4D20C21B78336C5B7C6719E6A38D99A9CA8941BB8DED0CCCFC5AA874587A507DB98EC87F7424D2F9008669F9DDFEAECEC132C2A5F0BBE15F13F61E1E8A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x01179B2D14C51A34A6B748BB068412EEFDABD9B326B7AB8CFDAC686B7E06B46E088467E241D19A08A7FD1CEEA800DBDA00072072B144DC4A6C0F2F675DAEB6A002D9B2811D30AD2B11D10B289BBCE3FDD18E6A77E541BDC3A81D7632A232ABF8477BEBCE4D59BDD05AF461DF38B3AEAF2B3196CF433FBAC11CEFD900BA7A89DF2612E11FD114AF77D09A1CF0DFDD8AF56EC606709BDCB508C12AB25E80BC16DF6B82B925D18FDD16821FFEA922CAE13F64E491F3741843495DD95EA76250F713843D855D236424DFE8F0ED7CDD0BE5F64873FA9C2B226B523F6FC8F73036B33227EA25E444841BFFC0B10A842BC66C52F4675EEF555AE861D2321EB49C2CAEB23CBB54F3E600B2C457FBDC7918E72778037503C9D7C4DC, 0xC31211656762930358476F71786BF3B59A975A7E6E49EB0BA6B02629E5DA77DE87F122EEA05EF0984876C09FB7068A0A10143C2C824E937A2706BFB63B6A1D7DCF91E9874904143CA7C136F8884C539F251C18D19D4B5C395EA8C79A9E3A5CDE5842CF261C03C10BFF0084C0179BF1DAB21F901F514CDF8434B028A03D7A9D6C65589F467C2D83225B0DD29DC69B22C3B6ECE77FAA3D8C0C624BF16CDA20CD8462175BBFFBAB5E859C6EC3447A42BD998D65EA51931EC227CB92E3313B17473B3F4D3AAE4062C70B8E62E33B7A4892208D58DE75367CF1445533F368C72C4A842688042C070E592B9DDEC3313B86AD8300C2A4E339D105C35CF6590C6E5E4361185E15F24365187EFFB2D757B8BF08CE866F670588664B548240CF11B54CBC3F9A6119DD71BB409BA925E386FAAD0A9CEE8B86FEF63ED8B112C06F029507C9B2F698BC57A62B5CCA2FCC5B6382C55AD536332229C6BD485C8968CAB14C3D05A25B318F62F0B3F5C32FBBCF2AE3752E4D6699CC62E49FEC385060CD3E60AB7EF2C7B8075135F8E5823D5FFA0AEE1D7913397D4BB270A3BDBB4457128FE5B662843CDC632A6EDC176DB44A2485A5E14932E7BA04E35FCC8123FB4B0CDEE6559C86FD76CE12BA4EA45D65DDFE267E3816630DDFA82AB17E24705A3F2E22CF38875FAD9D872F1337779815A77E82CE5BA5C335A9D106AC71D47E525EB77A20828E2C569E79E0B0E750D5670F150A00A1A1FF9A6BED256780B23BC909DCB480FC789319512C2FE2C4134E59FB9E9C5CCA7EB0BCB7E0B59468C4D5EC3D17A60A9B556B9781F1AE75721DD6579FCC6CE215DEFE8B2CF8C91CC3FEB18D5743A4AC6C44BDA63305DBD9CF3A4A9A0A5DF59B57F2D65F181BDDA38C4ED3823F211E2E7829EA5B0FC6AE100325BCF1AE2F1265091535646D459351661A19E4315899AD1C1B21E0729A8C9143C55BF35FEBF55D3C6E7929ECBAC1339599F4F4ACCADFAA8B0ED5930D31F26E89A420A7EAA0F27A25BCA8C3DF6FC16259EE4BD9A597E479E6B0675016624F0B7B0AA048991949F5A679CFEF221BCB1C4C73391FE618C8F1BFA6C13938A164C36D9D47D4CF79C83FA556332CC8F457CAE44B04A32830246241AE88F2580FBC05150C8284D4F74DD2AAF97A90E59C29CB4FF754ED9DC09A3D78E59220F1D5E795992E16BB71D2F6EDFE31F82EB5947CA484BDA361BACE675571450CEE642CE1D412E4F6B7866D597C0067EF6BC86C87E369ED9B343286DACAC6C14A2CC60788D14F231BD19EC51E1663266053DFFC8C05BD29857690ADA28C0A2BF1C5232CB6F9DE1D1BA450B645A3CF84D00C2687EBC934446E9C821240A2818FC672D359F3366F, N'Ã:£O>©/ãAob aäzAOOî++BªãA,bî©@>åBZ,:¢,Ozu/ÄB.ýö.¢ýbÃ<©:~äßoCª@o@©oUÐ:ä,Üaªoð,@.A/£vÃ:ß,/ßßªßubÄÃZr/UÖuöÜ~ZÃå>_r ,h©öU:bäÜßî£vª_öå<¢OBOvuÄ>COC@ðZ¢v,B,Ü/ßh|<özz@ýÐÐýAîaUuä/uÖ*åÐUå¢Aýr:_CAßA@Ã ð.üC/+@å+ªaOUü_©<vßub©v@ßZOåýBüÐ_@>ßÜu/*Ðýv.üAr~|**ÜÃ:vUh: or¢îv£Z¢Ä:ÄîUß:>b.ã_Öbª ¢ÖOAbUvÃ åZoBBýÜÃ,<Cã:BüuörßZî~b~zv@:v|:rA|*_z.ü/bä+ª<<o£ußCb/,.zr|ßß: .ãaðßåÐ/ð_U,ubr<CãBäU:/.Ü£ob Ð¢hüÖ/_~|©vðÜå|ßAo+CÐ:öÐ~bü,ªhoÐÃCrðB.<ª©î_Oßö:|äªÐ<', N'ªv©.,©<hý/>_u©Ã£Ä¢ÃÜ/ãðÜî¢ª,@ý.ÃüÖ>ðvÃAßC@îC©ZÐÜåuîCßa>Ü*å>ÖbBªýaß|<oÜ+a~å£ððßC¢îß>zBZåöUÐ~+rZÖAîðBäÄU¢Cãå_î+|ã@Üåãu~zåÐðªu/OýßzhªAýÐUî©r,:uÖý~Ãåbªz/@:~A*öBaOðãbuÜÖ_äß@üOArã©üðA__C,>å¢o/ü+Zß£a:¢O_uãhAvb*U>UÐ++ab<£ß:_*h~Bî/Uo_aÐu</ÄO,>äzo¢hîÃ~ýZÐo+£o¢ObvAhßãOÄ<@@åözåBoöh+Ða©.z:ö/+£Bbäv£ð**b<ýî£,OÄbýãbrÃaU:b~¢ã+åÐ*ã./A©£üÐßî©,ß+vuª.üªZ/,bªß| Ä@©~U|ßýÐ©+ å ,ß*ã£Ä ,uüðhb.a,/åb¢aZuBov|Z>ðA£ÄöAªÄÖoäazZÄ©B>,ü*U<UU C|UÃ,hAîzðv/B,.Ã©Ðu¢Äa>/bÖOzhÃ|.<¢îA:bÜÐü.ýß,©,ý|©|ÖA¢¢Cbßª¢öÐÜª+äö<<+u                              ', N'<£ZaÄA.*OÐ<Cß,ãaßü¢:hÜu£+/_Äð@r/üß_ý B*ßrZÜaZ<|:B:©.ªhãÄ.££Z<Ã.£_boaãäÃÃªãvãau*åäBª<ãßãßüã|©:bz>äC<uz|¢uÖýßÖåýÄrzÖ.,bößÐu*bazAu@@ÜýåÖh~z:,Ääýbðüh+*Ä©ð.îzÐaü>ªðÐÖZuCýß/OOBðÃUöÖo.båö©@äª*b~aCªßä:üBÄãßüzðO_|ýÄ©*üä_/Ðýbu.¢ÖðU.b|Zbuvãbz~B|a<ýZª£,ubvb,h<îåZubbb>hüZð<,>ð_ö oü~UhaC_a+Ü>îöÖ+üÜB@b>> AaÃoýÄCÐCbü> ¢hrü@bh+<+ýÐA_o:/v©<UuCzö_ZUb+ãüUb ¢å__/*ü_£Ä.öOüvÃÜzAb.aîaüÜåzC@a>ýr@~åÐuCv©<ª@~BZß©b£rüðªü@|£<©/CÃðöý/©ßbBîßÐ@Z>,©ª@/:+ZAZðª*o|£ªU+ðª¢CãCäa|zOObÃAOýåhý£ £ðÄ@b:î@vO>o+îÖ|Ö.|:ßýäBãð ü~Ö:UÄªö', NULL, -1553590601)
GO
SET IDENTITY_INSERT [dbo].[AllTypes] OFF
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (1, 55996664, 1, 1, 0, CAST(0x000EBB4B00B82504 AS DateTime), CAST(0x531002CA AS SmallDateTime), CAST(0.5180 AS Decimal(28, 4)), CAST(0.0696 AS Numeric(28, 4)), 1, 0, 0.9408, 0.7218, N'ÖöAh/+o*Öüå/ð~r_h¢Ðß@bz£ß¢åZOB@v.<|O.Z©*vãÖÃrOÖ|ö,ßåý:îÃ£,*ß>åo£:ªa/Aahäö,_Ã ª/ªäz*ßz¢Zü|å_aðää+©CU~o _ðUöð~îu*AöÐöO_+ ß båo:CðB_Oar+ä/_Ü._+ÄÃb*@@bOî©ãzÜ.UC/+:haßbÐro£BZ..hßüB£ý_¢öbÐOä Ä/öª B,ö.*å¢ h+äýå>vÄ>ßzªCîÖ@bZ£r,>ÐÃ<üz', N',¢uA£,vbbã©ª¢r¢¢auO£/*bu/ö¢¢O>ðrU@COB~:@</a/ü~ÖzBb<Öh*Ðb_ýªÄÜ¢î~î<*BB/_/Ö©Oý ¢UãO _CAObîßb                                                                                                                                                                                                                                                                                                                                                                                                                                      ', N'üÖÐã_/_>U£r£@Aý:OÐÄðÐÖ@:BÜ_Ð.:zAß/:ýð*:îBÖ~@CåªýOªÄb', 0xDCABDFADCFB9A8EB4C32A122FCB2BE23A7ECD5FB7C0EAC7BD82A4E198C4D0F3E1DE22408A6646E62ED44FEDE1AE43047618C70ADBD0C5FCDFF63D4A56B8F5FFE2363041A8EB67C427E720E3810CD61F3FA06B800DD618011825609438FC9F75DE500BBB7E015B9AB0F2D2F4BFD27BD3101E1AB64D75E20C1E2F39837AD38B3B57BB1530F11AA12E44D0DF0B03235135A99D742AE1D928686DFFAD4ED7C82FDD7797ACF4CD3AD1F56CEC617CA6E6F8FADDF3D9DD5F60597E92ACD2F17D62568CA0F1936B765C686ECB7EBDF577ABC176F6B270D3FE428E074E3E622067D0880A85E4CBA5539D74719B6B11E0B25406E6EB5BFABAF1829E6E638C1D47EA4806FAE6A36F82D01C23694DFF388330AD54FA277B450BD5DD1903566D31C7702C87436426FA0EF47416CF38917CF24A0B3DC63723107F02FB15199A6C3C72DA5BF91167E52F09A34605B36475C3345016B94B3F7B904D1C18406901D074883793E4ECA86B9A64EC2412E12D6D0A8D37D0C9700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x1436ECBAC054FA4B607D2D17D8BC090E69BE48C445F0B58AF2FAF1DC3312116F0D536507620FC664AC0261C400FAFD139FC4144D4E76EA238161C7C5631D184E6CBE0A845701AC59F8E418428FF089F7FDDE3D6EFEC32096694286004801018EEA135842F079BC9D17BA546A5DA79490D7CFC884E0A950A89D741A147AAB11F7E28A587B98470783229F57436FB539C2ADF62978387CAD40C3B0A57B5FA7236BA95D88D24F18F790C8446241520C38E73A5767838299BE66DD18B8E8A18B237B7BEB9A122D667395FE99B0F4196CEDB677BD4107409FE9109E22F5365F0FEE3C21E7C5667226B9D4E4D184E8E8CA4C712A0270E34A1C3BDC028A730B703C35EFAB74D232, 0x4450036C236E1A0027D3D5840C5D9E0AF105ACE964E7B2AE63A79C953D74F719CAA3BE1FE0DEF8CCC10163A035EC30D750A182CD85BD215C9E55087BD284C3B2DCBCB9689F7E2A130CDF27638412787777C4449CF129940C8162818AD57CFA3C3DB0C47932C738D1766FC1A596BDD78BDC91040E4027C0B228ADE63DFD9F3D8FE5EA26D44EFF44B08B73258268EE76C38AF6AD4478ECFC15EF115185E0FBD4D73231C0AC97023DDD4C5482CD023E49393622B207F2F917F9ED10E53CADBFCF909E4D50362ECA2C88B8D0F724692F13B1C7174EBD49CDE5381AC6BE871D002F8C84F22EB4EE130B6CF62A4E2101F28FBDFD337496701147D168171C670BA56AB8A06B9F77015FC3B40CE2C71F7FC33727360089E98B991B73AB5C4BD6F6A36051BF9581965318BC9E70BF8A8E4A2852A5DFF4300A1B812C074F2CCCA413ECBD6882755FE941A1D41E44EB78CC0F8D28820AA6F6027355363E697A46264B188A8402210CD5C869633E2011C62F0860F7C10349996DF5BBF42C3F217FC75AADD32B61F4CAED8153BAA142B8E1618E063509828423017E1D8E462DDF95A6E99CE4733E9ACE13960A40B08FF82A3DD9939E38EB7644D58AD1AD436683C0A2BD13B8A6D36E22F33822727844727286F3506C99415DBB72570EE86DED8AAD124A9EF37B4084696B70AAFFC903CC91175E2750151626616058454EC585B506AE75602DA67FF7456EE60129975DF26E8B7DD10EC63A97FB233D9223FA36A4E5BAA35154A39EEB9867E1E12E15FDCA0266D6C348B4A74073DD640968ECD44A38421C6EF30C9DCBEC9138A7E45868E6267390BC24725C301362DD763E9482AC9396A8ECF98ED6F5C80BD7B67B005B1A747EE3F55B1726C5E5EB5B902E278C570F8C144EAF7BED989C9AF4189BA6B51307C301C0B18C507B6FE3070D3345C7A17F7FA6EFEB0D6AF8914A58C0230D2A3F3548896B25CBA5823C98DECC74DF6556D353991CFFC627F958082F66338F5862B9C7D8EABC5B7BB3D924B2532F9E84B1E501ECCF730D406F2090131C9C3E4EAC407C13AD077A9A77D7E642DA13D4CABA847D81, N'åO Z uo©ãCA~oBr~ßÐ:obÐ@©vu_Öîå|ãîßUðOaßb©ub*o,*bA¢üð¢©Ãh©©aB©,Öö_r©+äZ.ßî,<ä£O@åå<Ðvð£uUBBv>ýÐ+Z:hßöÐüuÖuoAurß><ohrr©<Aîý/vÖaîßoar.>+|oîUýbÜ¢ýAZªÜ*ä@O¢üCîüZÄ:Ð *ära,ýC~üzö©/vZý,ýoU_ö¢ã~:,:ªärÜUÐ.Ößaåª©Öåuuö@ä¢üîÐz>Ü.u*/öª©ýCBO/Äã@r+B|~ßb,ª£ö_ß£ü<<Ööa@/~öýýÜÜhb>ßaCÖ@¢Öðü*ãÖßabã*h¢ÃÃÖãýÜßo|~aZv|hh@Äå:ãÐßü£ÃÃßððo/¢>+ßbOCýÄ:O*üb|r©å@C:ÃßüäÜOzBau¢.~£Ürzb*ªîÐ+_<aªh<Cb.büöÃ,üvýßåÄU|ö+,ßa*ßo>_ö..+Ö~', N'åOu*ªÄbß*ß+ßaAhý_£r*<ÜvU_/ýZü~>.£Zßb ~Ö©ÄrýýßÄ@ðZ/ãC,ßCBðýßOÐßßÜzüoÐrb£üå@¢Zßv/ãîba@Ð,aßoÄh*Ü~öð+u©ã|ÜÄrßåuårãz£_ýv©ßzAðö*|>öZrz|Ãî|ªªvC+ßÐäohª .<ßÜzZhbOÖåuuuU>Ãðz>ðÖböÄozý|OÖßÐUB:<.ýZ|ã+äÄbîo_UouãC.£/åboýh@aýB<üCÜAZöaöB+Ou£Uo/ A_ö¢ã/Aª ßz. +å¢|ðAÜuåZßOzZv£/ðãÄrý:hähÃÖ.ühÄ@ÜýzªbzC©BoUh:@oÜöåå:ÃC,/<Äß aßîhC£_                                                                                                                                                                                                           ', N'b+¢ÄbBßra.¢_ý<bUUß£ªåC*>ß©zUCAßüäßå@vÖ£A|u<ZOÜa ãåäãî©böaCî,Ü~büª£©O~_ý>oªb£¢b a£ý,uOübOÖö@oãvvüo>Ã_BãÐzî+©Z¢. öÜåÐßräß£~>.£aã£å*b>C+ßðßUBzßZÜ| ª~+ö_:ÜZÃAüª.BZbÄÜö|ðu|ýüð_B_ý*ßðbA/:Ã*åZr.*ãz,oßUB@ãý.,A+ýªðÃÖÄ©o©*bãªA.bvÄßrh©_,vzîãüö££,bÄÖüª:Ä©©¢ABü¢bBÖÄÃ~ßuzb@./ßãrÐÃ.:@z©C©vB_<A>zz©ãÐruöb|ã,©/raîß<î*©@BÖ/£b/<ZÖZ|uBÜöCý>Ð*åÃða©<UOÄýho¢ß|Bz_O@|ZbCBuBUüÄ>,ªz£.ß.ý|rz~Üh.~zräß/ ußªªßî:,auý>Ð|zoovå|ªzvÃzüÃ¢ÜbBîbb+@Aßa@@Orb~Z.ävob~ðäÄî@îZãrßªüCb/£OßC U*A/COCA|ã+ªý@ýO+<ýh_OzÄ|uü>ãÖÃ<bÄ |ß', N'c58b7a8e-e97a-497f-b398-16b9c55339a3', 9223372036854775807)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (2, 0, -15870, 96, 0, CAST(0x0003F9990007BB4C AS DateTime), CAST(0xC12804DA AS SmallDateTime), CAST(100000000000000000000000.0000 AS Decimal(28, 4)), CAST(0.7966 AS Numeric(28, 4)), 0, 1.79E+308, 0.0000, 0.2276, N'ßoå|Zr.+BÃ£*vððv~v*.~<ý©bðv@>.åCrb<u|/Ã.©åOao¢@hCbZ¢ärªzou<*ðîäÃß@hr/ÄÃh~öÐÃzü>:,C,/hvUa:ob*ü <ÖA<r', N'zÄ.+oAî:îaOÐAöß@/|_vhÖZ£*Ov<ü©ßÜäüB.ýbýu __oä¢ð+©Uªð©+ _/ÜAüÜ/>UO.åbä,@+~zðªuCÜÐUåßÄbåB<¢_ýuba:îbzü:Öå>vÄu*+/Ð zýZÐå¢ÜoZz,/ .z |ãA|îh ý+,_ýã_ÐbîrÃuÖv|vvhÃh*/Oä.îÜ@,o.o©z+>BÜ Ö|*@hÐB|zZÖZÜ:O¢ðuÃ~ðÖu£ÐÜ@_/åbO<ßð|aðACz*<u£å£Ã>©:Z,r,a*ÃÜ*r_C.u~ßü_ª¢ýO                                                                                                                                                                                                                                                                         ', N'~ZýaähãbÖ/ÜÜZ.ðuzhÃðÜubabb©håb:CãðßÄ*Ãðu+<*ý/ß@_¢,zä<£>*Uüöß:ÃOÄü£ö+ªräªu:_zäb|v_C@>Öª¢O/:<+ÖCÜ©z£AÜãoö/@Ã£ABO>O.©v O©ö+AÜöhÄ<äBÃåýrAÜ/,OBü', 0x6AC5787019371F267E1058D3BCFEE7DBB9BD60BA985FF45CC90C8F606E3BF321574010411EF97E08D0A324944CADF407C96B36F4C66BCE0BD01CA70DA8BEB8431D367B7CEEA5BCC03F57EAF53B5F0F1B1788960304FE5AEC7205700251716011EBE0761531781823AE75B56F81D9D0710C8BF51F27B43E1EDC8F0AE934B96FCEF7D80A5AE8FAEA9F6F72558F49EB6B9835FFF6C57B40E936A25839A26D2FEFF406E677A8CE768811A155AFB55FAFD5F02371B434C3A952B6EED3B790C14731408360886273C2C9BE77E423269034D7F283487FFC7BBA315D94C1BAFBBEF7505A236F31FF27727D60A7F5BDDE852C26B9FBC40D78C835C4C82E2BCDB207CE007F93C9022103D8CB10CB1E5586FD52D7689A0100F9EAD891EEAA68D0FBA4CA59D9F43D4BBC2A05B623F8FCADAADF3ECBDC53651706CE0795BB3713769A08CF6C00C47C91C0071B3E954BDD00ED2AE70E6B9DF3A83EB3520BEDA78F84168E1B1A298FADE563AD0BD5382682BBF006A7904F040AFC14272D4D7270A418779627062FC2D75E7D01ABBE921E6F1830971AE7FFFE3412831E0601616073F208F25DA1FE7B8B2E2E49134E594C6AF6B7151CDA56BD187961158210BCD6FC1D8EB8B6A0C1CD19B50BEBB8B6EBE6B837B40F494C43989C4BD9E340E9F97B72584DF5BFA196CA34E9FC67CF6A05628D00000000000000000000000000000000000000000000, 0x4A5CAC8CAFD9F51C6AC6DD8D30BB90795F69F52717A1E9DB5F50DCC931467755C58CAE1EC5CC9D1BC9852B03575CCCAB3EF1A5F8975344A872D12C5FFD2CEA234F87C8A30D71B392CCDA5D9276E6840384318A3FA07EBD714705ABF4A03D1E9D9A07B3CF93289DCC3D122CBDF5B2328C4C28DBCBA1AA83D1C9565B08C5BFF28EBBC0F86E32B4705B94BE028E51007B95D21FA8776253FBEF84E2053CCD95067E1F9E0235B9C35997B88037E3A8F480C9DBC535A6167A2C68C509EA50AF338DFEB7836EB3FD46DC0EC510BFE11B18468F613C61085F6067A5719A6FB0D909E884F2382B2486CCCB94E926E006BB4A4CACC25AEE73D2859F571CC94163D62B35BC273BEFE3EC21089570CC1F388060E9274DC2EE7E1A75B26D99D408BD8A67BDBDF123DE805B69BF, 0x5902056566D7BBDF1A15133DB6A1B288814A18194B0A080F61475C8269CCE4034D2DC172AD0732FD4DDD7051A9803B812CF7D91FA787064EF9F5031F7A39754E3110EF88E03FDB79171BCB6D9AB665E10BDA5572F2C55BC6277378B7031282136821209890B2A1EC1B5F078BBB98B443902214A0E3035B6CB529616CC624750599B8057896CC515938685692BED00A8EBE3527E1FEE13065C5B4E367503426F7E901F203923BACC3D0BA687AACC9ADE51ED2AE90FC9307B888A0B2E2E8E90803425FA8BCDD07FB838863114379B5B8FC06FE497D8695FA55FA3A7BF288CADAE7B264374D20F10716D72A079982C33ED2E7B6DBEAA08B7CAD6452C2A38C09FABE882991157D6BDC14F733A65C8D61D336FBA80AD2EFF04727E78AE8CD2F6389CD304911593229557CD9C6F26DE42020037F8BA8E4FE27CF97E26A2DF3820EE594A9D82B43507904D2528EF828FEDA42C769E54DA4BBA5CF087A7976C7FC62F9CBE15EC30BF4DCB20586D691702EA699082765899CC041D9030923C8D6033DD5F0942D479F1637D28D32471DE4135ED9D4E06D9F96D95D0A9F85BF01D113DC024900A1DB015FF9F2F093FC697823F4F0AB49F4F6969D3F163722A71A563501795645D4E47283D875E67BAF02DDF3927B90CF56881FE56CACC08AA3DEB7DE9BBB928212334F0F7D27707F101BEE3C3944902C8986DE785A71D92724E7DFF9BD07DFF3705AE05E2C81522E179FD551BE83515F4E8B5515DC1928A15927EB964877C1083BFACBDE6431FF0834B061BA9B8869A09580AA32B2C91757313E050496BBE6A0DDCD15C3B772FB1C8B4CE02CB86D06D1BD4A00C8CC8E5572E374AC252CFB7279C9C0DDCE72A6E823848EA765E9EB9FC43833474BBB1ED44E77A3E043C5D5F090DA6762F790375E1761DD433EE7F088F7D4E8EDF9B326BEABEC8E57CFC6A55DAE9D178B8188A83300D430E9DDDB9567871AE86EDCE8F6DCB3A9B70A02, N'aoÄ>oröbaO¢ã>ðB CÜÄîU|¢ðzað£O¢ü£©Äa¢ü~ßUr.@©bÄ:+<uBÃðãÖ:@ßrhZzä+rüoßî<*_ü:ÄßAüã~|_oö@ZÐßö|BO+©üå_h:C_£<ýå|Ä<hð.|öª~ÐoðäðU*ã*,Ooz<ãZî>Ðbîbobö|vÃah_uÜbuÐ¢Z_årßCªÃ..ýZ£@bu|ÃÃýãî*ü£ßräö+uUC©¢üäãbð|+_ov.+¢<ýr,_ÐÜ+Oî|ýðÖÖAOÐOüåB+ÐªÖ.:+rÄU/~+öOãÃ+îUÜövBaß¢>ü@u,Ð+¢<ßßzzýýr _ +ßä*Aßb¢z.:>ÐªãäuOaAãa ÃAîb~vßÖö_©/ã¢¢</ BbuAZbÄ<CÖA >>+<OzhÐ<+@£>übOaUªÃ~ÄÐöB©Öß*ChAÐ¢AOb*:z*ÃãÐ_~@za_:åo ÖßÖ.+@|z,+U<îåðåB£Üz*îäa.@h/ßß£Uå,åU.©ýöÐAZ<<b©¢+C/ßCäýäðÖýä+C>|Äý~@aÃ:.©ã|zª,@*ä>bÃ,ãhA,Az©©C|¢@ÐÜ<:o¢Ã£aoZZ©U_u¢aäbßOää|Cý+ßÖ_vößä¢båÄå', N'+©äÐÐÜÜ:bCÄ|Ä|î¢îA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', N'äv¢a*å,îoÐzýÃÜßraß,u~ Ã.|+bzÄ/ý©UboBbã,ã+äZzßÄåöÖÄªB£.Ä@|r:ýßbrÐÖ¢Ð¢ªÄhO/_ãÐb,ªã>C|aßåaß*¢_ä+.AZ©__OýU*b|/£C~ý<Oª¢<Ã@Oðä¢îZüovßA>_b>ã.äUÖ@/,uîU*o*vÖð Ü>¢Ã|bü,åz', N'99999999-9999-9999-9999-999999999999', -3311196357)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (3, -384189910, 0, 0, 1, CAST(0x0026421700125688 AS DateTime), CAST(0x901A0001 AS SmallDateTime), CAST(0.0000 AS Decimal(28, 4)), CAST(0.0170 AS Numeric(28, 4)), 0, 1, 0.8639, 0.8536, N'+£hÖªZr.oabýÃ,ÜÖBbã,b~bZ~_.v+CO ýü~*ªÜA.:@£ßöb.ßýßÖCa,uÜ~äObåöAAãÖýÐß.h a.ö@öv*>C¢v|+bz~ÐßÜÐªü_@<ªöObÃý~©/B~/Ããz@©öU©:©Ü/,ýa¢,Äbå/b zo//£Ãî', N'ÐoAü<uðAzãaöOÐ©ÃýövÄbÄa£>a*U@ªý|ÖßÃUöAoOßA~ªA,h.ÖÐ©Ð£rðAh+::åÃ>Ãã:O+b.ÖöÜBðAC.¢Cäð<ÜöUð_å©C~~ÃZB@åÖ~rÖ+*ýÄö|vîîÄÖ*~örÐÖ~@¢>+ZO+bßß>U©AîC|hßuz*výÖ,ßuB*åÜCob~Uýbß*åÜ:,©bÄ/<,bö_ZO*@¢å*hý/ðÐC>ý ä|Büä/~ßªB*Bß¢üßã~ååuÐ+o:uå @©__ÐCªßýü©ä~@î__U**<Cå@¢CChOö>£_vzð_ß+©AhãåðazÃßãªrå_ä,ÜAð¢ý<¢b:A  rýýÐå©z Zaªªß.z* ZÖý,ðo@äÐ©|>ß.îÃü<ããä uu_CÜ. ß~oZÄov*ðZß<åhýÖß<~Äðßö:>:ü_Öãß+B_ðB,ubU¢*bOa+ýOU:Ä¢OÄ,ý¢ÄÜvOÐ~b<:, uå*~.*b~ÜÖ/h:ßZZCOr+hð:Ã/ßbåÜüÄ|ý©ö*Chrã¢ßråv£ß,/ZöZUaOZ.©hªZrßßbåhÜãðOýü+Ö Ä~/ßý©:<a. ý<©ö/ýª|/a               ', N',>A|>Bü åUä|ßu*ªªÖ ß£|oZOýÐa+ßzz ÜbZüCö,bB/Ð¢Bhu¢ýöÃÃ|Oß*Ð,@*ööbö_UbOb£>ßðÜ|C/©bä@,,ä¢¢Ö~uöuÐ.bBh+ßbäbb| :åÖß¢Äðbz©ß||rzð<:öh/Ü,å©.Ð¢~rÜ<ßb.Ðäüü>ah.Öu_~O<o,ªB/å©>åCrýZ<Bå Ð>ß~b>>:CZ*¢£hã|o/ßo,,OÐUýãÖ@Ð©zäåßB+îBåC£zª äuý+.CbZÐö  b*b©Ðð+¢bÜÜ ÖOv*ðbÖB|.+Öã,B¢ªAhð<Ö |au+ÄöüvB:©ªUãÄ*©rUÖ£ü ß*ãÐaa£ããýäÄ ÃÃAh~hZzOßäÜî©:ÐUa©~Ã.Aårüv/ªß¢+h+£ýoBo>Ãa£_ýüC OBªüOC£Z©oð¢åãÃ*O<¢_a<|hãoî©Ü<åUãðv>u£OaÄ+zaO@¢ä Z+> ~zÃ_:CAuý@OvÃßö|OC@Z¢ß', 0x52D83B71DE1A8924A0A53016A9D84A04B876A6B837CFF9607F418547717F4B2E861797A6957B3FDEAA990F97167DA8856132A2834827D482DFDAF19C9542B2215A018F9240A46E3C37C80E9EBF614A0299FFE53F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xE65E4315C7BB89A24967E6EE3D15ED1544BDC3654C801835C27D90EF03955C7244921A314E2BDDB3B3957EA7B7D124351483BB287C777B66450D52492A9A9EB40B74AAABFABCC718DF0FB2B701717EF1595BDA80D933F5CC16B4EB41D9948818F6CA9B4226783B58BBA3486CC5C465D48E60EFCFBF1EDAD77EDE9445D1863E4B8799C036D53CCBE02081C436EA8907514F17B279A4B859D7EFC4C448E4F5873564FDE52B032EFE52950EAF3D5AA4ECF5D642F6BAD4C5A7CE40E946117782FC2AFA8ED1EDA3DB4E20185FE396091B7D4BD8CE71A1FECD619E5517EB1AE7ECDA12118443CBD2FE51FBF4D6A174E111C4256BFB39A9115B2C2C2D32988CF033392C84D18484D7B179D97C76AC282CECBD4452C6AEECB33101B658169D9F66C50AC19D74EF108C404DBA825F2C9AAE0400407553392A844C7953D0CE2CC114D973B76BEB8AB7FCADB71279F46A5305660753155C2A128BE03D50FB9C3FBE138BA5A9EC752FC3794944C89C27B18FE2264D69C6D8ABB7AE602B8BAE3ABC606DF8FEED4FC066903744DACC186276642FAD6DD54FD5F83BE0EEFA8C4AA4153F8DE35AA329C34021BFBD3282FEDE9E4BEAC65B00CCE6109700C20C60C6DA46922E9A3F3407D23B6B6D4C1591, 0x3C014FAEA183481472A6D3C3A366B7DF5BE5779F53639F6A44178BF09380D17FF48A860A101738C24A19289961442FD4B48DF02F1A0322D962E56A8AF75881F2D453CF19E0ACCE43ADB455393B050800E8B73B058FA164F067ADA82BADAECBF19835C40D7515F407BEAD8265ADE89D5DDD6AA1401C7B6332EFDEB13304A396FEE963A10540FA8BD2C23447E21FFE427F0F4B4E420C8AD51CD2911E9664C1031A16837C4A46981CE2DFCF7DE8348013F09B3124B85553F25E8E8532AEDCF46D01302CCB9B81F839762E6B633C0CECE7517E2DFA329D4AC5C3911DBBC0666D05EA617CB808B5786EA3F8AD8AE9EFB551A19EE030AFF93A63E5670709633D7810C16578DA9034DF9C05BE573AEFC0DBD3DBCC1A22853C56F02618D2A1AE6F0A66809DC88377DAC16CBE442BF0A20074248B342D9723558A840F88B477623EED96B3F1B952F7575C010AAD644111664E26A4AD157A4172422B124474EF264A0A8056943CB046212C34D72C8D75F14972A9398DD2B428735540AE8E3FB3E26DDABFA2E3EA7C299DDF8281E1A214E5CD39C9D1CBB598785657E23FFB02B8E279516A51CED30D5EF57F9CAE4F3347D1405BE15475E117B742474C8C083D2D9A27A0079037C216FA2C6BDC4B19E928230F11FFA021636C9839B20F87868055B8520187AF2BB7997D45E7280A04CB9E581E297DF73E8D79C3336F5685B38F73AC1523F9176279F75777815A393B62936E13B7685D035E7AC487C37BBC6114CAB5737CF4E0D187F5A531257FBC324088D0DBE771FB2716A8B7A9358F9EFD3AF663B7A5C5BF6EB29C8CC2C32BDEDEBD91473AABE079A2CE8E5DD33D379CF756A8F72E1C058D7AC962294BE53963EAC9D8ECA3476451597CC0E81668EB307B00946B1A34AFC1B804CD7148B72EBD952A7209644AF8AFF2569DB25B1D7612DE31AD4B50CD49B61A16349E7AF209A24E0352ECF5E1CB3007E578C496FD669A8EBB92160AE26CC8E1BCEF4E165A35FF4DFB6358CA891CFC657C436B5485201DB09910BE5FF2976B978A0B38F27D1AADAF79779B990ED0049E96B08D9E00735C9CD19D7D49769F5A63F7C0407EE30AE86296BBDB0E8483A2C80B20C9410ACD9617AF9C20DF9D6339D91C37A14D9086BA8CC82A0844974D174EFBB43E56D619582A2A29CE47E908C5338202F14CE1553884653D78E0C4517F6185D2E4E825E30203DF772366B773A2C064D5C2955CCA6CA67BB9F099A07765D8A96DC11724DC0D9FFFEE6D6A31D1CDF29BB87BEF8FE905BA653D6D6BF2696267114ABD4AB28A9B88C722966D5D0174A9ECFEFDE7FC7548C06806B1E66FA1AD958C0559E7148340101DF3286D53975D64C9C37FF36B7B6B9B01FCE1ABD9B519257500E157A88D9468BEEDCA084DDB6CD0A84D1DAB22B92A109ABD, N'<|/r>:ã.ÖbCBAÃuvC+£b>.:ãÄÖaÄr>äÜßC@aAaZ~ðb|îBuu|vÜ£Zå UbBª<Ö/CrUr*ZðOuUBbbh:ä_Ð<@::/ä~å:ä:î.@_hßäzÃÖðz+b__rãrßO|äýuý©Ü,¢:ãbÄzß~@î ~|ãý|ub,åz+Avbv*_@zohBîbZBU£ÐÄöÃðär¢Äå/aîvåbU/|ü/üvbrÖO>£ÜÃ:ü/©O+ÃC,å££©bzUårßãä@ZrÖ:å<oÃÃüðOýA<ªÄÄ_zOBß ªýå@zZãöãöÃuîÐ<uöÄO©Ä>BZÖv>CZ_*O./ãî~£+,hý b*vÃýU *:ðCªCîªÖAßÐ©Z~>ß<å~£z Ü_ÐoAö>~@äöråvZßÐaüå ª. b:ã:uC©ÃACh~åöä©v:ZäÄBÄU@£h|©/aoC,C~Cb*.rvoÖCÄðßoz¢ä', N'¢öÖ~ð|üBAªCü:>ãv|uCå£:ööhßÄ*.*ßhã|Üoã@CÜ/Cu_£hv/öåÖ,Ö:îOaß:Cä¢Ã©ßühåÄ©/AB /@u,zý|v,@ª.,,£ªoAbaðß/|Ð©a+Ðv:Äz.a,ö¢>:|~uob,~ÐuB@.üB.¢B£££ýO_hbåCü+v£@@ª:*~v<*bvo¢ÐAÖra,Zzüä:+ABBrZ¢+ö:ýå*£bAãoz|ÐAð,ACîöýý*_©hbz>oZb:îrOÖo.|ö*:h©ZÐ*CÃbb,©+üB/ur|Ö@©åUCßãÖ£åÄ*ý¢@uå+,ÐrßBr©Ü@ubzðrýrãÜU.Oð>+br+b                                                                                                                                                                                                                                   ', N':å|äßã_Ä~©~*zª© ö>*ÜßÐü:O<ußÖåãªBÖÜrÐb.o©Cr~ßãªîÄÄUåÃîüÄîB©zªÄüÃãüU|ã:ªåBrCÃ_,¢*å CA£üðrßbz¢,B_öh>Öã~bbUC+Ü<ÜZo@< /v~öbäbbÖÖoü<ý£O_b¢ÜÖãvåðZO/.@ðÜob©Z*r/åß@ZzbhåÜãªÐBåÃ|ªýÃaÜÃª£Uã+ß. +ß*ªÖýU_üßÜ.,ªßÜßî<@bZ£O©rråb:Ã :::Ü,>hÃ bAåU+Zýß<A<*îvBooö_ß*>@C:ööhA+ ÖÜOaUÜözîrb|/uý_r+¢U_~îü|@ÜÜ.*äßBÄÐ|ÄUã,u¢£~ZðBå<,ÖÜ,hÜOäu:Ðýoå|*v<Ð>.ãö_Uaðö Ã¢/åzaªB,üð_Ä>ßB.bÖBUa:*,b|ßuoCäu__ßzBäåüvå@ßöÄ o:ãöoãb', N'99999999-9999-9999-9999-999999999999', -373556134)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (4, -1, -18327, 20, 1, CAST(0x0000901A0000012C AS DateTime), CAST(0xB2C50093 AS SmallDateTime), CAST(0.8687 AS Decimal(28, 4)), CAST(0.9782 AS Numeric(28, 4)), 1, 0, 0.2299, 0.7795, N'Ã,:ä¢Uªª/o,©©Ä¢_+o©@ÖzÄB_U>Aåuhbå©,ðÄC*@Ä~/ü~:väãßä<Cß.,©*z,Ö|ÐrA ÜazÃßvßhßoäÖ@Bý¢rb*', N'bUav*ßüÜhäuöU©v_hýª©üaU@ðßr.h*Ãä+*ÄÖz/::ã+©z¢ßv/ÄbbbÖýabý< _ª|£ßO+|îö>UÄ_hß~*öåC_ÜÃbZ¢B+*£ÖßBðäZÐåhvU+<uß*@ªO.Äb~rýßå~>_ZO|ZÖ/¢ªZ@ä<ß¢åoZ<uöC<rðöÃuåðA.h+~übßO:,Ðî £|UUö ß@.+_/ßý¢*brÐÃUCÄBu©ã*Caßurh|+Ã:v|B>ýÜãoObrã,OýuB@ãoaZ<<.,_ U£.U©~öO~ÐCövb<ÜoZª¢uübA@_:üb¢Bªu>î@£öoßUß£*,îîðßÃ hÜîBv~+ÄhhüBö£@ÄÖoöhrCß,. Ä£¢¢@o,zöß .£övuAÃZÐÃÄåroÖä|CAý@©ðåÐB>ªßÃ£ÄÄ+ @aåýbCCÃ£ýÖ/<ÜZãrîßßÐÄb@C_B<AbýOßßUã©Cüå,ýZåü©aã@ä/ßå|ªßü*ä@A£©~a~ª©@:oböö.Ö/o|:@vöoªrzUu:å v/ãÖzÃå,b*zbÄ+äðoã*ßß,aÜÃ>ýßZ*:b|ßß>B£/ÖZo,Oöî/u +B+BB              ', N'/bbßÃbCÄåU>î|*ß>,ª@¢aßßßbÖ<îUbý<vöbA~¢brbÃZÄ,_©ý|ªü<~ðäªUZÐðªu:ßUa¢ªZÜðÜ|z|z_C,@B> £C>î*b<ÜZåCªãU<:+ðbÃÜ©rîv*|bhîuãCåßÄÖCv_ßa£å:ÄÐbb£a~Aß_ýîª¢a@/¢,©v<ö:ÜÄv£@îÜAz:|ª>ý<å¢ß *ßßh<va++UuOußªzöÖö@åÜöªob,a:h@b:o~£ü|Ü,>_,ÜBv ßî©_CÃZ/~äOý.åýðuÐOÄbrö +ý_a*+o@åÐ|CÜª,*OÐaßÜ|*>>ªObð_Zªö ohhvbuÃ©CÃzåo¢ ß_ Oo_ß¢b>ÖOCª /öo//Uuî£ßBC:©r¢:_ÄBaü/ßß*>BÜ A~bÜU*ÐÄOB~¢©+b/*üãåZ¢,> <@*£bÖhhzÜ@A©/ãåÖ+¢>+ZbÖ*ý_Uåb,O|:Öß+bC :>*ª@,©_aý_vÖýöO<ªzbuåUv, :u©a@ÃUZAåö/uö ý', 0x2BC6A458B7BBC52CBFFBD6613AB9B1FA2074449FFA3654DAE9F69C195D463450A4AE1EBDC4BEB7672EABE8063224E150CD588E5657DE1AF472C96EC11FACCF79C685BC8B9AF33562BCDD714E4D4DA8C5144B4B05B8DDF9C6932A4BFA50F64782DC6F3FAC6755B6D9222B9A796CCBA62421A9ADD360CAC1E88CF6F770A83A11C695EE72DE0DFC5DBE9472E28C437F59C88326D9A749732112AE571F705D4630E81AD3E37E59C816254BEE3FEDE734A40D9D2FEC81606A7D22CD5F30B6DCED604E41FA726F9CDB6EBB10B35B5A34332A79B212D32D59AE87AF56C1B1F99860495E8DF0ABEDC23470C1C03171AD0E22ED9934B603CA1932F59372C219DA2A7522B06AFDCD44873DB77EA1126C273DDAA034D417C4E25C7E445AFB187AFF1B95974B0FC1421054A911F7FF852807C5CD569821E40612B04053EBB873486FC3B7620B7A21187C9790DF2A06CDE2D7563D942DC2E2DE368E849ACE6D5657E160A13447221C8CA4B4DA009105DB0BE35D7B957BDE1BACE1D92C7CF5864A0E4038FECA65999BB539B1EF78E8E14C31B279B670F2C0DC0245F4526EF5A0961D6ACBC0590611A64AC2C65CC9EEA2C4008CFBCA7CCFD91C7F5BFB8570462CC0991AD20E1C20F32AA1D36CAD2C641214A33052E2F900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x00, 0x90AF40FD0B8B36049605C3AF1C93A7DF99D128A9632CF01B49E7E23FF34AC6C3FF847D6DE0F51E169C671726A063F70F89734828AD71E964BF24B424A8F6104C3F00AF98163AFEA3B2110CFB14C97AE6EFD3B67F019D158E9A19ADBC41FA6DA657CBE6A0B35EF94E75A4759B65EE4FF5A9CE34D53F904AA2EB21FEFD8C4262B8A465A449E3DA3290DA670A5C277929ACC9B81272C59866C68044B59260FCC23242BDF7FF490512CE9BA3FBD785ED7A71F75133D430EFF20BFFDEC99F25A030DDA5D81A6A822A63C3A543D7229D8E4093C9439A0EC8ED0252CAEBFF6A3C72A9FA731D32ADD30FEECDEE702EEC18D06E709E35D5E1062115B8D5C8A0962AF886329ADCAF805C92BFBA55CD2058BE1639F97D8ECC069DC7F4520779D80A6F58A2F6E9FB523C21ED140B751B8C3901BDF9BF8EA7199B2C7F95D2E75C78E2BAB54BFD2A2A6EC3C3FCD78F7AC090823ABB514A80187BC73E06C969667F55C4753151C0D08F0ED64E35FB91CF89216BEE12982B0B2D62A13983BE2360055D44A71319486FD0B2AAAD7AFC4A1DEAF8B5E55E7A53E729B848CFAF874DD1EA7648D8B7EABC6FD8FB1E60ED7E913017844F8A093E018A095C7E5AD179BF4865D9C203B37165FF3C450C625BF2F9AA2617B82B38C2C8AC75BECE5A6B629D5F3CD6FB14BC8E7CA51E4F4EC3319F2E1762D433BAC19410A210168EF5A20A94D9A7AD2685F6E5ED989A120CE873047AD68FB7F7972EE39EA7C55803A600870214BB741C8378A8207DE69B20AE88272E0C9BB865EB12FCABC40F7FBF9DE24797120FF72DFEE8F65DE7977AB193C3EF1F9E2AF60A48211701BEC95874F9E8829A9E030D9E90F92F24A55A7E53984A170120602173EC3D4FF1F8F66E358F8264FE15E01390B5508EA5FAD265EEA2C36974B2575399C70EAE61B31BA6998AFA9422F6803EB837864BCFD17B7919D8614E348DFA82382ECB360631B2DD99AAF51AFF3E42F72285B13C2C0B84C84B94948852CD710C90785BF42B4A378685A9B124DC617ADB96692BAEDBBD562CAA02EA729C298ACC38E88A86E24DCCD84D2AB7825A5FEBEA19B9F2E8A1C330D2212E4A285FC5E95C1EE5EBF3D7F3F9489C5360B006D3D24A160058E336A22A75B7B765B303A478, N'üßðaoãbaðZrrb<ãhoB £roÄ¢b@Ä_¢B|:hãîCÐoß*_>bÐ:|vv*<vãªb', N'Czö¢C>,ßÄÖbu~Ä,aZýBÄCüo@v:roãÐãbðBý.roubBuAÄ<AÃ¢bv_¢üOÃoh/+©ZUýüîaZ<ÄýßCÖbªåö/AuÖ|B|ruCÖ.ãvÜß_Öäubß<Öuðb<.åî|ßrÄ,oðÄh/ÜÃî_bäÄA rZÖ£åª|:_£aBÜ*rOª¢|+£¢bÄßvh|uhb+/B©¢ßhzBãÃ,bh a*Ã*:uo©Ã~UAä¢<ýU,ª¢£Ã©~*<z:@üUý|<UÜääÃßuÜ,b+ÜZÃªä/a:>Ã ©CaýîÃhÐ*v:++ÃC,ÄÜ.åZ~r|O¢ã£@U@bßðCÖäÃî@¢©ÐC îzðÖAZÃbßAbð/ßZä>rBÖ,~/~+_aäîU¢äBUvzðî<ößýýîbã.å¢©h<¢+ð å*,>ZßO|.uãO_üð~Äoð.ª_@@ChUuBhuÄ ö/|@ý©ýß.>ßýU ©Ð|Ö</@Ä ßä,h~ö<vaCäª@*bÐ>ðªrbÄ_åß|                                                                                                    ', N',ÐZßuCÖ£~@.ãðußå,Ðo,<Aü@ð@ZC @ A<öåvãb+.ª.hü@Övßå£>b.Bb*ÜÖåÄß£ br++ý*|b *ÐÜbîýýOv<UÃaUª+å@<bO©ªöbbÜh+v<z~oÐ©zý:ÜÖÄ: .£böÜaCßbýoÃhãýãuäßýaðBä@öbîbÄz<uv_/ýß+*o£uªaA@<ý¢|îî: <|r/ßürÖ+©©<åZ_ã,</ß*Ã<ã<.|î/o,|Öðbåß+_,öîãö |¢r/Üo.:¢ýÜb*ü.,zzuvBÐüU©baöbä:ã_@ðÜ+:©ýýCCövß/.Cý£~¢©uã©üÜ', N'62b77423-ae37-4fdf-bfc8-646b1ab8dfd4', -628437411)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (5, 1140434383, 0, 6, 0, CAST(0x0016C41F0049D9DC AS DateTime), CAST(0x545E04BF AS SmallDateTime), CAST(0.6171 AS Decimal(28, 4)), CAST(-100000000000000000000000.0000 AS Numeric(28, 4)), 0, -1.79E+308, 0.2235, 0.2926, N'.Ãöß>Ä*, vª+>üßö,+Uu£ýåB|£*_©Ä£_ö@ªoÃ.ßvv¢¢ªar b.ðã>bå:', N'ãvä*ßÐ¢¢b/ü*£Uü~üöa+ZB* vhÖåh<bbr+äoðð:îaýöÜ+ÐÖÃäðBð:b>Öî@B©üÖ<~+îoZ,ß£b>C*Zh~ü_+bau,oªhäBv,ßßðv@+.:|<ZbvA.*Ãuªz|_zîÖvOrza.Z|UuÃOBÜÖO>üåÜöö*Ðv:£>öãZ>a@vrrh|ba>AßÄoª/ähb|.hßzß<b|Üßª.ðrO~@|ü*.ßÖ/ð_aBãr£ßÜÐbåÄö+ÄBaZuå¢å@ýAðZoÄo~++,Z:öÄ~oß£rhzå|OUv._@_z£>CßZ*¢b~<> _BvhZÃbbü©,Ãh*Bî/ÐbäãB¢üãåZßO|¢£ß_aBýCCã:: üC/©ðUÐ¢ã/£>::Zz..vî,AÐåª aî ¢r,+Ü©ä.u+_:ößrob|£ÄßÄ/O|ðð+|bªUßZrUUC©ß.îObÄ::U_Ä_Ö+r@îÖußäÐ>ãhÖz¢©~üððå                                                                                                          ', N'î@,:C:Ãßä@ãä¢Üz<AzßbðbbZ.ßß£~Üªå@îª,+Ö©,A©ýªð/aîZ<î¢bß+ä<Cbz©bUbðü*ÐoîBv£.avb/*üßî*BåýßÐ_ÖðvÄ+Äý/îÃüBvÖ,+¢ý£ÜCßAÖB<ÜÃhrðo¢r,ýã|vÃAßoÐ,ä_hüÄUahö.üå>¢åö', 0xFAF4F635C3DA1419C88997225150F519D7F747ED68760003D79285875B4C78AC240E3F9AD7C5AA446042B270000339DAFA419E5138471883F3F35D30548DBE7B11EBFE42115A41114D028D26C49002D459AB8C1AAE2674DDF5BBA7E3677AEFD383375E1405F6C9A0FF8C0435BAF2BE63F089D6A900A4CCEA76204D55B35DAAD313B9A28D31EDCF63E1EC1A21213F2203FC43000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xA345D2DF6A749EE4A973ECA1E231220050313103BA73C71489AAC837FE49586F6BCB2FCDE7C223BD4FEBB96EFF793FF01C21B2CB12EF24307DBE56BFAB66E55F1B7D36160155198E0D73B3CEB959150F6BD81BDC978D5D7BA7FF4F296B6312E9055A53814329EFC70824BD9E3C557624A84754D24B09C88D20BB6E0106F022AA61CAC95F0693CC, 0x53D372CFBE3E52892A80240E3F9DFB92C56188BAEDC01802133D728B171D157A12EAF73555BE617C1C78DB6FFE9B212CCECC41324487FA93BB70BB81CCC7710D6AA9FB55A6C53D06FF0B9E75E5A803771B45BC4ADCE3368BEF647AE402E0AF5406CD05549FCC86088F3A3338E985AD126C4466870A263187737066424A58031F5C496F17A3AFD84FBFB3BBA1B0FEA26AB66878BE79284ADF9C7DE12F6643BE373713DB9F15956EBD6C17C7566B8FD775CDFB8BE2DF44A533FE8F7A26CEA8E87BF5846A9C22025420F9BB526260F4740CA56C616AB8DC57F26EA8A1851B48EFC32E4B60E7253B53CBA66AE824F242D30A1B6D8061477EC3192C772D7A61CE05B1CC8F3414938CE76A1996C34DF333002BD5966AADC88D7CB08847BBAD0ED96AD7643758620EBE768E861548B1BA7525F87701A5CA6458E93E13848C4CD1395C402CEBE9BCDB9D1D1620DB26B244CBF51322C2350C339F730C4E194F8A322ABD4CB90885CE8C681DDAE38EAA893136FA478E78290F034F0C8C78DC6EC24D93E4F51EDAF93B462687B9A55B28A5F5E9DA171E07FBB900AE4869FCF856AFF95B8C50A9B46B573DBE0168F16F69A82766968E0257A346972BF56F918F3F4DD0D7C04ACED7FC417E82D95F0593C89044A0429661C7ACA1B746B97DBFFBC6AE7FB49719AF1FD94F69550F7F7D43400463642BF14CA8EB082A1E92881E7E8283BC2BE051FBAEE124C6F32C0CB82D247406B51A5ACFD561D6C88FEE908D5130EBD38CC35163EE08B483072A597CDF50FDFA1E82696427B3E7CA09896CC0509675C241392B6AD21017AC65D7C8AA075AE93FF0966FCEC786ABD8DB875A659CF43270B4973AA62493270D6ABCFE4FEB3CC3AE9F2DCFB927A6FABA8D538E4BB6B21070A457F66F20431A5D6E61640B875BEC9FC3ACC56F2579490D9C7F18D105DC57B7AC8EAB9346538E5C12724BC542EF333166EE870AEDA14A2B0EE8D3A02A4957920AAD5FF9B059586F1D685CB3, N'ªvÐ/ÃîÜ<¢ä>åÐvÄo~B@Cîa+Ðö,Üîu:>o|aªÖ/ãÜªzðªZåªz£oªÄ~oßv~åý>Zhävo*  Ð©üÐÐzðßü,bã', N'hÖ¢ÐîaÖÖaä/ <</©:ð|Z~üräüvuaZrßoorýC¢/: |ü©                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', N'.ã:+zöhZb>o_ÖÖ¢ÜÐ:ßAvOv< Aa<uÄªzB||/Ü¢üU©äCÄã~ä©ß_ã>äbAU|übvð©b îä/rrraC>|+,b|£ÖO*©©åB/b@ äß|Äzaßßßüh£:ª_ÄazÃ¢Oa zB~ý,:ß.,©ä r_ÜU+~vÖ©ª@åbCobC*îhä:vªÐa.*a_Ð', N'00000000-0000-0000-0000-000000000000', -9223372036854775808)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (6, -746807457, -28201, 7, 0, CAST(0x0024B0120006813C AS DateTime), CAST(0x674904A0 AS SmallDateTime), CAST(0.2794 AS Decimal(28, 4)), CAST(100000000000000000000000.0000 AS Numeric(28, 4)), 0, 1, 0.7357, 0.1683, N'OîÐCä_ZÜÜýäbAåuªß|bAbhbzUÄräßªîb|üäa>@ãA.h>ZäUýî>åðÄC>vAã/åo .ýoBß>barBZÐaªö£Ü/ýÄz*ðÃOöbÃßob£©Äao ObÖðåzÜ£ýCî +býå:abb<îã/+rAA¢bz~ßzª+Uß/bhArßo+/BbÜuÃöbävuz_ÃvÐAðßz_b<¢¢£~að/ÃAZaÖðü', N'ª£Ä: oöUÖÜ,aZaäã+¢:h|Cöh.|OA@ð*ÜOCr£ßªh:Ã.ãu_/.a.O+z>ÄU>Ã~AÖüðÄß/ªãOßraÜ<ý:ovÄªýoo¢*|bv:äÃüU|,>ÜÃAßð~UurO~ß@UBuüübªßz+U,*+zCUÜrb>Ã:UðÃ,îö.OüuÖuÜ:ýv@ßÃ< Ü.|uðCü,,ÐA|¢übv£Ããårvo~o_£U>©Zßuh<>COüã:Ü~>Ð£o>öýåCä~C>výb,:ÄîÐ:u <>_o:Äý/.Ã£ä>,oz>ßoö¢AüUhh~+Ðääb> ©ý.ã..äoÃßªC|ýz..öZZÄ:_Za C¢Ã_ãª+OÄoå£+Öb< o£a|~bz:îÖrªu/CßBZU:hüaÖ+Zo@Ö~@ruh,£aÖ@|+bðão|<ÄÜßv<ãAOO¢vrzîßÄ Uý,Bb:ß Ö©bbAo~ßß/Ððzb*OöraÐ|u£~+~ªoO,© ýðÄoüCh<©,@<bÜAO£rhä                                                                                            ', N'Ü_A<Ã:_.¢.Ü.ð+ ruãb_bOÄo@~|.@üUßåîooh<.ÃðUÖBÄ£ã', 0xC01802A7D03030B7458D8ED80E2CBFD0825C32BEB62F3E1DDD09F69E9171A2E4B33A7A25A2726C15982C41BE6B344A54CC53184AC9477891DAE4CAC7399226D4EBA925D3B2992D10EF1C2589ED80B2A8BEA2D23D58581A6CC1E84BBEA7A5DC06066CD3C10F77A13226075AAD21EEA35A32210896BFE87B928EB811CA4D6F69493F1F8380ACF09847009F1650FE6D4AD345F18B859D45461DF141335765D7E4B79E106E026B22AD4289C0951FD12A94216D3E855CE3E3ACF9D8668F6BBC41E129BB5FB2EDFF4868224448FCDCB0264BC6AD12E9275288D3BA6474290492418547DF6C647278A62225D662179BE6D049B21AC9BEAA58BAD7338BF7898A1E638F02C2B5FD43C2D94E06F0C350EF7038D3932A77EAC983DBEF249531E6801D970773D314D831D305EF407BB7BA946AE7C25323F55FA678C57FE7C5D9AE91F2CDE958BCDD1C5B5FA2C02587A94ECB215AB9AD6E935C273760FA0D95F16BFA575E4EADCE61D88DCB67F381353A1ECF77B4C56B1F01225F71C2205BE20FC66E36C6CD295BA0FCBF822CE207A0DAF1FD412B95E02B00DA563CEF3C0C407DAABBA0844B6F6CF574D6B805E9F31E1BBE96D02319B779E5420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x77ED6B64EF7E058126661B8E82904CB6BF282517E7372030A53C1D63F342BA421583F5080871C886E472F8B4A2074D93CD00B9BD1C1E0440CC3BBEB361A18DE3ABD979FE9B43AE4D609E32743E6B8D9EEE8995F288FD25F67FB43CCCB2142542E41408C98E4FF88A526C5C7DEC8F0160AD20C5D70B9A5AAEB4827FE606E19A4C79EF902A63C40F9E910BA01CA0A70AF0B2DB1E924E4D364AB95A140BD0118370D11003FCFFD7FDE910264500FA3E0D0C778F342BC208FD2CB9467008AF03CE80872F4B90A30EF0DADE35812807364F7B4C089441DC58AEC913D742B967F43A0C57C578CAF27C69699E594C8D86D42483F6F4BBA76F8DA32F81827DCBCB3772EAFA74D042BD8589D09F2AA3830B20423EB3BF, 0x38939CCA21494970FF9D9E66E661921204E2C6706BEB0845EA202360403F180B74FFB267D70621733C18D0018C3C9CAA8E2F39D1F951084C8B57DF0025E830BF8492F1E7AF2B3AFDC05234521A06B8AD8379D21005471222F665DB7F26204E53E8107DFA4AB5FA62F53C10A71DB631859F317DAC151FBA3C80CEF04A4FBAD7A004E0690989BE63CE7F6F1BC9376A05403356E0F4A3A13DC856407A7CC5B0133A6570A33C4C27FBE1CEAF2DA604F10515C8AF16F8DAE2FC62A2A1B34844E709CF5BE064C7C7C9F40C5AFE26F47497C3653B64B315991B6082734099AA74B39DE7A65E4A248D3E4DFFBB099DDBBC08ED0BDD4E0DDF33F3354080E153862F4998A7613E4E164C9FD7FD16B359907D84C66A538ECD25A5BDB3B2280AA4ABEAC7CF7271F5797DBAD7BE3E7610C88099A5C2FB1AE933A17B7202A48B9BED42FB2C134FE3E71E870B48AF7CCF8FAF95F433188347A89100932EF6FFF3D5F21EE97C434AFD799CB2863AF0D239B7D2ECC26CAF578369FB529A12BCB5F11E9435569092534C65987B9666FD0CB8BEC7DB5C093D87269A9B7F80F0AFEABCE6C067A6BA7BA8257EA05DD433C11D6CEF99DB4BE059E8E10D0FBBF513D25BB5ADBEAFA59565FE431EB6DD69DFB2F2D97D129157D39FDC8CD88699AAC0B211AB44A726751177D7899B982C2A7C7E025A1DE277004104E20DE223CD0FCC53836BA43124388C7DC8063B07BC3A73B21059843E8DDD3B116940C41892EEAAC8BD4715C0854A59C9CE9F1A71C43A47A79A3012738A8DC5A53093C7E47373EAD95B73497424B22CC500BA70EDC3C94D2FF81D7E62DB373D30, N'oZbh_v.|ýüÖCua©~a<ãB<~ðbüub ãbZoðA</ßCäCvbäOã/ßC|Z.Ü£Äu~+ýo ubÐö©ªOO@uÖîªÄã.ÄÐr_/ðÖ_¢>>ußîbãö_îO*ð@UUª~*_@Oöåßå¢ÜªîZzO OBü+¢hðöbß£bßuüZß .aB |*ýA/b*£¢äo~ hZUürª~hhuÖB.ßzBöîouä@¢,ªÄäª,oÜîråßa|+r.@O/CuðAUA|Ãüý*<¢£ã*>ÐýÐü/äå_ýz@|ÃÖÄ©B>o©Ã¢~ã<ßîä,r*ÐaÄ©@::©+b<vÄbCvU¢ß@h©ÃßC.å>¢öAhÜöß|üBrr£ãßªr*äß*_©u~Ãub î|C|öb.A*<Üv|Zh/ªäzåb¢Ö_BobZß|BÐÐUb_b£Äß+~ãåb@ÜU@ßüßîOUZß|:', N'hUß+b@ uª+üo@><Üä<~+ßÖa~Zß|ýßÐ>OðãU*b>Aa:Aî/a©,©Ö@öBå.h+urBuü /åäÜUÃUhÄ*/~ðßä||ª/åUvÜ.z>ÃäCä.ßACªa|u/Ä/¢ß~£z>*@£¢>ßBBoB:<Ðý+aäö¢_ßOãa*OÐ:ª<rÖýa**:uîaða:ðCÖÃÄbªö¢AÖÃo©£Zzb£>ÃåÃ<Ä¢A|¢AªªßÄðå~<a.a@~Äu rÃßðªöZ@ÜA.výBAb ~.oå/ÖÜÃãbU<ozüv,/ ÖÃ/£zZöî: >î,örazb/ÖöAUÖîbAªÄ/a~©Ãz¢hÖãª>ã +*hä@üZ©Oü©,Ä:ÃÖvU OazîUÃ£|ä_ußUBÄä.ÖO>£/Üß¢ýz~o:a|+O©zb/åoå,.höh/ZaªvýbÐ©ÖU<Zv,b..@©:b/,ßüåA¢Ua¢å<|a~|OA<¢>ðb~h¢Üßýa¢Z©+ãªßZCbB/ÐªªßÄ+>ãu>Oã|@ rãUUãvýa~ßroüÖîî/@bO:ü*ð,zhÜCCãß vª:äßvoÖªAý@r@B ~Öz>*åU< ã@Cuå<ý,ãÃh/A                    ', N'î/ãö*,rÜA:@*@zý,+ü_öÖb_Ä_aC+ãüå_Cb~îAzhð£ÐBÖ+C:BãzÜ:>©>äîC, Zßöb|üU:Äb*bãªzaöÜ*/_a@@O/b/|Ðaðîß£ãßAr,åa,ÜüÄ¢å+>îCÜößvz.åhðßîüb/oAü', N'f29f1155-21da-46e4-9f9a-3478afe88bf7', -9223372036854775808)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (7, 2147483647, 30454, 138, 0, CAST(0x001E16D40172C9E0 AS DateTime), CAST(0xFFFF059F AS SmallDateTime), CAST(100000000000000000000000.0000 AS Decimal(28, 4)), CAST(0.8320 AS Numeric(28, 4)), 0, 1.79E+308, 0.3759, 0.3758, N':bC.Ä@|~îîZü_ß,U¢_ä. ÖÐãhoZrAª', N'Ü@></ubAðrvoÜä* |ÖÐý@ÐÄÄ*vv|U*|zü:Oazîß.>ß<C<|bZßö£väözbßÜCoö<ß|£üOz© a£ö <ÄUªUßrýÖZÄz:Ahhu_Ü£<aAð<@+Üª:öýz_:ªßr_ üöÐ>ã*@oo_C<äzã<© CÐ./,Z*Äýî|_*aý/©@Z@bhýrªb*:hýÃýð:Bßð_|/oh*ªª¢rB>.£ roUýÐrß öî~au|ªåðO@höã*öÜ,ªýäUüÐ*+ßÜrBbÐÄU>v|*,Aazozî@+*ßzr*~ã:Ãöä£ãÜã©ßCÜ.Ä B+.ý|ü_b©ßßa/üåîÐhåÜß ÄÃ_UO£ OCC£AÄöÜ*AäîªZAãã*äÜð,£@ð@Ü©Ð/zßîÐ<ÄÄ*.vöC+CAärb©äÄîzä,ß:~Ð>ðvbîÄbaäßzC>öªßßa_>b ÐýäÐ.>A ÃUhªî ©b<.üã U+ÖröÄb~Üðb©orZroZ|ý@CbüåAZoÜ_h@ra<                                                                                     ', N'_:ßýÖî bðÐC,ãzC.äßhzÜzî.åßUÜ_:oÐ£B¢ßÜaÜuÐîüzoÖðuaC*u*  ', 0x23D18F7C0590EC41D612B63B18A6CE8FF4056BF8EF8EEADA55ED1A946D150839302E6EED49D3577B913DA68991D1E2EA3F4B57216FD4B595E6B527177658D3C10A7C0BEA38E04521AEF066B1E76149830B2F5422BDE6CA5B78D90694AB3F05396AE57E14C6F8B25E0536737E6E04AD856BA40C4603B00323B2AF715ED9B0756FEB2D4701E235BD127DF61C87734BED742B81290732BF35B9E25A611687538455C0049340BCABA335E7FAC80D947BB067C2FD3358876D3C2BF88E1F87D3A68B2A71C7C76EB7ADB87FDDF32038F6272567AAFA5489202BCE52C767472D8C1B61406F9E9CCCB441AF1445B37A934D0435D069B7DDD952010A45F974A64F658AF3C291E0C9588B58B3684A3F446CB03A05C33277C3D53E88EE6D93000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x3F9A60AFBAC0B8026C3BDC451104748F12BD9D94BE6EE31DEEC61D8409F15BC4348473CDEA8F89ACF83799885531B2D0C9F8DBB0F6C215D1B743C1F4A234F97BDF18108C90A7A58233F19C86D55AC7BC134DBB1015ABCE726FA216A7CE9509C43E1DA93D2025402253597C04268EFC5D7B05E05579E86534499E1DEE90FEB49EE7D848B7B0899BEE0D99BCBC2FC94BE1A5B82BC8B4B44A55B875F48108519155A5DD1D4E4544ACF16AF248E02BA90480533B48D8D2EBE9338DF2FF3B9519E5BB08671751ACFD9B610C395EC26B6A290F70732ECC08B882B9F4E9C05245705C500C8CD8C491B3D355A0E7CB998C26C722C9EFCB21EA18B34FE55D5CC23C481B9BDD0DB5DF92657DBC9FD92C20EDE92DCD229E8955A53A66F3D988DF3457111857CB30BB7E70E88F63720E8111EC9261FB308EA09EBEC6F5A2A7C205098648648EC0D455BC2DAE5C390E26E296B855074727E304C8707A99053A18D7AEE386DD29AAF350183CA4CE8131678F98E35FEA52BBBEE2A3, 0x1D463B4F8214D6AE568848B9ECC504EE0A8214829609EA0022DB2E85F325A33AE50DD50ADCED22B9AA831107502A72254DCCB3608EC105145C3B2DA7E551BA30E50ED3DEEFF9111D5F5BD712F8E2B0F7690937277142AB2308C1AEA1BF7BD359C9E0224156933554BA960033E9F21B798B363EDC1A92BFA262B0D62E4B705EE4877E4917C06EA1, N'ZU¢öã¢o£ý_BU>Ö@. @£a_,öÐÃîbãýAü+:@b©:r@îr.ªÖuaÐaa.ü¢ý¢zîZåvö_ ©ü~ÄÜüÃäühaÖßhÜO>©obã|b +ãuO+|ð|*åÐ¢O>uÜ h:ã¢UßoCC,~ß><Bðv öÖ>>,r/.ð,oaý/+ÐÄCrÄhabbvO*Üä,¢ÄðOZAß¢b£OãîÖöB,h.ÖÜýÄ|rðÃ/Urä£_@Ü:Bßo*ðbA|@zCZCoÜr+Bª¢ý*ü* +,äß@Z+ý>ý~ýbãÄüoAåß. b.£Z:ðh:ÐãßA_ÃOÖaAÖZªOruzvî©ß B_ðbz/huã:äbUÐoAZAÜ,aäbCÄîu/üOA:£,ÖvC>+Ö¢Ürz/|ð<bZüäî/ U>ß .uÄv£/..ãüîðß©AÜU£ÖÃoüÐ+©ro_ub@Üzoö_ð>|åaob>o+Orå£B~ÖCO:< ~/väOÜ:Cª¢Ä<äÐBä©aåuuzaü©|ýöArý>b~ðCªoüzbAÖ|<,ß+<å/o|vCZ.zr¢Ü', N'.¢u/vßýv>A~Or_:<vÖ¢:oÖãöß<¢Ãzü _@ð*ðvü@|>ªöhýbðÐü                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', N'ähbö©ßv£ßOZö_ÄA£vr@uzubö_ßÄöÄ_îÄ>A:,:ý©hý Ð+r©,.ö.©@/ª¢¢bC,ãB ðUZ~:@U¢Ov@,uý>ÄÖå/ZýZå+Zå.ß**~ßb©,<B¢räO U,ýb,¢h*+@.ß ¢*ðZ|C.Zã©Ã _~AªC©|B©b>+u>ÜÃýýb.u*ÜhO £ÖÜA,ÄzÄãbCÐUääÄ£|ä_bb Äzä¢ZCrßå/ßaß £©ßb>©Ð~UÖr_>Ãuv¢U~/bÐ_Baª¢uuz/ãb,aåb<~,~hbC/Öª@ª¢ß_/+ZîhÃbåb>+öz*<C© ro©Oãî©.£UaB¢ª>å.ÃCCÖ+.Ä BÜCßBv<ãv.£åU_+uÄAßäöäÖ:/öÜa||ãÐüãÐh|¢|ü_v+rãýohÐåA ªã,ua©+h<:vÃ|ðð.ßU£b<ß Ã>|ª/Ü£ZÃ@@hh:@Cîv/>bý©¢ðbÖ >uüäÜ>ÄÄ:bö*ãO~OAÜßöZCÖßA vÃãðÃ+AzÜ:|©*¢Öß©ä b£å.<ªhvßb+<hß/uaä@*|z_,Cª*/or<:å>üÃ,v* |', N'99999999-9999-9999-9999-999999999999', -1570628528)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (8, 1973142402, 29235, 132, 0, CAST(0x000A8052010A2980 AS DateTime), CAST(0xF8BB04D7 AS SmallDateTime), CAST(0.6040 AS Decimal(28, 4)), CAST(0.9025 AS Numeric(28, 4)), 1, 1.79E+308, 0.8312, 0.5042, N':bzühO>>Ö:@ +Öuªîý<bäa£©@+ßAO~a/öÐZ©ß>hÄÐr*ob~uåªhðÖACî:/¢:Ü+< o:B+¢:|ß,ãÖ ©©>ªöoð.A©U.ßããUob+*väOÃürª.b @îvÜUßöA@ª:bZ>r©_ß¢ £*<.bß>ß£Ð_>+Ãh*hb~AZh@Öåu|©>Z©ßÜÐÃo/ãÄ/zo,ßbö©~+ä@>r~A>ãÄ@ãUßz*bÄÄ£ýýîz hÐhÖÐÃð_üz¢Üo¢OÃr Äzär<äAÐ*Uaª,öuobãåÖCAªzv@©~îB@öß©rý<övZÄa Ã@+ðÃ_a| ß/rÃÄ|öüO:ßvÄbßÐÖU©C~~bCÄîÜå~ýAå@rh*:@vðýZBUObý:~rðz :Öu,BüßÜb+r/ðÐ>ð/vUüÖCZ>ßð£î z,bÐ|b/îö*_/hððîßU <@hðÃ |*:Ðªo ð:ÜýoÃ+©bA>îÃ@¢O', N'ýÃz.ßo<*.ýÐýO*rr@©oðÐCå©.>¢aaßöobh¢<a>©ª@ßZ+ðbãoÄ<aüA/ääß£ýZ@: ªb|îAÐÐraý|.ðß>Ð £<Z@Üüh£vÖ£+@+bb<© +Oß/ýZýü:aöA î£¢boßãb/vÖübß>¢<+/oo+oäbzußa©¢ Ä :äÐAå©ãUððA:î:>*ü£@åo_>Üýã~bbÜ£/vÖ*¢å:<Üzî:Ußª,ÜZ£Ãüßßoð+üAAbßOoZªOoCä:@OÐ|vBUü,/ßÖ.b©¢/~/vî//Ã@ÐZüu.U©.OOßbUîãCa£~vAÖbªüÖ|©ª_BÐbb@ßZÐüro uîå_OÃ~hîÜã.<ýu*U©©ýß                                                                                                                                                                                                               ', N'bAr+bßvÃ,CÄ@OÐ/|åB<£zî¢|_~ö>Z@O@~ßã@ýz_z£B:zÜ:', 0xBE640B5053924B55B883DA7707FA2908614B5D2064F1CA38D5268B4B387B799624CCB205CCF0D5D4A555378821977C95AB5AED97CF4692CC99D37B2D07001C3D0944523B48243C7176897B0FBA42173EA9F69FDD8DE2C6DD39E56BF974A8CDA438FA7EDC44404D871E7B2146CB831257BC3C8310613EAF277E750162B842FCCDBBD6D6C0C33AFA68A818BF12C08012B6D3143D3824BC43FA4A565ECF3EEBCEDB7E538AF4AD519381421A68487F9C66FD624B8EA405C4A9FF93DC756CDB2B2ABC49E3936DF51E088280BBF50A54FA7AADF0606CF25C2AD6BAAA8B61D1DB26A517F0ABFF9B09F90744430C2349CF9FAA9861C77C7BBE375F1E0DD9C26ABC37A65915DD19A8FADFA4F65828AF50068CEA0AE0C87013AA2A58B94BE18E30369D870B65CA33F185029E8223862296870F1780EEB78AF4C793AFEB84605C195073BFBBA00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x0A, 0x58F985DD2AEDEF2308C2313CC90D427F129344D21A486C25A68431AFC766F6E324DB27F432ACCAD9A38BE3C22E1F50423140A80D5F1821108C6037A5BC405CA1CC4D18EEE64D4C66C86B2E8F65A9F68734EE7E86BEE8840BB91767D275241C632E42F6E006625CE4F34244F4E992AAE36AAF71CDC1D5E3E3C90D34CEE57AF0A44ECB6023B31580D1919A937BA49021266C8467C5B24EA1585E1217F92D8EFE7852A0A61E31872F542F9F3C2742673F39EC0D6260122AF1FF2A08C4A0FD86A4039B1A2904E903F5E455129512127916F7D3DE0D1F2C9D6627AEA7F329C38E56A9FB388B283D3A4FE9187D0BFF94DEECB0F1CDCC1F7885D7FDB40255420FCC21C6BCEC17D9EEEEB9998E2406AE926692CFBA4337F6C1363075618D733BE40CD94C5B4443A8C712C203133391547E286B4D708688CC942B0485BCA178607A7DB4824ABA524E22E908A78034E28EA5DBF7382226CB5E840DB7303FBEEC259A6189957F0F09C3D51D2B867DE04B604876DFE0AA3F3E54B255FE3C03210E64FDE30D1FAB4C0E96D1336205FA45E1A3C257E8C9DE0B7A5A2334E32A10CCC0B40EC68899D22CB5FB67480E76DD38596C735A7AAB394585F268B3FB7668E4850572AEF634BC47D196A1EC6196FD037DEADB76B6B652147AC94196311F303F9382C309032E4225AF2C89E40A4DE3EFF46436109AF12ECFB25E342DF22616B2656259DED2F3FF4EA8B6C7892D6E0A2DE652A1CCE81FA4A154F356A5F914328916D77EA7F3041C0064E768E42AA4A244530747A08449C945BEB88ADF9D5A5493833D7355EF6339E135A06701B7BF76AF511252F2CD9204CC0E39E93B7A3D630A92D460ED304C55F0CD656AE4E1C78DFE41DA8D8B0862C5F139A747B67AFD67F83D5D6FE25F897F04BD6125682720EB46ABEAF99FAFD802300E6FB389049E76D0FE71A68458AA9FB85B88CDA63C5DC919BB010A8F03C849655B3FD3EFD5F5FF1EEB5569B57967ED004B4144260A5BF3, N'~ð~>+vðå|£,a¢ÜACÃßîýö ©<ð:.C£ªÄäböC/ZÃ ßaão>:|ª¢ü*ÖåZðßUvB~îäßuüö_ð©©ªßý:CüBOOA*ãÜhZãß~hCäOOC/öuªr|ð¢ðü+@Ö.OöÄbBbubb£öCCöÜ|ß.£åAoÖ<ý¢CÄîßÜÖb,,r,ßBCî+å|©b/üä+oüåå,arUb:ö>hUårbÐ|~oaz@ü©Zrßîroä_©ßäOa+ýoÄ¢O,u¢©<AÄ.vuo£+îÐÐa.OvÜ¢ª~B äÄO~ýZ© ~/£@*å<Öªz>h>vZ£ýÖ_*,Öªb~hoýu©uäüA Zb<bZßAAzböã~/@ªUÖ ðßãªðrÐ>@öb£o:öa~@Ãv|+ÐZý¢z||ÃbýB£B>/<_ä_Z@Bu.ß+£.öB|>Ö|B_ªzåoößåb_>*/|CüßÄZã£b|ãöðhÖý/ªî_.åäUý,*Ãu', N'ZauãßCÐß<Ä:<b:öUßbî£öªßAÃvÄã ðo.ðÃ|ðÄZðäÄß.ßö.ßßAh|¢ >ð©rOo|,î<_|A_+îa_>hAðhOabv:ðßO+_B.ÖåÄ@h+:ß åvðä/åa~b<Z|ß<rCåC:BZOaðh¢azA+Ü~CßzÐo.aAÜªzbßãö.@.UUýÄbÃUýÐßåÄ|ÃÄÄ/ýo:ö<B/z©äüCZ©ªÜªC@~.Ö¢>OÃrobA¢ B,üUb:Öo|,+ãvä/oZðö|rCAU_öÜßåvv£u¢aåÃ*Ðo+*Aa+ÜUzUbäCBbhý+ÐÃB©üZZhÐª£ä|:ðrßrãBAäÖÄ<|ã,h|o<A@ü£¢<,bÐä£Oª/©~öðZäzå åö,r./îaO/oßb>v|zßÖ+Ou|CAåU:uvZOoObÄUvý¢ßã<Ö/¢¢B©*üb_>h©+vO@r/ßîhý©ä.| bßC_ Ðß©.voßäZu££A.*üB</+A|ª:öÖ©BAðv.ößð_~ÖUb£ö¢ð Aãýu*ö ÃOzOuu<@<Ãã*öuÃ                                                             ', N'ß+ u,ÐBö©CîðÃå©ýöÄÜ>Öz+ZÄ|üBvüC ª>.ü¢BZ/ru_C|ªßßo+a>ðÄÖ<aA@ßÖa©Ãa|zO:Ã+ã/ z@ÖvÐCÜoðîüª.åÖðö~~<Ãr_äBýZª*:aob~.uÐÖz,AªbÜÐ.h//@ÖÜvü£CüîoÐãOß:îß@ã<@rrZO/bCÜCÃãäoßÄuîCðZUßª||äßªäöåzöî _>b_|arß<åüaýÐÃå,îrZ,ªÄª|v>îoß_îv>OÄß~*ZbaCÃ~ãßäOb<,Ö¢ðöß:üz>Z¢Ã*bÖ>|übß_îu+', N'a79b53c2-9594-414e-b4e3-1e91d8603ab2', 0)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (9, -1, -2535, 255, 1, CAST(0x0000E55D00E1CE40 AS DateTime), CAST(0x00000000 AS SmallDateTime), CAST(0.2215 AS Decimal(28, 4)), CAST(0.3612 AS Numeric(28, 4)), 0, 1, 0.4378, 0.5217, N'zuý©ãã.|<Ö/Uãä|@+rðhð*AÃr>C:ýAÃ>¢h >C¢zZuýÖoð+uðräbhªü,öOZ:*Ðö~/bö¢Ã@b.Ðî¢îðªåÜãvOUhý_î©Ð,zßOö|v.zbýÖ@.h/zuüb:*z@¢b_Ä::@AöühÖª|öb£@ZßßbÖÜBÃ©zð¢ZAaz_åa|öä|öß|Z,ßÐZî.öb', N'_ ÜªÖÜrB ©BÖzAbbB|.uãZr<ÃåðAAr*ü<~ý_uörB*ä<åO£>Ärã +©ZåvhzðåäObC hvÐA@ßh+ åýßzzb+rãOåüzOÄÐ.ðazuOß*_A,Ü©©aOý .å:ßýå@£ åu+ãbAzBîCbBÃr/Üv£~@ooÄýüÜßZªöhß|ãîhOrzÖ+|CböUÄÃaAÄuðCOÄ@,åzrA>üýv@äZzªb*ßo~A£bÐbCv|uðä:©O¢ßzý_*bob©Ää.Ä/£äBü~Ãä*ovBÖðÖb,bOBÃßÖ+Zß>å~+aOÄ|C~bÜ<b>Ö:oÄ:ªo,aZ¢Ãza£å>ßOBßZühb+rßOý¢~Bªð*ª£ßr*<|b,>,_<Ã|özýÄ<<A£b.*uA©A~ÄbZZãýüÐzÄîÖ~ü£z</©ZCå:å|aÖßýv_.*ðÃ:r.Ä                                                                                                                                                ', N'U.Ö~ZbBÖbÖªýÖ:ß¢,ÄãUOÖbO<,£ZOCbÄÄöä<ÃzZö£Aö>ð/ª:äãßÄåÄh<+|Bå.ß~öÃîvß~*ðB.îªoß_Ubßr. z*ßaß+CCr,_ß/ýßAoßä>îÃZüBý©ß bBr,U¢ bUarUßîA+ÜÄßÄuåa î/¢bãîßÄZßhz /r+<üðß£vBßUª vãBCOb', 0x401DAE81CA729AB33850429453B899C20F4B3C5944390AB334F715DA8FA71D9B6F34ABB654E982728E9FE274C723A9A9E83409FF620F0F0712FA4CD25CBF249032A7241E0DE36E25C9C9CBA55796EC104D6BF25A9D1E386025A3A4599CAF15CE7A514120FE8B9C05C6E43599436AB07B0E3C85F0CDCAF2146FC4F9693E148819B3FC2A0555CC11C2CFED93B9E89F1CBAF3284B602A2501B05F2DB03A9233C6B25B1CE5463FAA25412AC321DF37392BD0A73E7516C828EE8EFB7AA6281BD72F9B26E05DCCB9D57B49020935670321782602E09253BDB0EA332D574BC404FD26539385B956DB5E16D1C32C13BEF2878BDA0180263A44DB0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0xF62A9F628AB64405E3E2D47D68224BA3CAC090919D2B40A6CB71C284D7EB0FB7A8425FB0BFB4470DE70DDB10B30D71DF348270834B4CD9CBE9F99619F3C02EF7D21CD525C39AE4167982A98F4F30F2BEFFE34F547B8C6B5B6994C7C61D2D1927DFE43D96384C1B9A9E5909C9A24A7BB806D81A0F70D97B46B079BC2FD31EF84B6881AF6BF35B85B2C7B4B62182A2B81F180EBF44130AB60668F6E5BE90ECC78061BD60209A10C4AA526747BB2359C40EC09D16C45EB4385ECBA802FD75C622DBED35C0C4429784084915F1ACC2FAE30E31D7FDF2D50222AC850155F10DC7348C446CCEED99FFCB29180E7A49C28B9BD0C5F4CB9EC93005EA, 0x3E404192FA82E06567562CF675310BD4DAC688D8EAF965852C18FB96C21466E4D985C18BE78614F8685C2345A4CF7F9992F4553E623A2944DABC65E1864AA253EF471CF07080ED53B290708DD520E15D996103CDBE27829E5B7CB02A2032711EBAD0555CB28E291107018CD1CA9C6EBADA08482546D495C7C57E94F4D0C233801F51D305CA85AA0A38F1C6BC9BB0D3BE0DF54F17E94CD8E53B8E9634FA344145CE0BB279C969F0555D3DEC540ED82C15AAD6E6DA721B96D378EECA3BEE761003B081ED8FFD5AF5A405FABAAC5F84D66262818A234E66D2B275DF00DB9EB466E72CE8A38DEA9C174FE141D57861E973F41767D96DECECB549AE3B1A1E5919055193D28077E04977C5693A420C915A518B6C0CC336DAF9FB3F325ADEAF82F8F5C73B84E58E69FB14CEF01303B1AAA8B854E98EB24D55CF769AD74144856AC84371457BD00D74C22270F7F546C6F549958AA28AC5F346A7716C0D4BB628B78E6427CF926C2ED8ABDF276B42566088AFA48EABBAE3E002502A9D0964FF290BFAB869911EF662DD66B2F6AA9E87035111E35DA6287CFDAA84257F67CE2473ABB51B7189ECCF6AB942B14508EC3563C8274CF880A283E27DBBBE0DF976FA0E413E4BF483157A644279A4637737F4BD4EC1B740822CF3093238F3CE2EC1704247A203CAA140E0B2ACE7B607FD1F6B46C601BE38BFB98B154A42C24A22AC368009621CD4332A1C0EE004939A76EC0B12CDAD072C0338828E17EE7F5F7D969000B135FD9B0396129BE5B057BA25F19E5E36AF7C75A4097DD0DF8DBD45ABBC904A7493E940EE700F379A6B4753E0C768254F2029CD191B5CA7B82DBB75D8CCF0281F0D4692075E70C5A045DA39C229F0172597F68A93C33059364188C1B5995ECD7B1F34D381D51EF0B0632CD44022E58E3CA34F40D665945CDDEC5BC6D5AE1007E70DBDA2F51D96507905DA2F965C18145BFA8411491DF7168AD7F59479571B025325EC336442981F0DFFC7D08B64C581D4476ADB29FEBDC916A7181E2701D621EAD8DC706FE5AF186165044A56268B251174C031ED40D85468221CBC2A7AF80B28A5E6B3885511EE975179C4FA7273EF1CF20CB241A434AAFF88074CC8F2EEE76CF821B03FD89DBC62D1999BC61359F5AE2CA0386E45CA83703CB3FF4DC525A56391580151C3AF44544F506F0A99E3EC2E129D9B52B679272E9D3F03249D6E9DACF43734BB57A4EB7C5BE31EF55A78D758C6D13B278952AD1830D3B383AC1FB7E0B2C31661AF31D66EB21EF6D35A31D42467AB5ECC337522A18A1B8A84F067D03B2C3D42976276A995FBCC756A5BDABEFEFF8F1C00C1EBAD3DA174D693A6517E4A4EBBA61CEF3CC1F101C9D066FFB746B05D8B85614BCF7A419004F5EE9F16EEA94E2B1CA033A10FC2CD2AFFF81A463EEA2E26351ACC1CFF7E40658CEA47D351EBDA27, N'z.ß£|îCýÜoî|ªã ðå*©bäßÖ,bäzß>ÃU:oaÐßßÖ,Ä£v*Ðb|äuab|~üý.>©.ªÄªZ<Bî/,ªC_hhüü/~:A <ýBß/C£<O~uh+oÃB*ÜUß¢ovB<ð/¢a_ãb¢BCÄ@>büvüuaî,ÖüväbßrrÄ Ðý >Ãa:', N'o>ZAý~ãÐZ|©ðvrbO:*o<Aä.,ßü@O_ZU>ªUÐî<öZvuBî£A,<ßU u©zhÐzbîUab©OazOza:OÄ@båUööÖ*,<Ððrb~O:>/ß|Ävu|îî*äb:*b¢Ä~/îß*z_ã_ ÐüüÐýä@a*hßß£©Ab.< A,ä~*ýÐ|ÃB@AåÐåßööªäuö Ä>îÜÜuÜzåb>@öå,ªÐvzßðãBðbÜäBBß¢Bbbob/uö ðÜ¢ü+uöö_ åªðC,ä,üÃa+©rB/,/åÄzO@züîouh|äãð_ÜðaOö£ZÃ<@öüU|@_üÜbuUo+zöuU£v.ßo:h/o.u<U/¢Äý*a£~Ã~~BßÃz¢|ÄuÐ,£.bÄÜ>Ch+CÐzßßª:,öð~©ö©ßÐ+ÖßßªÄýÖãÜr£v|>@: <äÜýåÃooÖZoÐÄÐUü.ÖZzÖ,Ð|üA,ßC+/br¢rüö,äC£/üÄª                                                                                                                          ', N'<.zoÖUh|bCuaäZ+b+äB@B_ZAaåO© /Aüäöð,ß', N'99999999-9999-9999-9999-999999999999', -1869167400)
GO
INSERT [dbo].[AllTypesComplex] ([c1_int], [c2_int], [c3_smallint], [c4_tinyint], [c5_bit], [c6_datetime], [c7_smalldatetime], [c8_decimal(28,4)], [c9_numeric(28,4)], [c10_real], [c11_float], [c12_money], [c13_smallmoney], [c14_varchar(512)], [c15_char(512)], [c16_text], [c17_binary(512)], [c18_varbinary(512)], [c19_image], [c20_nvarchar(512)], [c21_nchar(512)], [c22_ntext], [c23_uniqueidentifier], [c24_bigint]) VALUES (10, 1550604226, -32768, 71, 1, CAST(0x0000901A0000012C AS DateTime), CAST(0x00000000 AS SmallDateTime), CAST(0.9869 AS Decimal(28, 4)), CAST(0.1231 AS Numeric(28, 4)), -3.4E+38, 1, 0.4740, 1.0000, N'vhð+üUoOZ:A./z£î*,öäO:züüv_bßÖªã<Ö:ub:zh.£', N'ü_Ãü>üÄBvßîßãü,ÃÃB,_ärð©ã/ßåbß/@vra/~||ãA>|Ãä£+Cbª/ v£                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', N'ªahbhßa:*+_£üöCh_|@*£ußrbÄã:+CvªüUã|/>Ãr>B*>BÐhB>zÜÄhåC,uðA/ý|BUBöÃÄC_Ãbäzä_åzBz|Ðöb _:bC/*>:UröýB,ob/ýüªÐããa|>îßÄävªbð|<ª~©OO~ªCð|ßîöUhÖý/~Ã¢b|ö/ÃÖ,ö öOãÃ:ãzÜ/ouÐBaÄaå<Ä@ª¢ ää_AÐÐ>ßuo~¢¢bUßz/ra.:îü|U/ßZ©.Ð ãüãîß~bð a|>+bö¢©.b,ªð.ö~<<zÄ__ÐäzßC.î>äobB:*:Oo>oªU* Äî|åzzBÐuÜ:ß£bZãuÜðuU@ãüªhz ß_öz,@~å_@~OÖ.äzý@ßBä©öã CbObªZOaÖö©ão/C<.ZÃOÐ:ß©@üB u<hªCüv:.ßöU.Oa<O<ßBÃª/,U£~©v@|¢räßZßbÐOo©b¢ /Ö|', 0xBC871C0773773D24D39CEA4074EBF0FD83531B6B4B28D670D44C30E8B624A25B43C8FACC14139CD4A37847FAB71C24CA462D2C9F10DC5394B0AB332747546EAEF98FFDABF123E86FB747C8D3E0DCB8B82766A288F8034A6675651C68E0748D4F099900281F79D82245BCE7C81480B3D3F27A00E0B1E6B6F54496368C077F8F42BA79CA47DB9099AE8E7F423B1B8152F5B148766574AC9D22E30AE388434C1BC52CA50E9AB56CF862E1515231A37ADAC24440DA000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 0x2ACE0DDCA764D0AC106B41647D0F7673B73F4450138422596B7F6830214302715BBB02D701BE0E0827B5D0E610CD266B634F8D01956EF5A6ABB47028FBA08BCD68D008C10C9F71F8303C295EB33C489D59FDCDD1B600DBECC65C2B4C4DE60D862A037D40C4645EC3DD94D0594597F26E6BD2CFFDD2B91768F41BFBB07324AA4A2FA233B0BE08D9F49E09F3212F82A72E69BCE17A160FB371EC154BA868AE50B8E9852AA36342B062F9DA5EC9C5F5387174CD46B64330341FEEC2C4A9BC308CF0B93B37AA5804CA270C7E813CB0EAABF6DCDA349A689975B9510AB4A17D06A6C84D6E108ABD8E1970021EAAC4AEF76F0416CDCCE2FCF2871FC57E584D4F29A906D8B8EE41D920384EC0C39849EFB00B599BB08AB039C4CC5BE7F0C43F35CB21D975A3ECF6092D2AF5957D2138593E3014, 0xB29E9EF9CC13EC935AE95BF919F5A2BED44BC414506D85941ABBA29301A9BFB0CC3618823B7BD7D80A75D341999B642C959A69E5505EAE451909DE10715891B129AB2CE2DC20835874EB0ADA9A44FB7F5775FE663FDA606E88D268319DC667B2E42117EE6F8250751710706453D3ABD40E5FB9FB5A2A714F4BBD5A09B752BBAD8358F6782D0C0FD425884F2E69FB1AB42794233D0D6C58B9AFC7A2B12846BDC555C3E0FBDD33A6014FE4D5D1DA43E550A3A5E1222E7DA017003CC8656A5EACDECB8AD9A61A1FD7F4EE21ED289686DE6CE2520E82649A96D722C9FAA06A4097F138F60550693E3583CEED340D907781795E5B83184F2A7A30F4018451253689AD8AFCF09F818E02A31C8BB377658847AA4781420FBD7FA10E7CD45B67BAE45E986487839387E1F8CF58E0FBC47602CB6BBAD909A4F37AEF0B5AE222AC329AE8382C1B13DD05B323668873B6DC83DD977A09EFADE1DABAA4E9977839A5BE4C9DBDF7C3975AEFED6606B6A31B80C413877D4AA8A242ED075D727629458D797EA73CD5F8E5BF453D8A1C89A62B379E242584F0BC5A15A95AD0F06624E4C6A7D88C37FBDFAACB2DC7370D1E86B946DC26D45203C19DBD2392927B28F4592059C474B019F33BBF795A5628844DF723A08914405091C2E63BCF14694C2FA3386E17B45A12082DE8EA14D8A96A7438D69A6FDA9EE018CFC7018D7449DED2724AB61EB96D999C11985B2B563CB8197CC7973DCEDD5404585547EC598494E30917A18EF24CBACA3DFE5E4242B5C2930EE811ADB2A10395F6B2C56325AC438C0378213E9A2A26300CCC00D07F11C1A292B3DE7072E73068140C98408656A591BAD13ECA9384F9E4C1E1A0E6A03316E4F023D171CDD2191C47B8298D92E5AAB5276F16AED2F70E0DBAFAAF914649C8E1F6B350638533C3E7B72282DB5B6B51DB36EABF301C6811F914C3B7D32388D5FEEF4897DE95462FF3AC2EF6B07433B24FA8D35A5C8A97C48DA2564FC27BEFC42F4D84EB12D37246F0BACB84EE716184E010682B502D797357840A3C3EF76D78BD6AC762F0489F7B358D6AA1BE13D51C40D26EB113C47401D410938EC93507F84D53C684A9FF939870ECF5C3C2D7B544AEEDFC6C89BC64F8F6C58DE0B411B2008572546A4D5173413ED64026CFB03FFC5A4FE0DC399A6E90EFCD8EE371B3E35F3AF53D50834BF65C7ABA2EB37B3D29458690856531D5C6EB03C37B7FC38FCF8AF2E1EBDA73EF790F5883627E6CBB15B1A4495DE02E7E2D642E524CC0CF7799EAEAA3C09A524FD19717750CAE73477E47ADCADB7A32EF5B74B387AB21A2B840E0E97794C9FB7B5F5477C6C8B9717FF0E7D30412059C1FB8FB, N'åð.@O: uð£ O©@hüäÐß¢|ÖUUUb_Ãbð_Ö© ZOÜßCoövÃUãÖB+v¢¢ü|îhh©oZCð¢oýB~>*uürbª¢Ãzbý.<üo/.Z~OÜro>ª@aUzBÃovvÖoz/~*ðußbÃÖßhÜrÖÄ>,Ðhb:~@ª,,u+ãouuaCüÄUU_,bßäÐä<B ý£ä_¢bääbÐ_ß~Ää~|ðÖBÜavoOÖý¢ÄßÐðZå,OzÃªðvC£>ÄÐß*üvoöÄa|ü,Ä*äbuhUa¢_Ä ©Zå ãß©+Ö/:ü¢©/£ßrv .ß~ ÐãAü,>BObAZüv¢årîª¢vîî/|Ãªu.v,ðäÄ|~ýßÄüv*våª+<+o b/ßO .ã,<vßZÃîÃC/vÄAå,O£*î£aãOuubbröCÃ+hÖ~ /Oý©*O>ör©h:©Uoß/Öß|ZA|u', N'ÐaÐî|vzbÐ:+Uzß*UA|ð¢@Äöäö+öAb.ªÖb£:>rzBähª>Ã:O:ýuAaazýOAbåör ZA ä¢O£+äAÐ<b<ðuU.Öðößa.ª/b:./ *î@ä|oãßaßª*aZ_v@vßß<rZ,<AðUOCrü.Ä+|@ª*b,~ÖB :ýhbO_rª¢äo¢h,_Uª¢å¢£özîüÐîîÜ.å:ObAAÜoa~ý*ßäuö+ußßßöä<©@ÃuC/¢ZßuüÄ/B+></¢Z¢Zh:Ãa*ÃBýªð~Ã+@*|b|üÃ_~å@>Zãz + |ä,+U_CBðrãªACÖÄäoî+bzðÖ||o>bãÜ£UªaßýhCaö<b>Ãüä,Ö|ýo.ývvð¢ßÃ+ªab.O+.BðÐÄbî/~v/b~ÃÜÖ@ã¢UU*Öî+ .£ :üb>ª/ZßãvC@|Ãý<_uýªä>u                                                                                                                                                     ', N'hb*A*,¢UBCz+~ýv<ð©~@ÐÃ£Ü.ßB/b<öÐv|:*öÜ<å<v:|©CüUÐhðß£Zr/.|¢_zOr¢O~Ba@î@orÄA<uBBZãäÄî_hbý+að+oö|zbß+BAüÄßªÜ¢öUÐuz< Ã:<ZBb>B£>ühavhÐ.,ÐavåhîzÜ>hÐ¢ßªîßUCãÖÐ ~ðzrã:Ü*ß@zß~:bßz|ýz_+*aÃ*UOaaå©©,. ~ðbãýozu ýA/Ð:ßvÜ.ßu|z><u~*ß¢£hrbÖu+@h ,bh©Ä ß:_r¢åU~OÖZ.|¢.ß@~Ããß,ýU/Ð¢B.o/¢ßh.hßªaÖîªäýðöö@î|_|ýä@.:zÖåvhOA ©¢/rZað~ðör@ýz<ßBrã¢ä¢ö¢a©<ãC>Ö/ã©v @ ¢|¢ýbðzå<ýZBoö ,:AÃßrª@B:/OÜÃ AoZÜ|Zaå|a Cr>|A*ßB/rU£ÐhaA_@¢Ð@rhöCß+,b,~<©:b.A_/b+©Uhß>|£_U:*ðvßîb_/uü/bbªÜývb~aaB|+äüýh¢UÐãßðU_,£O*<BuCðªr@A@', N'99999999-9999-9999-9999-999999999999', -3049069770)
GO
SET IDENTITY_INSERT [dbo].[Artists] ON 

GO
INSERT [dbo].[Artists] ([Id], [ArtistName]) VALUES (1, N'Dave Matthews')
GO
INSERT [dbo].[Artists] ([Id], [ArtistName]) VALUES (2, N'Live')
GO
INSERT [dbo].[Artists] ([Id], [ArtistName]) VALUES (3, N'Green Day')
GO
INSERT [dbo].[Artists] ([Id], [ArtistName]) VALUES (4, N'Metallica')
GO
SET IDENTITY_INSERT [dbo].[Artists] OFF
GO
INSERT [dbo].[Artists2] ([Id], [ArtistName]) VALUES (1, N'Dave Matthews')
GO
INSERT [dbo].[Artists2] ([Id], [ArtistName]) VALUES (2, N'Live')
GO
INSERT [dbo].[Artists2] ([Id], [ArtistName]) VALUES (3, N'Green Day')
GO
INSERT [dbo].[Artists2] ([Id], [ArtistName]) VALUES (4, N'Metallica')
GO
INSERT [dbo].[Artists3] ([Id], [ArtistName]) VALUES (1, N'Dave Matthews')
GO
INSERT [dbo].[Artists3] ([Id], [ArtistName]) VALUES (2, N'Live')
GO
INSERT [dbo].[Artists3] ([Id], [ArtistName]) VALUES (3, N'Green Day')
GO
INSERT [dbo].[Artists3] ([Id], [ArtistName]) VALUES (4, N'Metallica')
GO
SET IDENTITY_INSERT [dbo].[BugsDefectTracking] ON 

GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (1, 1, NULL, 8, 2, N'|<Öh¢/ßÖö£ý£ÐBýr<hZîOå:+B>äv,ß|/+ðU:O/>zðoUaßa©o~Äß~ðho©A,bC|_*hB|vßã_AA£üýa£/~BãÃÃ©üü@UÖ|/Ü,+Ð,ßBðUÐäzbÃßööooA~ßöZäãÃOCAAbZBU¢vU~r_@ *ü+£ýoA~bª@ãý:Bä|CðßrÄßAö:O©Ã~ö>b<~ >rÄ')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (2, 2, NULL, 1, 1, N'/ÖUvOO+AbªÄh¢o*Ä@ý*å<£AÜ>äÜ+*.ðÐÐÖ+ZÃra> _åå+ üoo<OaÐ~<ÜÄ<Öz.ý©©Ãü,äÜbA üä_ðÜo.OîªuåUîaoZ~|r:Ãb*årr,öB,B:ãbäA_a|b|.ßÖß.ßüU~O>ßåZÜrb|öAUßrh.,ähCÖ~aoåZv~Bß,.Ã>rª£üÜBã<:ªA ªª¢+AöãCßª<£ýý>¢üÜ|ª_za_Ü.bAZvh,h_©©üÄÖ:|~©ªCýýÜ~u@©b.ßz~Bªªäßã|<B@/ ã£UaBAü¢,.Ü/z/bÐ:*ÄÖ*båBh~ÖÐCha:_/Ö|v©ö+ãÃr©ãO_+ÜßaÖßÃüÖÜhå@Zu>v.zîå©>:ß, ð©årvüb,üZCv©ã:aÜhÜ/BªOðv@Z©Ãv*u*:Özå~äî:åvuoh£b.©Ä aüUz<ööÖÃ+ÃÃðåîrBoCrväür*üÜCäuvA|Au,u:ßð¢CuBr|ZvU:üv_@bhýAü@Oßå:C©hî©>ü£ r|h£åaß©>ä.va<Aöb,r>zÐßuÜü_/+ªÖ> ð*üð>CAOãÃö<rCOBü~BÜ')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (3, 3, NULL, 2, 1, N'ðåî:*zåCðöbCba~Zoz<bäÖ|ä* .A£ÄOðîra¢r|ß_ßã_vAbaöýßªã_,åozbBaåã:rÜouäaüB~>öUAuzßZz:bãC +> äzo<ß£ü+ >åãoöaÄa ªoäöýußÃ/ß¢B/ÜÐ_o£ðCÄZZ£åßö:o@ACBaÜ :ð ð©BuOÐUbBBªß*Üî¢zåubov _îÖ>a.a.Bu a/ªbBî£Öã+|ÐÃ O,:/Uäo£*|z/Uu£BÃ@|AÜ<AuÜz../üüoboãA_üä+O*BAÖ©©.CÖ©bO£|Ä*u©ð:Ðu+~h*b,ª_Ð£Oã/+ý<C£ýZ©Zðý.ªC©zzðð/CÄ:ªz~A>rö,ýßC +Ö_Z:/|b©oö<vöu/Ðv,z£@äßbüß:*_ýª<ßZ|Ö¢<ý|£ß:*CÖ|ý@£Ð.ß©ãîÐU>£BÐCo*ý<£©©Bß.ÖaÐ,')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (4, 4, NULL, 5, 10, N'<ßåvO©C/£a,ü*<î©zaCZîzã|öab©C>ZZZ.ªðUåoz*ra£ÄßbZBbB/ãîzOü  O¢: oÄBÃðäý..ãßöÄZOãhðÜ|A,ä:+B/öð|ýÃååäöªCh.C©Ã~AüªåÜ<rUãîZÖ')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (5, 5, NULL, 9, 7, N'/b<ãäBbß/UuaÜ+/+Äv..<_o/+Ðãü~CBüß übOãÐððÜ:_vO:<:îA~uî îåA<hvbUzoUO:.,rä_>>Äb¢OOv+@©b>Öðýboh+~©ã_h+aaabbÄOAÐ.¢ßvãZåå||U£>v:*ub>üß£oöUOOUz/üî<A>+UîZbÄÜZýîÄ>Ð_Ää£ÃbîÖ<åa©C¢~C~*O<ÖBCzÜ.Ub+ob_©/Ã~~ u.hÖî*å¢üBro,__Aü:ª_åvßä+zß<ýÃðý@vCÜ*aOÖ/o:oãuÖ>a£:Uýb/ö~v+ª@,¢vOr¢h.ÖÃüZãBÐß©ao_ <*uÃý<ßOrb£~Ub@Oü£~¢bUö>öoöÄhîvrbrîvb<rozU|¢ Ãªbr¢Ã*~ðvU.ÐÐã_CAZß/@AhUC</.zßÃzov|å>>rðªhð©ä Ö+¢rrvãåO|ðü>rîOª/|B|<Z£ª_båß,B<+ßÐbßBª.<Zbaü_ýaa/@>')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (6, 6, NULL, 2, 8, N'Büª©rübÜ::~Ä<ã+>ßoªZ,vÃb|bå+äª+ªA:ýß>öu@rz_@üZ@obA©öo<åßZ_BCbÃðãbü©aã|aäöBbBÐOBZ_Äzãð./||O@üãB/@+Ã/ýª> @aßab.ßBC/ß|+,Bð©_B:©AAaã£|ÐAÐC©b,ßßC.+')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (7, 7, NULL, 2, 8, N'@a_bhvÜÖ:>b£<ýßo.ãbb+zo@ý~Zßvoö©~¢>ýz~/:vý©oýÐzãzUözÄAAuäab_ýü>Z|,bä<ßäã.ªß,£a_Uv:>ar£ü_ªZhZ>å<Z<+ªª©:+@+CåBU¢|ä<ãv_:<Bî.@UO£~ _h>îv,ð|ßbü£bÖäzüÄZß©ªðßýZÃOorOäßß*üÐÄz:_v::>ãao|rZ:+Ü©ðu©îýÄÖ.ªîCãZ,î~U.ãU,o< o')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (8, 8, NULL, 3, 6, N'ðÄ>ah/ÖbßzÐßäã|+ýÐÖ©¢AA_@vÖÐ ÖÄoh<ÃO¢ãoüo@/CB:@zîüO_Üö åÃü<ä©aÄbª|£,o+Öo~Ü>B~ð/bÐ:ã+~O,roß>£*zzoß,>@ßhh_raüa/uZÖ@.CrO </O:U*åBßZ<*Zr.ðvªzZO|r+Öð>ÐhðOBý<ðb *îÜ£BrÃ_bðB ªh>îåoîußÃzähüåB++ßv ªîÃ@¢B+@ã©ý,._ß©rBzaä>©~ð@C ~oÄCãýýuß+Ub_Ãýaz:Ð/B.Ov>v<BuCªCübð©üå|._|äãäU<o@©v<ÜÃUOý/ª|@îaÄÜCB>ÜzA/å å@_*,vÜ ||ãh*ZßÐÃ@výî¢|obÖhü+u¢ã~:ßÄ££A*ÜO*/ä£ÜßÃA¢>oå/vü+v£Cßö ðý_î<BBA<îuÄZCZ/ü Z*ªC©Ãa@Ðv++UüUa>åBå ~ö~Av©ÐýãbãÃÜ@ªÐß ãåü+ß©C©U:v¢. BaÄ,aB.AZ_îr@Ã::£ZÃ|Ua+uCðð~/vÄu©@~ÜßrÄÄîß~.<¢h.rßßýöäbB¢<vB')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (9, 9, NULL, 2, 9, N'ã©_aB©¢/')
GO
INSERT [dbo].[BugsDefectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (10, 10, NULL, 6, 10, N'.üÖ>Ü>+¢:ÄZß/>o ðª_Bu~|ßbhz@o+/üu¢Ã©ÐÖ ©/ü|C,Ð|ª@z>ö/|uã,ö.¢rä<bZz~ßß<~OZä£Ua/,*~Äýãå<_©.ãvß*Ã<~<>ãBoÖÜbÄ £|îüßü_bb<ä¢OßÖð,üußãª+bÜ@~zrãðöC_ßüÖ/AzUv£ýÐãzA u*ßßð>brärz+uår|î>¢üßOüöð_|ö+zðu|ýü<CCrbÜÜåuÐða,//ã ©b_b,äî+ðBß_ZBßUîÐ')
GO
SET IDENTITY_INSERT [dbo].[BugsDefectTracking] OFF
GO
SET IDENTITY_INSERT [dbo].[BugsProjectTracking] ON 

GO
INSERT [dbo].[BugsProjectTracking] ([Id], [Number], [FailureId], [AssignedToId], [ResolvedById], [Comment]) VALUES (1, 1, NULL, 5, 8, N'raZÐuý_O@ö<~_<:îBvrßC©ü*ð£CÜ<ÄabABä@Ü££ðãÖ~åbÄ_ ßý£o~>:_böß~äÜÃßð/_:¢ðh/¢vý*bbZuBßü>bä<_¢z:ãäbbbbÖü¢oBÃäär@z@B:ü©~<bßOÖbüaß :z||rîZzC£baBC£ä OA@ã>OZ~avåaî©ov+,_£üBªßoäa@<üÃ_îÐßýZ<ühZýr¢,zuýîÐÐÄBu+b.ÄÃ£oÖBA~*Coäoüî/.*üåü/ã¢aªÐUü:Ã+Ä|~Ü ü@åObArbCÐÜßvÃä,O:vãaoh+ßªî.Üoª+CB/ßBÄð.£_ååü.ÃÖßý@C özß,@+/hÜ')
GO
SET IDENTITY_INSERT [dbo].[BugsProjectTracking] OFF
GO
INSERT [dbo].[Builds] ([BuildId], [Name], [LabOwnerAlias]) VALUES (1, N'Astoria', N'davebarn')
GO
INSERT [dbo].[Builds] ([BuildId], [Name], [LabOwnerAlias]) VALUES (2, N'DataSet', N'christro')
GO
INSERT [dbo].[Builds] ([BuildId], [Name], [LabOwnerAlias]) VALUES (3, N'Msxml', N'steveob')
GO
SET IDENTITY_INSERT [dbo].[Colleges] ON 

GO
INSERT [dbo].[Colleges] ([CollegeId], [Name], [City], [State], [CountryOrRegion], [Type]) VALUES (1, N'University of Washington', N'Seattle', N'WA', N'USA', N'U')
GO
INSERT [dbo].[Colleges] ([CollegeId], [Name], [City], [State], [CountryOrRegion], [Type]) VALUES (2, N'Seattle Community College', N'Seattle', N'WA', N'USA', N'C')
GO
SET IDENTITY_INSERT [dbo].[Colleges] OFF
GO
INSERT [dbo].[ComputerDetails] ([MachineName], [OperatingSystem], [OperatingSystemVersion], [Status]) VALUES (N'christrolaptop01', N'Windows XP', N'SP2', N'Ready')
GO
INSERT [dbo].[ComputerDetails] ([MachineName], [OperatingSystem], [OperatingSystemVersion], [Status]) VALUES (N'christrotest02', N'Vista', N'Sp1', N'Ready')
GO
INSERT [dbo].[ComputerDetails] ([MachineName], [OperatingSystem], [OperatingSystemVersion], [Status]) VALUES (N'christrotest03', N'Windows 2003 Server', N'Sp1', N'Unknown')
GO
INSERT [dbo].[Computers] ([MachineName], [Manufacturer], [Model]) VALUES (N'christrolaptop01', N'Dell', N'XPS M140')
GO
INSERT [dbo].[Computers] ([MachineName], [Manufacturer], [Model]) VALUES (N'christrotest02', N'Dell', N'Dimension 4352')
GO
INSERT [dbo].[Computers] ([MachineName], [Manufacturer], [Model]) VALUES (N'christrotest03', N'Dell', N'Dimension 820')
GO
INSERT [dbo].[ConfigFailures] ([ConfigId], [FailureId]) VALUES (11, 1)
GO
INSERT [dbo].[ConfigFailures] ([ConfigId], [FailureId]) VALUES (12, 2)
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (1, N'ööb,ßüUªvC+u~ªäu@îä::UÖ<BBöhä_<üo>ÄuZbZUä *BhßðÃÐÐÐ|,ð/ÃOªZÄACÐÄ¢.bbå£ö/ª¢~Cî© Zov,hßð~UbAAÃÜ~uÖª¢:ÐÖãßBßzöÜ* ß@va_ÜÄ~îÄãßAäªU£A.ß>vr~_z:z*>üßîÐu@.ÜA:baÐÖîößð>_£ð+@ß_ Ã:uz,U,ÐAîZ£bãäýüÜ>@:Ã~>_ßßäb/+îÃrÐzßh£Ü aåA_Z.ÄÜð.Ð aäaåÐÜ~/_Ã~@+öåB|OßhÄr:ß|üU,BbCA£~© Ð/b+b ÜzZ>o @ªuÐ~ªªß.rzÜ@O*:||åßv|+CC:b,/h@bßîå<ä,:Aýåð@hZãäüzÐÐª+büUB¢h@r+v©Uü¢zåªOCäß,£ãýßªr.C.ß:/ãðuÖÖz>Ü>£ãå r_BÃ_ªÖ|©z,Cß@ ßvãåÜ_ß,£ä.ß*AåýýB>.© .äOÄäoªã¢üßOýUßüBß.o/ãCß,_Ü ,azC£:ãýÃb©£ßßu:aOA£OA', N'ý>î~Ð+ z+Z/¢£Ã@_,ßvACÜ*ªª©ßr@hh+aªCo_vU Ö*v@+ªß £>U*Öý|uhZüb|CßUhbªb|+ýh~övÜ>ãuaä<|Aåß¢AAåavzOÜ¢_A,zýÖÖZ>CÜßÄßÐzbörb|Ü* :~aÃ*Ðß.O¢u::ðaCÐv@ÜAß UhÄr*üÃbÜÃbä,ÐbðÜZ*¢b|vãhðB Zv|z£vÜ_£@<:<|:Ü,b¢+© Ð<©OU©åäb.ä+ß@CÖuhö@vUßîo>C>:BzÐ©ö@b¢:aC©ß<b~BÜö£¢ã<.hb<©ÖAÐ_+,üBhÄãýbhÜCãä<ÜÜzbÐOãßUßz@åA.ä.v|Z,@ö:,öö~>b+~v~Äî/ýa+@|ÄvãOöö£v*ãv~bUßä£ßuv O:ÄUzz>./vOÖßß©¢uýýöUÐ_zÃ>', N'~*rovU_ßCð¢£hãð|BãU/hU.ßuzb:ð,|ßã.ãBbA<~vä')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (2, N'+*ß,ßüuãvAö*ð,ðüObîÄ+ßßÄaã>b+©oZÖh/ä>Ã£öOÄ_ß<>o©B>.röÜî__B,ü:o<~å£ªÜöb<</ö_£ZaU@©ßýävü üuîz,Z©<AUöðãå,ÐAAðÖaUUU_ääz£oªzîz¢_bÖbrÖ:>. B,¢ZBüã*r Ðý£', NULL, N'+ãä££a@vã©vöÄý_Ðãð::UA_rÖüÄüî|,ü|Ü,ª¢ÜÃbå+/.Ãî¢rßýhÐ bO Z£å©z_*vvz,öªðCbu+~ä~C@ã >Oð.©£<~b ýåaÜ*aoo,@ÃªäåB>ö>zÖOCb*ß*/äª£î*_ªhou~uä.ühz£å b OÃýZzhäã©üý~z_Ð¢ bUÐðZ+v: rýÐÃðA,@/üðbU:Zz_¢UvC/.Ãzßbz.å ÄßýöåCüAörßCÜÄUßß:ªÐ')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (3, N'OrÜ|b+Cü', N'_¢rvv@,r|~Zb z£übýZãßo~Ä¢ÜOzb~ðýC©|h>ý|Zb.ooÄBå:ðbzhÃUz,b>', N' Bhý©zü£Ð>:b.aÜ,ý.ý@åÄ+ývßzä*Oba+böüvO>.hUÄ.ªUÄÃ<ð,£>Bª¢ÄhÄåaBZ|/:Ä bßCßî~,£ýü,Abª,/Ü.>v<zUh:¢,Aöoýo@+¢£ß~ÖðÃü¢ÖÖ©ß,ÃäÜaö/äÖ|ý*vO*ÃãýU@ÃýÐ¢r©|~>Ã>,ßãa B+ürB@åBßu<Ö*vßÖ@oB,öu|*+ä*bb~|/oaª:AA/OC£ßýOßUuîÐå¢Ðª+äß¢ãuoßaU©A~ © Ð>ÐðZz/~o|¢zo ÄðÄ|£Ö£,OrAZ£|zo')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (4, N'||ý,îß b/u:Zªa©©@Ö A©ð© z@åý©äZa Ä|~* aåU|z/ðîªa¢üA|ßrU£î£b+ð .|ð:öå:b rÐ:ßCªu..ðå+ÃßÄrh<ð©ÃU¢öîhÖ><öÄ|_¢ãã*,CA©U©:böÄÐuvß.@,£üB>åüãÄð:uzßbýåãÐ*åý/|Oåö/aZrCZAhýäÐã@hOüzruÐh£Ð /Bb£.r,î¢ð_ã/Ð ðZÃbhhýurÃAh*öhßÜvöÜAu,Ðß<ßu~ª*_~äZ::|ªO/åäö+bAü<BÖ|<özÄîöZ© Ö¢ª >_>£Ã+u©Ö*o+/+Ð/äÖ>äßb¢|~|>Zöä©UUªå@_zÜÄ_îÄªh :~|u:ahÖ_/ððbhäöÄî©îCß<uå|üÜ î*a.vBðÐÄ,£C>b:ªªU£ã~OßöUr£B  îA+/£bî@ßbörý>aß¢ÐAªZz ðÐÄ_bOb/ã,+>¢Öb/+ÃB:ªî,rzð/~îbÐb~Ä/Äö@ã ÄªBßªa,A_z©ðOäÄa >UoÐ>_ß© îîz+>äãÜÐaß|ªz@.A~,ß', N'ý/+/vÃ~ubzoZB<ÄOßßb.hÄrÜîö¢ :ö.ä/Oðåab~oO>ö@,zrAÃäÜ~Ä<~vu~_ bvÖCåZãð|ãoÜuîu£ÜÃ+~Ð~¢ªOãoöª££.@UCîÐß¢B:Z<äÃý+ßUö>_rüª<£hðbhîzðOÐvüß îöbvC:CÖðO:*Ä©hCu_££v~î|ü|ü|©öÐ,ýðA|<ðãh*årÐ~ÜO£Üb@Ä obzb>z_<|bý/b*ß¢~¢zÄ>Z++oýO,zÜª.AbããÄ>ýªz©ßßuZ@/,AO/uaãåÃðå@CoOÜ<|.a@öîb£Ã,ã<|oä<ÖývªorAuöoÜ¢<>o<Az£å>î:CBß_ªý,hÜAA+oîO ++Ü|ßC:OrU*:U@üüã_o>*©.U|aa~/Cý~äýZ>Ä*©a¢¢*+£öåvbb_¢Ö©üÄö_aÜCäÐbUÜ~', N'<v>äoäÐ b~ªhÖ_+~+ßOA|_o îåÜîvCä+¢a|ßAÖªßU+îö.¢* +<åü,u©ðCoüvBãböÐU@Ðü~_ªu+Ür£rðv_/@ÜUîü,*£ÃåÜ*Ä, üuoBª*ÜövÐA/<ZîuÃÄ£zvÃßZh')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (5, N'î£ßä©,äÃüÜoðBÐãýoðöå+Ü©B¢bBbv,åüuAåZ/å+bª~ö:@ß||/Ã©*r>üCüÐUªZß.~årÃbä_|Z|åvÜãu|ß>_¢|Ð_ÜÄbÜ Ã¢ÖÜßO*| B>Äåh+ÜzuOZÖO.CÖOãã .üýbuä©ßB<ª<©uÐýßÐ/*Ü:>å<|@r£A¢ @uîC@¢©vÄürÖ~ß', N'ÃCð/.>|ö<Bª£*:obãvü/zª<rbo¢ßvÐz©>|@_BOða£ü£.aAîvßCîzã£¢b£Ä+UåÜÃÐßðoßð¢ý©*öÜ*übObU*ýhãaßãð:å+ß©håvî¢BäC*rhUöîäZB~_ ý@ß|îßCzä<Ðªä©ßîBb/BOhaßýªbðý£*Zã<©ªbÄaãü|Uä:_+ZböOAo/oä@a|zÐr uh/Ö+arã+b~C¢åh :uÖãA:zh.zßBbhÃBÜuAÐaÜýZåCßü|z_ý+©Bbý*ZÜßz*brBÖU+>*,ã,z©u<üð£ |BÜßÐ,b¢C/övîÃ/ðBÜ*|ªbühoü*/ä>+*C>ÖUZ,+*rÖ,î/~>¢uZ,r|bÐ>h¢£ÖA¢Öªb~h.ör£Ã,ý+ä©bÄ|<Ðr|BOßbÖUC£Ð¢z|ýÜää/b©A¢Ãß|Ãäßbðbvz.O@äßB£ÃBaüÜÃßäîräh.boð,,u*å/AÐ£+aoßvýb*.üö¢ÄAååaîåböäuvUC<|ÐÜvbZ ,©£b£rßßaBuZÃ**:å@o£Ã>ßå_o@>ª£Äî*,¢uuðv©ZoähAü/hrv', N'å¢£îåÜ@>ÃZr*, ðZÄhuöU>+_£©ã~Ä+Z ÖüaÐÖÐ*:.Üýýö>ÐÄAh.bbð<,UBUuðöÜzýäª.zr_ýßÜ_<>,~oðh|~üuZã<ª>£>C_:a©aBå ,ß~/ZZ+aåä>bZß+O*Ü~ÜðÄÄî<©ub<ã+>v~ÐÐa@ða:<Ð¢h.ßÖBßzu>C,ÃCÃö¢bZ_b<aßÃb¢Oßã~z:ýbÖbã<ý£@oahrb¢ ~zöoð©ohªhÃ:£>,îßðÄbðåß~zî_ a©>aaäU_£o_zð¢:ÄÜ_aAÖB*v ~.Ä>+äAhßCö¢©/ßUãv£,.CZ.BßÜå>|îzu©/:_AZz@oB>@bCBuÜîãÃåð:Cz.~Bh¢Uu¢,ýý Äßý*åUaÜåaÃ©©Ð£bª*Öý uªÃr,_ãZîÃCCåbBä*ýÃ: ..å.:åªoaAUaa<rZh>Ä')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (6, N'ý ~|ßÃ|rv+b_ýßrßßð£UCå£äBä|å|u>ýZã/bzä©OAöÖ©O<a©a<*|bî+B©Ä:ðh©¢AäbUo,C>ðv:rOhýÃ¢äåäBåöð+: ,ª.Ðb*zÄßBuãZåü.zªÃrüÃAßbUß@hðoäÄbÄî@@.ãä.O~.aªýh:£ ©v+Ä~~©ß_Ü|åö*huobîÜOä _@/.b£ß,ÃZãO/©a ðã¢zbãZ£bä+ßb|ähßðãOho¢hÐ,åªCOÄ_oÐüð|_vÃuÜ+Ova C.Ã*@ããOÖu<~ÃüÃ_åoß© ~ð|v©hö', N'/åÄbÜO.ßOÄz|rÄBü|Ð_U>A/*a@<CbäÃåßüÜ~ä¢O@CbüC*Ö,u<zB..Cz,/*bUÃzÐ a/ÐUö>Cö_AC/b aUhv£ÜÜv<Ã£+o>|ðßß £BðAhZüOoå,aä*C*ßC/£ö|ÖöA~|*ª+ªrZC.ubuaý©~¢,bÃÜAboÖß+o+B*üý_Äª~ÜvOÄÖðåZªC:ý+ö*å*ß@z:¢ßãCÐ åCu:vbaãhåýACoåoÄðOahýb£Ðrzho<*~aªao+£Oð+Buý*Ü.h~:bîöÐOåA~ÄbÖä©£_,a@oÄßbÐv£AÜBZüÜo|Ã,/£Z.ChÜðCo>/|:üÜîýä©AO©BhBðzÖZªzüvBÖÐBA|aCªCoªu¢ räOÃA+vürvar<Oß|O:Z*uAßöZ©î||ö@åZü|/.¢öåãÜ_ãA+_öÜ_üoðZCobu,*<Ã.UÐhî>ª,h|>,@/>üððhöÜaü+üaä', N'rU~.h*ZBî<A*,..©@Ö©£bz:u_î,Z+oå¢raö îý,Buåa:B~,ª|Ã/vrÖzåÜ+åuöaÄÐ~.o,:BÜ_+~/rZahö@ßÄÃÐ¢//Äb|_BohroZäÃ/ýo<ðîå¢ B~ÖuðÃoZAýöýÄÃ,_u/u/uAah:>@£UÖßÖßCª<ßzO:üðCZðÄÄzÖöÃ<©OBb~ªÜ.O@bvorOªBðÐðvÖ:zðÄuÖßuåZb*b')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (7, N'_åO@ÖZ:ä', N'Ä@CuãrÜrîÄßhå,A¢ü¢Örßh|~|A_,><a/b~@u©ýbBZzoîu,aß>C ãC¢z~ü_©ß©+Ä/', N'bzåßüü|©î©ü©*oAÐî,zo /vðvC U.ð/ÐOä Ãð©h+v/Ð£ªzO>Üð<zz_A¢Aö|ã£ UýuU<>ã ßuUÜîåÄªzööß<</h.¢ãÃ©ýCzÄöOÐ.+ßÃ©:CUb@£hð.¢ªîßãÜ_Bßã£h©ßBöböÃýröhvoa+ObåüÃÜU+@,åB.O |ýA@ßzoC:Ä/öu©:£©ß.*Aðäö+.:')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (8, N'OãZßä,ou¢ubAö.vvãaÃbÖrvaßZ¢CBo+ã~~Zäoh*Zz/bª* B>ªÃ@.Ö@Üü|vü~ÖAh<äu:*h,BÃ£,Ö o©©>rh>,¢übbß zåOÜ_vZ|ÐhäÐ+u~ãÖ+Ü:ßåª:,¢_Ðãîh,|ßBu@åä<A~ö@£:ÖZßßuÄZ*@.vÄ,îÐ|Äãa:O|C+zå>z.uöbßðäUðbÃ.Brv©öß<öÐ<äB@OvOo/< uýðz:Oå:b<£©o~+üz:.>,||ö*ä|££©b<|*rBvüuÖðaîUãrðößZåÄAýö©/ýüª¢Uß+.oBß,vÃ*u£|+£zBoð', N'+Ü+:~,@©ZýªhÃr@ã©BC__~_<+/|aCåßÃa./~AÄ@.ä~.*¢@åOh</bßbZÜUåBhã@_,OðCZÖößü~Ã©üOräã|,å£:ÖåðC©*o¢+~*AAoÄ,~.O©:<C. ªAaU~/£îð.AOoB~¢*rC ðhAh/üýÃüýZÜ@ßbzh+ÜhÃhBÖ©u/z~ACvab,:aåß¢:öððCv©*AZ>ü.ü¢ßAZ<u_©BöåAÜ/.ªzv~oÃÖrO¢,_bZz_oãA:ª/Ä,~BÜãübB>uö.ýu+vvå~ä©b©:,ß.ÄOÐüßO~åabðîuC@î Cäzzß|Ö~a|b î¢+b|*ðÜUoU.*+u*ü*ÐhO**@<Bðªü,Üª@_B/_ã©Üªhbö¢îü.*,ª©ãðh|vã|<.zßä+¢åßZßßCÃö_bv,î~h>v~ÜCÜª.@oÃZO*Z*u~ýaoh|~>üå+Bzäöý îArbväZ,Ö¢Cã>~vÄAßî|ü+ÄýZhîuzuZÖzã/', N'hzhÄÜ,ð:£<ZC,vbA.+_ ußhöbB@**_£ha|å>ÜãrýÜ@¢£ªBîöUÐå<îðî OO£©ä~CCßh')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (9, N',_v~o|_ÃO<*üO~B¢©oUB©_z~O@Cr.>ã<ýb|Ä:Z *+uoÄãÃ<Z><:£îAoãu©,¢/*v©¢åüCa,o+ãåÄ/,ªÐ>bãÄöbO~üîÄ<ÜîÃðAö<büÄ+vBzbßazÄ:¢öå~~£ ¢:Zarzî+<hüÃ>î@ÜßÃ|ª¢ü+|£OväãaC +¢ä¢©ÄoüOðª©A¢u_CoBîAAÃ£BÐ*aAb@:a¢zäbåCB@ª.Ä+Ã@AüÐÐÃðuz*ör_ö*höh,h©.z+<uba+.¢ýZ,rzbzzã_Ü üðä*oÐ+©ZzUACÄ~U@¢îäåÐöîhÖbB¢ß_~åb*/¢äåZaÖ ©b+b~:bßu¢ð/uüöu.©ZA<Ö£ob+hª£Ð¢ãC,väÖ©:¢|a üö¢C<©£<ªÄÐäð,uAu :h<ýB ãÃb:Ðu©<:.Ãu.U©ðavAh,_*<_£uzBäãüäzZÜªOÐ,bv,>Äa¢ý£@huüööZ*ªðBý++~|Ð*Cöî ß@£', N'hãÖ_AU£|Ð¢ýî+ý/ýv¢,©åßðý£>AÐO Ã äßo>ã+bÐÄßäöÐ:Ðü<*_åU.UzîÜå@uî,.ð©A', N'ðhå|£übüýUOÜbvãÜßb:|ã~b>|@ß.:Ab/OC_r© ~/O*ð@ÄÖo£_¢Cª|aý b,aho©@ürÖ~öÐ£C<<A,<©_ßß+oåßî:äOCuCv :v@ãü öorîå>£C_ª>©_ªrÜaÜÃbÐî,ß@_äoAÖå£Ärã£oUýzU*z|ª_|©CÃvÐoîªbÖ,,*£>BßÐäü*Ö|¢Öß+ß,~ãrüüOA <h<ß~ßåÖã¢£ÖU@ßÖ~rî|b>öÜBu<ðr/,:<Özª,oÜü©äîoÄbhba:+ÖZ:vürÃÃ* ö|,UrZ>uu+//öår~ÜbbB.ðÖb¢Oa< ,Ã<.£Ðz@î@Ö¢ãÜBð *|b+.¢¢vîaß ¢aZaåß©üAZoåbå|z:~h£hzß/,öýbãhÐÄ>OZ><¢üö.üzb.rZ_b ß åoOzrã¢ðãªhå|/+î~bãã¢OUOaÖAr£/ý> ,ã*aüz¢aACßã.>ýß,öa>üÄÃðaz/ß.v.ª¢_o~AåªÐrã')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (10, N'/ ~vA+v<ýý+Ão.a©åß~ÖÄrrå ,Ü@*vzhCª<©ÐoÜb', N'¢¢O</¢åöä+Uã+uCÃð£ªÐhÄÃu|_ö ðÄA_ÐÜ~~Ãäöo¢..ðåZuv|AUC:vÜîðöîå©|ah*ÄC~£_ýbÃ/CÐzÜ*ZzÃÜî<ðB:a©£Öüb<b,v~oO£ªaAO/aobªoª¢|ýÜC©.¢£~ýåUB¢üb ArOB©bÖäz<bzöb>o ><ZZ~o@@b¢CßbßbCÐ~ö.@îðAU+ð_*£ð,BÖC<Öb/b£~ª:¢bu©AOr<|Ðßª|UAuuýO.ÃÐÃzÃ|*ÃhåÖöZ<.Ohv@o/:ã*ö@ð@auã©,rÖå+îý:ã@*©ýä BããBü:AüUî**O£ã©îbb|bÄ@ßuvbzîBO*BOß©Ohåu+u@ýa_ßßaä/ªîzU+ AäÃ,ÄbhÄývýßO<ÜOäOãr@ß©:Uzb©|:Üö: ovOß©O+vaZßýã+£.AC,OßuOuo,a<o_>b+ã @ab@©ãUÜ,£v<©ao.£_v>ðBö£voîC<ÜÜªýbh.ýªÐ*~/Ü~îð :ýhã>B ..b,v>ðCzªå£<¢åÐ.bßðð<z+Ö ß:C öv', N'£Ä+~*u.:COÄU:Ä|vÄßÄO,ðCÃ£ð©<ýý©ªhßýO*ßÄ|@<+h£>åCåä¢o_ vÐ~Ãö._ð:h>BC¢Ð,îåBh£ð_ýAhb|ªh*>bß|v~©äZA~au¢_+U+>öÐb.© Oª©ß*ý  ÜýA b<ßUAßCbî +<ÖßOBO¢/£CUBýabðAUÃ/¢>bOîÃÄÃvzª.ãUOb|ßuhh|,rã,ßuüäbßuåÐüÄ¢v.<ðo @ßUÖßa+UA|ZbCã*@å<Ð.UÜrö>r*ö@ß£r,bÃahb,ü>ãß£ª©äävÖ_ýrÖBÐ¢ZU¢£/Ärîb©Ao*,ßbÜî,ü_*ã*>©ÜZ£a¢üö,ãßÜzbCªÖ@ýßÃð+Ðð.ãÃÜbö.ZoÖöðUbbbrö_üZ<ãv+ßãã@ßÖ,|')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (11, N'BU¢,<ürhß©äC¢+Ðý:~ðåöãuªßýh>OB_|ürÄªãbÃOÄuãBî+¢U+ <~A¢Avaa~>ßÄüÃhzh.£hh.îÖOÐýhÄ:*åCãªö@ O:~ß<r+avoüªurªuOb©Z:zZåzChð~CbOÜßUr_ öÃ+O<ãoBuoZå£_ZuääOÄ>*b/.hbßß.ö,ÃähýîZã:Ärîý¢Ã:@î_ð,Aãß~£öÖ Ö*Zßrårß.Zz~AÐýz:bßÄÃ_îv<|+äA_*ü@@Ã+ðBÜÖ>©CªU**zã@h|hb¢r:az£>*Öäö*b@A¢+*zbrA/zAhrba@.Üß<å>îîßCUoîv£îzãZrhÜvBãªÜhýO// u:O@|£@Ä:|OßbCo©hã+ßß+¢@Ð£vÐÖðªÃßã©ß<+ÐOÖ<ÃubZß>ª<ã b£>äß£Üð,Üö@ö>ýr/*OÖCOA Ã./:äÖhZbv¢o ßaßªßßü@ov~Z~bUZBuåªoo,r b¢£©/©äãä¢*+oz+bß@oäovÄîýýbÖ_O£ªªvÐO ãÄ~Ä:Ð/åðöð>_*£U*oßðÖÃ:¢CZÃüÖÖå|rÐüß|hÄ_vabbCUaßa+UCðv', N'vö~oA<hob*zß,ã©r:v£Ð£.@åZåö+>Ü£ðoß_¢||>ÜååýÖör.OÄb©©ªã>ä/Äåo_Ö£ZÄ+¢~zA£îÖääÖ', N'ðb:Ü©:Büz z©Oã©*UCuÃA~|ãä©,ÜîÖüÐ/©ÜßÃÖbrOÐbzv¢ãßu,ªÖ@ÐÄ*@¢îab b|+|u@bå©>AA>Z@v|uß~_>huuÄö/vbãbCã©<öÄ, Ð ÐCÄ>u/ßvb©r>ß|/h*@|£ªª£üð£¢bzãß<ãrÜa@Ä<@ªaüoå¢bCAß*åÜBÐh<Ö||ßÜöUäÄ£~ß/¢¢AAAª¢<bZª@a@<öÄÖ<£_ÖhðÐãbÐzoý< ªOÐãÐbC>ý©ZüZÜ.ÖîaåBhîä<Czr_åoîzCr,*ÖBüÃ+h_Bäö/b£ý,oB,OÄzUÐ/ä~ªãÖýäB+býßbrÐa+ÜªoähååÜÖrÐAÃA@*@ßÜ_Ã*åB Ã|a~Cî©O*_¢||ÐÃÄbaÜhbÃA<:@+ö:©/Ðb@: åO£Zbã >åßüBbß¢ Cüvý@@C~_ÄÄÃCî<AZ+ãå+<bu*@ª©')
GO
INSERT [dbo].[Configs] ([Id], [OS], [Language], [Architecture]) VALUES (12, N'*Ãhb:OhZoãü~Ã~+uhZ_©ä>¢ß@B:av£ßÐöÃzCª>au¢ ß_.r£b¢ÖBßãöbäb |*ÄCa>aU£aZv¢¢Z b_Ãb,z:.,>|aåý¢:bvö£>>zz_O_¢Ö*h<_@î@OaövîZÐ@öý+©,ãr+Ã¢ß|U+@rÖß©A+b<*bBZA ©ÖrÜÜ*|ßåuðoÜÜîÃ*vß<Ð>b¢Ãhä@a~Z|obaä¢Ü:aü.åªÖåªz|£Ðã<|~OÃ~b£<bßZö*ýÐÜbb|ßÜ@ ª:äß_|ö*ä:bª:ßObÄß@ðª~©,îå@@~oaÄAv|uÄvBðB//<v+vöåAäaUªÄAß:î£b/ÜÃ:+~rvö /ÄªßOoOC@ª~£_Za:.__.U+:å©©ÐAîßbÃðÃ/Z¢ß@ä¢*+A<ßu,/îo£Ð@BbvÐo@/ouÐ_åÄääÄß¢aÃßîý..ä/ ~ý¢.ü,ª,Aî¢a/<C£>~b+_Ðb_¢AÐObã ZbB|UBCðzU<©ðýaU Ü*îßÜbÜäîBÜð©.zr|*ð îå_+£ÜCbbo_¢ß.,Äö>>azÃ a*a£ßo<', N'bð.îß_OaöÄßÖ|ohvaªUbäðau__A¢hzð~ßî_äa>ð, <bªå|:Oå,ß|uZÜoðO*U>_å£ßuü£ªvU@©äÐ+ã. ýBãÐÖ>**>C,ößh©åÜª/ß£ªß~¢hZå+|.z>ã+o©ßCh/ä<@u /+ýüüÖ.ª©,ZvC¢u:ýöÄb/üÜ>uü>Z*ÜCv+ZÄîå,~£îîOýä.Ã>ðüå_ßhå:ª<ÖavhvåvAåßðz|~*bO_ßß£ßvý*+î~:u.UZ,£|+Ö¢ZÄã@ä~¢.ZOÖü ©ßãöÐZÜåýÃ|£.©aoðÜÃ.î@bßZ..Ðüª,Ävb~<|ÄãBüÖZAZä/îªU*.b_/hÐb£ åbî+zä,*B_ªuö~:oub@.ü>hÐUý£Ä£/Ð>', N'uðãîÐ.<Bßb¢h:<BvîÃ@U*+ðOCzr©Ä£ßBo/*@zz BðäÃbCC@O¢+@býßoäa©ß.uß,oZ@ýAC|ü~+/ <ÃäbaßAb*CÐC*v>@£@îåC<@Ü~C<bb,öÃ|<©ooªÜªrÖbA_,¢Ö¢bzb:_raob:åzüýöOb|äª *AÖz©*/>UO<Ð/ýbåUaZ©ýBhåzUÜBã>ãÜoZÃZzoåã|©ßv,~_aäzß_|ð*vîåý/~ £Ö*Ä|hzß~bC/B vä<ÐÃÜu_©Zruö/,/o/UUabðÃa,ÄbÄÐ/hãaýA,vÐßBC')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (-9223372036854775808, N'ocelot    ')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (-2147483648, N'cheetah   ')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (-1, N'cat       ')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (0, N'tiger     ')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (1, N'leopard   ')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (5, N'jaguar    ')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (32767, N'lion      ')
GO
INSERT [dbo].[DataKey_BigInt] ([Id], [DataColumn]) VALUES (9223372036854775807, N'lynx      ')
GO
INSERT [dbo].[DataKey_Bit] ([Id], [DataColumn]) VALUES (0, N'<Root />')
GO
INSERT [dbo].[DataKey_Bit] ([Id], [DataColumn]) VALUES (1, N'<Mapping xmlns="urn:schemas-microsoft-com:windows:storage:mapping:CS" Space="C-S"><EntityContainerMapping StorageEntityContainer="dbo" CdmEntityContainer="northwindContext"><EntitySetMapping Name="Categories" StoreEntitySet="Categories" TypeName="northwind.Categories"><ScalarProperty Name="CategoryID" ColumnName="CategoryID" /><ScalarProperty Name="CategoryName" ColumnName="CategoryName" /><ScalarProperty Name="Description" ColumnName="Description" /><ScalarProperty Name="Picture" ColumnName="Picture" /></EntitySetMapping><EntitySetMapping Name="CustomerDemographics" StoreEntitySet="CustomerDemographics" TypeName="northwind.CustomerDemographics"><ScalarProperty Name="CustomerTypeID" ColumnName="CustomerTypeID" /><ScalarProperty Name="CustomerDesc" ColumnName="CustomerDesc" /></EntitySetMapping></EntityContainerMapping></Mapping>')
GO
INSERT [dbo].[DataKey_DateTime] ([Id], [DataColumn]) VALUES (CAST(0xFFFF2E460152FC77 AS DateTime), NULL)
GO
INSERT [dbo].[DataKey_DateTime] ([Id], [DataColumn]) VALUES (CAST(0xFFFFFFFF00000000 AS DateTime), NULL)
GO
INSERT [dbo].[DataKey_DateTime] ([Id], [DataColumn]) VALUES (CAST(0x00006FC600000000 AS DateTime), NULL)
GO
INSERT [dbo].[DataKey_DateTime] ([Id], [DataColumn]) VALUES (CAST(0x0000901A00000000 AS DateTime), NULL)
GO
INSERT [dbo].[DataKey_DateTime] ([Id], [DataColumn]) VALUES (CAST(0x002D247F018B80D4 AS DateTime), NULL)
GO
INSERT [dbo].[DataKey_Decimal] ([Id], [DataColumn]) VALUES (CAST(-99999999999999.99 AS Decimal(16, 2)), N'oink      ')
GO
INSERT [dbo].[DataKey_Decimal] ([Id], [DataColumn]) VALUES (CAST(-1.00 AS Decimal(16, 2)), N'Neg val   ')
GO
INSERT [dbo].[DataKey_Decimal] ([Id], [DataColumn]) VALUES (CAST(-0.01 AS Decimal(16, 2)), N'Small val ')
GO
INSERT [dbo].[DataKey_Decimal] ([Id], [DataColumn]) VALUES (CAST(0.00 AS Decimal(16, 2)), N'zero val  ')
GO
INSERT [dbo].[DataKey_Decimal] ([Id], [DataColumn]) VALUES (CAST(1.00 AS Decimal(16, 2)), N'pos val   ')
GO
INSERT [dbo].[DataKey_Decimal] ([Id], [DataColumn]) VALUES (CAST(5.33 AS Decimal(16, 2)), N'rand val  ')
GO
INSERT [dbo].[DataKey_Decimal] ([Id], [DataColumn]) VALUES (CAST(99999999999999.99 AS Decimal(16, 2)), N'hoot      ')
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (-1.79E+308, 0x4D696E2076616C7565)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (-1.5, NULL)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (-2.23E-308, 0x736D616C6C206E656761746976652076616C7565)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (2.23E-308, 0x736D616C6C20706F6173697476652076616C7565)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (7E-06, NULL)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (3, NULL)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (5.1234567890123461, 0x6869676820707265636973696F6E)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (3.5E+38, NULL)
GO
INSERT [dbo].[DataKey_Float] ([Id], [DataColumn]) VALUES (1.79E+308, 0x4D61782076616C7565)
GO
INSERT [dbo].[DataKey_GUID] ([Id], [DataColumn]) VALUES (N'00000000-0000-0000-0000-000000000000', NULL)
GO
INSERT [dbo].[DataKey_GUID] ([Id], [DataColumn]) VALUES (N'11111111-2222-3333-4444-555555555555', NULL)
GO
INSERT [dbo].[DataKey_GUID] ([Id], [DataColumn]) VALUES (N'66666666-aaaa-7777-cccc-edededeedede', NULL)
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (-922337203685477.5808, N'MinVal    ')
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (-100.0000, N'Astoria   ')
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (-1.0000, N'Minus One!')
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (0.0000, N'Zero      ')
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (0.0009, N'asd       ')
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (1.0000, N'One!      ')
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (34.5600, N'qwerty    ')
GO
INSERT [dbo].[DataKey_Money] ([Id], [DataColumn]) VALUES (922337203685477.5807, N'MaxVal    ')
GO
INSERT [dbo].[DataKey_Numeric] ([Id], [DataColumn]) VALUES (CAST(-9999999999.999999999999999999 AS Numeric(38, 18)), N'small')
GO
INSERT [dbo].[DataKey_Numeric] ([Id], [DataColumn]) VALUES (CAST(-1.000000000000000000 AS Numeric(38, 18)), N'ribbit')
GO
INSERT [dbo].[DataKey_Numeric] ([Id], [DataColumn]) VALUES (CAST(0.000000000000000000 AS Numeric(38, 18)), N'baa')
GO
INSERT [dbo].[DataKey_Numeric] ([Id], [DataColumn]) VALUES (CAST(0.123456789123456789 AS Numeric(38, 18)), N'moo')
GO
INSERT [dbo].[DataKey_Numeric] ([Id], [DataColumn]) VALUES (CAST(1.000000000000000000 AS Numeric(38, 18)), N'rawr')
GO
INSERT [dbo].[DataKey_Numeric] ([Id], [DataColumn]) VALUES (CAST(9999999999.999999999999999999 AS Numeric(38, 18)), N'big!')
GO
INSERT [dbo].[DataKey_Real] ([Id], [DataColumn]) VALUES (-3.4E+38, N'ASP')
GO
INSERT [dbo].[DataKey_Real] ([Id], [DataColumn]) VALUES (-1.12345684, N'SQL')
GO
INSERT [dbo].[DataKey_Real] ([Id], [DataColumn]) VALUES (-1, N'REST')
GO
INSERT [dbo].[DataKey_Real] ([Id], [DataColumn]) VALUES (0, N'LINQ')
GO
INSERT [dbo].[DataKey_Real] ([Id], [DataColumn]) VALUES (1, N'AJAX')
GO
INSERT [dbo].[DataKey_Real] ([Id], [DataColumn]) VALUES (5.05, N'EFX')
GO
INSERT [dbo].[DataKey_Real] ([Id], [DataColumn]) VALUES (3.4E+38, N'DATA')
GO
INSERT [dbo].[DataKey_SmallDateTime] ([Id], [DataColumn]) VALUES (CAST(0x00000000 AS SmallDateTime), N'request   ')
GO
INSERT [dbo].[DataKey_SmallDateTime] ([Id], [DataColumn]) VALUES (CAST(0x4E78015B AS SmallDateTime), N'foo       ')
GO
INSERT [dbo].[DataKey_SmallDateTime] ([Id], [DataColumn]) VALUES (CAST(0xD6070000 AS SmallDateTime), N'oOoOoOoO  ')
GO
INSERT [dbo].[DataKey_SmallDateTime] ([Id], [DataColumn]) VALUES (CAST(0xFFFF0000 AS SmallDateTime), N'response  ')
GO
INSERT [dbo].[DataKey_SmallMoney] ([Id], [DataColumn]) VALUES (-214748.3648, N'Testcase')
GO
INSERT [dbo].[DataKey_SmallMoney] ([Id], [DataColumn]) VALUES (-1.0000, N'Variation')
GO
INSERT [dbo].[DataKey_SmallMoney] ([Id], [DataColumn]) VALUES (0.0000, N'Zero')
GO
INSERT [dbo].[DataKey_SmallMoney] ([Id], [DataColumn]) VALUES (4.0000, N'Scenario')
GO
INSERT [dbo].[DataKey_SmallMoney] ([Id], [DataColumn]) VALUES (214748.3647, N'Module')
GO
INSERT [dbo].[DataKey_TinyInt] ([Id], [DataColumn]) VALUES (0, N'66666666-aaaa-7777-cccc-edededeeded0')
GO
INSERT [dbo].[DataKey_TinyInt] ([Id], [DataColumn]) VALUES (1, N'11111111-2222-3333-4444-555555555556')
GO
INSERT [dbo].[DataKey_TinyInt] ([Id], [DataColumn]) VALUES (5, N'11111111-2222-3333-4444-555555555557')
GO
INSERT [dbo].[DataKey_TinyInt] ([Id], [DataColumn]) VALUES (214, N'66666666-aaaa-7777-cccc-edededeedede')
GO
INSERT [dbo].[DataKey_TinyInt] ([Id], [DataColumn]) VALUES (255, N'66666666-aaaa-7777-cccc-edededeededf')
GO
INSERT [dbo].[DataKey_VarChar50] ([Id], [DataColumn]) VALUES (N'', NULL)
GO
INSERT [dbo].[DataKey_VarChar50] ([Id], [DataColumn]) VALUES (N'aaaaabbbbbaaaaabbbbbaaaaabbbbbaaaaabbbbbaaaaabbbbb', NULL)
GO
INSERT [dbo].[DataKey_VarChar50] ([Id], [DataColumn]) VALUES (N'text2', NULL)
GO
SET IDENTITY_INSERT [dbo].[DeepTreeTable] ON 

GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (2, N'B', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (3, N'C', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (4, N'D', 1, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (5, N'E', 2, 25626, 252, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (6, N'F', 24, 26, 345, 156, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (7, N'G', 7098, 798, 7899, 235, 644326, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (8, N'H', 23, 789, 789, 65, 4326, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (9, N'I', 256, 798, 43, 1, 5634, 4, 2, 8, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (10, N'J', 26, 79, 2975, 25, 435, 2, 3, 1515, 8, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (11, N'K', 26, 11661, 9753, 425, 1, 2, 5, 8, 8, 8, NULL, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (12, N'L', 165, 789, 30714, 25352, 7890, 34, 4, 8, 8, 8, 2, NULL, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (13, N'M', 563, 78, 17853, 6354, 790, 5423, 5, 8, 2626, 8, 2, 4, NULL)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (14, N'N', 36, 8790, 91753, 52, 32525, 98, 6, 8, 8, 8, 2525, 4, 3)
GO
INSERT [dbo].[DeepTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (15, N'N', 780078, 3245, 7951, 752, 790, 78, 6, 8, 8, 8, 2, 3, 2525626)
GO
SET IDENTITY_INSERT [dbo].[DeepTreeTable] OFF
GO
INSERT [dbo].[DeploymentScenarios] ([Id], [Name], [ProjectId]) VALUES (1, N'ýU@£Aªzh|/>:vZßbbh,îo£rAuöä¢hÄ|ã>ü¢îu| OÜr|öO+ö|bb~,©öa*b</BÐÃaäå©üz£åä@ßuhöBUäãýz|', 1)
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (1, N'A¢AU+Ö£©Oz å@ÐA£+bã+|ÖÃ,aýßÃÐb >@ÐObZßÜ|ÃAuð£,¢bCbÄo~Aªvð¢u,ðöðCýã*Ü|ü+_zvÃ__ÜÖ¢*Ð~©+Oð>hî')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (2, N'ã@oÃoãz*bÐhä~Ar+v')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (3, N'.oöåü:|£¢+îCZv,@ÄÐ<>..ß~öäÖBZÜOa ,.>b<ÖOuuåå_rÖvÃÖrÄÖCîa**öBÃ:*äråßîäå:uüzZr@ðbÐC>._~<vr<.hÃ@©<ÖäAÃ£.ä.ßZüÐ:ßÃ<.zrýrbßZÐ¢~./ÖÜÃzã@ <U, UbªU¢Ðß+ÜðÐ, ©ZÄbÖüAß:üb@v.ªz+ýOð')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (4, N'¢Üb*:<Cbðö,rOªv@>ýßãUö>åÄ,+åö>ªü~,@ªÜ¢¢Z>*/:Z+*ÃuÐÖ£Ä,o©Zr¢bCUB.*.ªßB©Öå+_*î@A~*bÃ©uÖüvruãz|ý|OvvaCåÖ_ª_ýåvOAvoU¢va.|å©,o.~U*råß*b¢@ðÃª>BCuäÃboöÃbðÄ_ÖÃ,*ÐÄ ü*rßý:ãö¢£ ð©@ :£ßÃBv¢|Zvov~,UorýZ@Ðî/äuUr bÖabA/UÖ_A¢b')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (5, N'B_Ö.<rð>~.äC~~äðo©ßÜÐ~ÃªArãÃßÃvAîCãÜv,ÐÃ >å+*r|a_zUÜÐã:@äo+Z*UÄåoãr:Ðb£ÜöB:uÃzvã£ãh>:<Zb© ðCa:')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (6, N'CzzubUÜä~ äÜüOäa£îAå£aÐ*B/ÐAh£Ã£Ü.zu¢~ aãÐ.ýu|z:ßOÄZÃoÄB|üh£>ÐÄö£uý|å£+b~AAðªÐh_CvUöð.ü¢Ãr£©:Ã>Ba:*a|Ö~hß©Ä£Cß>ãßª@u>ÖauU*å©aÃªå_öîh+hü+ÃBhvÄz@åÄßääovªv:CÖuåðhCbßCoå*:©£o_.ªÐ@ößýürãÐÄv*£Ãv,Ð>')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (7, N'Öý /ßðaA©zabbCýoBöÜßäßZ+oÐCãßA~ßbzzU@îÄhZuüßð/Zãb@ý¢Ãb¢öÃüZBßor£ÄrýÖßÐ¢rU£_¢ß</Ð/ZÜzAüha©+||¢¢ Ca BÄ:@b åß,b_aCr@_£@+îªÐbýB.ob~ªz.¢<+ÐZðu/.U~B:©U*bbýßÖCÐ*£:/¢OßrÜÐh,¢ßÜvÄZð<*oü@.oßA@¢>£@ÖAbß>~vªbß*zZ¢@vßv@ã¢,O©ða:+ßÃhU>ååßÃ:uÄ£äZ+¢uh_ZÖÄ+üßå*ã.å<Cîß+£')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (8, N'@b_ ßÐhCvî@Z:,u@ãÜöð~î/Bhb zubCüãa _ã:üÐÜö~ðoZðåß:ÐðUª©¢ª:OÐ.ßårß|/:b©Ã,ßrh¢z@ðäh/<Ü OÄu*Äö,vuzöb+Cªã:ßoÜ CA:A b_z~ü CåªãrB*ÐZCªåO~ö')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (9, N'voÜbbb*hÜ~Ã ÃOUU*ÃåöåÜ<vårußbßü|Öîä£Ã~ å@Öz_Üð@_£ßÄvÖOA>Ã@Oäã|böªh~Ü ª|Ö+a.C:ö>ö©ÃhuBÄß|å*öO.:böÃ*ð£ ÖubvüîÐÖîAÖAurh.ãäåzaåü£,*îü</Caã¢ð<Bühßbßý roOvî_ã>b  äU,åªýÜZ<ðÖOªv©zåÐburî£:uO£bðªªü@ZbuÃb@ßz@>,/ý|ýuuöÜüBCöªö£/ Ä+åzß©zr:ªßrUîÃ,UaUª©ãÄ£ãý.OCªÖ.b>ªo¢B£zUßÖªh|ÄO/_*ð.ã£ä£u:ßUhbãä,CÖz_Öo*ð*åbB@ZZuÖ|UßaUãÖ>.¢äbCÄðÖÐ:üåîßr~<<ÜÜ_ÄO@A,>~A+äî_A*_>äUoo*Üãz äÜbU_ÜbüöÃ/ AÄu Ä+~b*ä/£bªuªªOö*rÃ_Ä_Üãbß|b£Coß@öã£,UUýý*,oð|<*ÖÖbh O>ßð@>UÜßÜ_ðßÃ£Ü__CöÄ_+h¢î@*rzåAA<*:AÄåÖýur|ãUh')
GO
INSERT [dbo].[FailureDetails] ([FailureId], [Log]) VALUES (10, N'*/äz,åÖ<üoA+Z£o,öåh/C©Ca/ÃOã üýCBBZÄCÃ|ZO Öö/U:ßä£@_  ¢© äåÃÃîhýOîZO*:vUzäUÜðo|Ou+ýÃ:/ÜÖ<ª+Ußä~ZrÖÜ@öv/,+vU<bãÖOZÄ:zî/_Ðh@ÄÐbA:/vü|o+buüöª OOzÃ¢äröB.Z+Öub,/|Ãz*ßßuBZ~ßU<>+zC*_ããbååb*Aüªßö ©ß,UZý++B~*Z,Äªîðb£ä>_ª<ß/v:ÜU><¢<~ÃChAhýOÖvÐ~<+Öhb_oBãCrî.ãÄîªãbå©ðhðßÜA>ä ß*ÖUüîÄ£Oüz_¢:>rÄO.b|îOäð_uß*v>£u@zãooåßrö©C|CZ©/~bäBÜÖîoå .©åzî:©zCh£A|zªåªubzßU|,Ör£|/Ö.ÃZã:hz£Ö£îßO@Ü|>|<îh©B~_')
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (1, 1242201900, 0, NULL, N'ðröðUvrO,îoýAb<:ã@u_ãobª.Ü~Z<b< Ð@äã+, bA/©ðrªCÄÖ©.b,Z|ÜC >:©îÄz/ßv>O¢B:rh@.>h.ß£å_ß£/ð:üBÄbåä,CÐ*>+*¢@C~üävÜovüðÃßß*î©aîß@bðb| Ð,©h£A:A*.uÃ~©©ßßÖCrbªÖãÃ><_B/r_,@@+<h åUß/öÃü/uhÄvOð+Zh¢ã:h|îððr©zboz Ã.uüvoßhÄb', 1, NULL, CAST(0x0000901A0000012C AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (2, 2147483647, 1, NULL, NULL, -2147483648, N'îä££ãÄðð£ö:.ãö~@u/ýr ªhbOýßa*.+ã+hîOOäzýuð£.ªzzîý>ýöZ_<zÄ~<äîî|u|¢bÄb. *Cýü,öÐ:ä©îAä//|ß£~:ª,/Bz+/ãýv~ã|O¢ßZ|b*üC¢OýåÄÜhbub:üÐü©î£A@î<~bb:©ßªvv~U<<ÖvB/©£ÄðA_+ª:©h,îbãb£ACö/Aü@ßü:u>Ur.ßu*äO_|_©ãuh<å*_.,ßÐhoý£©rhbboCr<Ä|ÃÃüåC<|v~ßãAîªðßB.:v©uÄrý,<:@ÐA©Öz©ã:>Äv~å.ãßoU:h*aßa/î:ýÖîÄýBÖãÜOZ~öb+~ÃrÃÜßä+ãoAzoÐU£z.räÃªýv<h|b£ä£>bý.BßÖh£C,b|üÜ~C@@üOÖu©ýÄöu¢UÜÄü>@vOzhã|v|ÖZ_/zÃ|:_hî<Öãz/,ä_>, ©Bb/@,ß+©,îO:+/v¢@bßU~bAÜ.', CAST(0x0007CB5B010FF9C8 AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (3, -77590511, NULL, NULL, N'¢:,äoo¢o:>||+ðaCua.ªBBAa©C>ö¢Ã*habÖüäÜ*ðobC|<rAöã¢ÖA*| _/,rb£©_Üh/| obv:£>/aü:_<b_Cýö Ü:Äu@<|zv<@*.A£ÄÜß+Z+äCz~üäÐüB||ßß©B¢ö_Üî Uü>ªb>ß+Ü ª©öî*,£_¢ã oîü@~+_bãU~,b¢hßüð*îª UöoäÖÖuzýobaBb_b:CZZðbavîZr~©¢vðÄß©a+Ð¢Üä@v/ A', 189969080, NULL, CAST(0x000827B6006C2B68 AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (4, 1204469754, NULL, NULL, N'u¢@a++¢|ßZÐZ*@ßC_Ð* rb.ð_:/ðov>Büuªß:AhåÜb<bvå~+öaîãz©¢hr~<ðöÃ,|Ü£zCðü£>~<_h~ ©©åbýo*©ßzª:¢å|uöb©ðzª~:/ü+.UãC<_äðßbäÄUrCäý@:*Üð+@::©Abb.¢aßö.öOCðÖöÖob+.ÄOÖ~öý¢~<åz©aåãäÐ¢UÃ:vÄîß,_ªßor:BböãZ<<£,r:@£@BbîBA_ã©ü/<äÜ_:aÜ ©ä|üðý~Uh~zvßOUZZ<ÃÐh©ª/b>+/ÄöO,.CãßühCî>ß,U+Ä¢Zª>UüzbraUhî.¢h_r.îãÃ / o+ßu Z*b*åbãrÃub+ðã|ßUÃv+Urã:åðüoOBª@ãäÐîb__|z >Oã<Ö<å>ð©@äbb>ª<öB©A~¢|@bC©ÐÃhÄbðÃ£¢,O<vÃOðaýÜ£,<bª<£zî|vöÃ*uÖu@ßßo,äübÜ¢,*.Ã|_z<', 2147483647, NULL, CAST(0x001B25CD006607EC AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (5, 1807599313, 1, 1, N',<Cö+a~_rð:äbz>@UBuoh>ªo+uOðýîAAý£ð|¢b©AãÄ_¢~ÖaAZ,ZÐüb.îäü|oß£|zå/ä.+ðîO.r /üý~ªro£~¢ZbðuAÄ£>@rOouÐhîª£+<BzÜÖýðå,üö£aüÃª+ðO*uvÃîýhZÐU/Äª@ZC@üZOUBßv@||oO_hÖü.zhu,.ÜªÃr¢öv*hÐäo¢BÖðU,ýO*/ýBOC©ÐOrhåC|@||îrzvr.. +>©r>bÐuub ª~a@v@oöªüAb~O+*r©ðha~Üß¢a@Ãh,£î>OüüåÃbÐb<ß* .BACÄ__zðzAßrîva<ßrzh~.u.', 2147483647, N'ßar>aBv:£<ã¢,uã_å_¢@Cr/Ã_hß.o_Ö>Ü*/©CÖß_~©ãü£©£/', CAST(0x002D247F018B81FF AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (6, 1742022022, 1, 1, N'~>üäzãzCÐ äbßo/hÄBð/*<bå<*ðÜzzÃö+ãBªßüUÖ*ÐUzßª¢ öBÐÄå_UC:b,öî@ß.¢î©übã ÖãOb¢uÐBäÐªãu|übßªühÐ|zããðß©åð£vBÖýåÃ:ªåÄý@rz©~ä©ãä+BÃªr_*UÃ.bröb*Ð<~B,*ýB.ÖbB_o*üabbZo,hß**uî<©Ü~hüöBZ~/>,aZäh/ßb*:boäßO  ßÐbhb¢Öü:ü~uU©/ª~åhCv£ð_h|a¢ªÄ ÜªÜ<ã,*z,_åÃ:uäBÜª_Zîbuboß>ý>ªC+Ð£ß¢<rªuu~Ö~,ö:zZ<Uab/.Ð+Ä aå*ßÜ.@öß.Uª~a b Z£©', -779570188, N'Arår+ý**OuaÐr£Äªß,åöðv BãßU©rZî£Ü/~_¢Ð:ýªä©@Ã_oaü©~ ªßAÖåß+_Ö©hîz*öÖboüböî*bªß,z£uÃ_Ä|bý.ã©ã+îuðÄÜr*~.ößÄ>,Ã:ühb,bî@ýªOÖzü u>CÄA©.*ã~bÄUvîãro+@/Ã~:zaÄöB~:A¢bÐZ~Ü+Ab¢z<* £UbÜü~ö/î_ð©.aü:UvCaBo_ªU/ß :ß+BBü+:ä ªåBOOr+ð+*bª,b* U<Ä<__ÜªüBoß|/£@~ð£Uðîý uzb/Zä. ÐÜÐåÐ,ÜbB>rbA_*ðÄ@A<,C. >+vu<*zCÃãBÜÄÖßrh~h.ÃîZÃühÄÖãööª+,+*h|~ÖOB,r:|uöÐã ßýý£ªb|v ¢|vÖå<.z+/b~ý+U~>BU,îÖaaªh¢+ÖÜv|Zvh¢ã£züoð|zÜÖß¢ÖbBý å.ä_vhÖäb|ªo>ZÐUªÖäÜvuýOÃUä aªÄÃZu.ãvb|@|CB+üov:b+oZUub£.ÃãAv/ã/ãðåväåý@r uoh¢u_ü,v¢:./bOÖ/~u_Uhv£@', CAST(0x002D247F018B81FF AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (7, -415652550, 1, NULL, N'îaî@Ü:ZbåOuý/<ßBB:.z£Bbî<CovýßbUã @bZU£Cö>+üb', -185486228, N'.ÐÄ|*AßOÖBßAÄåîbAüÜv©ý_üZ|Ð~ÖbðÄ@.Äß|O+ o£CUa+OªrßÜ,äãh.OÖZÜzu/ÄOB>zoB@äª:BAåZüð,h+ðv_äÃvZ¢ßîªAör,bîäå/CZðß.ÐC_åÜ++oã>:¢UßAå:Äöa/oß<ubb@Äv¢ Ð/ühÖÖA_uäCÃð/©bã|©~ýßý|zb©Ðzã:~åhåßãåCÄÃ.Ü|bC_Ü+ýÃoªb*ö:,ãÃbZu,.@ßß_åuö/öå|a.@O>î+zozüãßö /A/¢.O,h@zÖu>ÜÐÄ£oÜðAå©OOððUC|ýaª_ßða <,¢ZaåÖ©ä_.~ Ãaaz|+U:<voAü ÐªüýßÄ ©,zÖäÜ/>b,ß_uZýªUU_Öäýh<vb|abî|ªäaa¢Ã_Ã~ßö/å <ÐAÖaÐÖZü:©Uã>ßu./oãu©uv+îÃ_ööî|vhÜz_vboßzî|*+äbä+,@vbCß>Ö+BAr A_BýÃÐ>', CAST(0x0000901A0000012C AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (8, 48979093, 0, NULL, N'ðýA£©|_,ZuaüßÜåüCªýåaU,oz+ÃuhvauAãã,b,@Ö<oßÜÃÖÃîv.å.ðî£©ªä zåzUArßðüö>åÐbu,ä/¢<_©ßüÐ,ªzhOoßrbråoîÜ|åãÐüÜ@h Ã>ßUü+Ü£B*@¢ª>ßÜßÄÃ©ä Uö£bªÄðßOrvvª¢,îßßZ|ßß,oü+Aüobã::*vä~ðÖbÄvOz+ îo+ååä,z_/|>bUÃü£C+ßßv+_zîbuä_¢bß£<ä~ZOüboßßzBã@+Ðªbö|_£ßã|ýßo:ýß<Ä/Öß,+ð.Ä¢/_Uub@ãCö|huCãbÐÄroîÄßaß,,Ü|*uC_äîrUª*ðZ  bU*< ðÐ££Ðvßð¢_.ß©ÖZÜÄ/ª*r£ßh+vä~,ÜÖ<îbäãÃ|+vbý~', 1, NULL, CAST(0x002D247F018B81FF AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (9, -2147483648, 1, 1, N'ýýbÃÜz+ääö¢*ªö<>Ü£+<.<u@ov:,©uzî+ahî_h/Üüä/Oü_~£:î@+zhî@Ü|_>äýr¢£Äýªß~ü¢r~>_Ab_ªÃßöÖÃö~uBªCüªöðý£ß@U|üãäðåoÐ¢+<Ðaðßbb:ðÃCÖ>O:aAv£@îu@zbÄýBßßÜä~Ðh,ö©håöråßCß:£,ðäîBC<vrÄå', 2147483647, NULL, CAST(0x0002EB5D01175628 AS DateTime))
GO
INSERT [dbo].[Failures] ([Id], [TestId], [Baseline], [TypeId], [TestCase], [Variation], [Comment], [Changed]) VALUES (10, 2147483647, NULL, NULL, N'¢¢C£zªüå|<î@åz*rÖã©*ö>*ßZ+Ü©_¢B©bãäÄ ,,vÜC£Ð© *ß>ªß,|ªuCvz*öãz*ð+u:b/¢ä*/.~ãã¢hüaüoðßÄC:¢Ð/a', NULL, NULL, CAST(0x000F87E101213968 AS DateTime))
GO
INSERT [dbo].[FailureTypes] ([Id], [Name]) VALUES (1, NULL)
GO
INSERT [dbo].[FailureTypes] ([Id], [Name]) VALUES (2, N'£öhãAßýßßÄ~.ÜzbÖhB¢ßAß+<ßö.ªöå|Aýß©zªZÐªzrbbßbä ã_ÐÄ__ßß|©ab.+äðo_/ý¢Ühã*a>ãÖz£ÖBbÜ,hä>/ýäÐöv©rö hîZ¢äÃb.î*@AöbUAvý ~:ÜzbýaÜAr|Ãß|@ª,+Cu+ÄýU>ý.AÜ<ða©ä*ä+ªu¢äðAu ©Ã:/:ä£hÖüä<_ßb~üa_Z|aür£Ußh>*:ÃÜðãZö~z¢väîî>,ßßOAåî<öÜ£ÐUßrb@£,>OÄªüÖ£+ÃîaÃBbÄv.ýü::|rãor|ÃßB~Ðu@, ©uã.,@u~ðb_©__ßb|rööüå:Ürö~~ v<~©,~rh_bö ¢îb£îovz>OA|:*ßÖbr/ö¢U£ªöýhü~öahýª ü+CzßzZãB:auAÜ:b ¢aÄ,v<ÄîaZÐ|Oå~ãAã+üî¢¢ .|hðÜBOhå©@ýåöÄå,,ßa|Zð|/+ýöbB/ý++üÃ ÜhîC~©>+~üBC<|@ã')
GO
INSERT [dbo].[FailureTypes] ([Id], [Name]) VALUES (3, N'h£~<.BubßU@¢>üa|¢Uåîüª.Oä,îß~@îhÜªãbÖZÐßå_äUäü:hCðövüÄß@u.¢ar,:v*,ãîhüß @ba/ÐO åöÖÄ©~¢ObÜzß £Ð~>bªå<C_aoC¢ÖåÃ,ßABÖb/ÃßÃÄrÜCãh<©Ü>@*hZãÖ,Ö|_üåz+,>ÜUîÃoßZðOv .oA£öý,OA£ÖUý£©hUÄãî.Ð *uÖB ÄbuC~/ý~@åaîðr*äAýîA<©Ar*+ðÃã©/råb:ü/¢£|©bª+Äöür+:zuãbäAAAÜu>zÖä:ßaåÐ,.. *+,b©<,,Äz+*r*ßO.ð.ä/b* ÐîåðB:übîå>Ã<ü+_+ßßý+>v<rÃ <a_åZab Ö~<zU* :zãCÃ/_å<¢v+üU¢.Ð,h>A*ýuÃ/£ªöî@_£bbü¢baåðhbva¢BbhOÖîCãZBz¢/vßöö~CÐÐðr©ß£,U|îZ')
GO
INSERT [dbo].[LabOwners] ([ownerAlias], [FirstName], [LastName]) VALUES (N'christro', N'Chris', N'Robinson')
GO
INSERT [dbo].[LabOwners] ([ownerAlias], [FirstName], [LastName]) VALUES (N'davebarn', N'Dave', N'Barneby')
GO
INSERT [dbo].[LabOwners] ([ownerAlias], [FirstName], [LastName]) VALUES (N'steveob', N'Steve', N'O''Brian')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (1, N'öÜüBåãZã~a©ðåv<ßßÖzýzbbÃ ¢bß¢ä|ª> ¢.åö|>Ã@ßãýb.å £|,å AåÄvÖvÖ>uÐ/b._£bðãOßZßUuÄvur:üZOÐoZÐÃªOzÖrzB,î£äuUÐÄrbAU¢<_>A|AU:U UUî+z©äbB>oßß¢*ürU|ý£hbCubÃvrob¢o|,¢ å.b AðÖ<©ÐåÃ~ßaåv©Cr', NULL)
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (2, N'ü~äð/@©UuÐ£ ß>£¢rz£|zß|ª*AÐååv.@ÐhbÐOazöý>£üö>O+ªbðåo~üoAU~,ÜÜ*üzhª©/î:raÃ|ßoª©ãä*vã*_*hOðÄð.îouhÃ©ßî>öÄ~Äå:Ahý.|Ð_/>>ªÖÜ:>@O@ÜB_ ©<ðäö*.|', NULL)
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (3, N'îBAðz+©+ÐÐ¢bîA/a/@böÜîÃ<>>ÄßraðvüBä*:~åoBÐßªA.aß> üAO©åý.|.ß£åOÄß+Bßob_ã£îäbBb/B<åzäbîbZuåöîOb>u|Cß©zr£.ßC,vßßî*C  Ü~z£åzß~Zh£©|.¢>üUÜÜvuåbö>ß<.üªÜäÖÐ£U:ö+@¢+Zh/ãärzðB _b|ÄUÄ+> oz@äßßÃýv@z.U£ä~ð>©öZBb>/zÄoöýÖ|är:bÖZªAOrb.ÜðZ,ÄC rÄ|bbvA.@b@bvÖÖ_brßß¢å£Öbb¢Ð@a :ß£_äzh,ÜÐäBö©oÜ£A+UrîzÃ bßüa£zå@Öbu¢uîUðßabÜßÃBðZüÃoÜC|@öuÜ@o,h/ü~rªðh/hhz.åuð', N'99999999-9999-9999-9999-999999999999')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (4, N'bÄ©ªÐÖ¢>Ã©aCÄÖ,å£ßu<>ýh_|A:Ä©zaÃ,ãC©:ãUã|Cu:.a.|aa|hzîrb~hAÄZðß,© Äå£Ä.ß_,î+Ö©C|¢åÃ£Ðå+>£ABzß__£zãßBZ@ðz~Ö~ðýß îA<B.uo£ÜöuUªªCaaãvbîäavBö,býZ/>ßÄrZz:h.hOahbv Ã<Ö|bÄÐ.Aauý:ãC©<>Ä/î.ßÃ|ÄãöÐãåOß¢Ã|uÐ+Übzovb:Ã~a@_¢*ã.v©bý+åßÃOhAoßh_/Öhð*~v_ªCAvðuzUãýr/îOÐýîZ¢ühbzä:<bÜ>/>ßaC/å ªä:äårOªÄ¢vAhabüZ.|ßoß:h_Ö.<+.ßÖã©z.oBUãCvÖãßÐ*./äÐÄäBOß.z hßÄuZã>r<Ä£ßOoÄÃîbª ', N'1b988b4e-26ad-4d63-99cf-2b48e45114f1')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (5, N'A@ÃBåÖ>>aãÜCb.A:az_åÃßA__h,vÐßý@Ðß©ÄªÖª:ýu¢ý,A©våªªAv@zU>h_Ö*uÖräv+UÖ äUÃbå<obh>:C,hröUu>/r:räBÖ:/hC£.@_Ö**r¢ßb:ýAZuã¢ýîAoÖ C,bãýhaÄîaäA~ã,ãªA~©*Ö:o|äðß/uB<©r.*z@r>ß*_üOU¢ýUozý~Bü+öåvCrOZÃð++,.b_Bãbäýu<ý uö~ZðBî|Ub,.UBZ¢bãbßåU|rªro>Uüh:îöåvªýÜã:ßh*£CãÐßuð+/o:ý+,©Äð. vðö@zuAabbu*bCr|>+/ÄabÖAÐ<îårzbîb<å/Ã~@>Öuãzuß,äOãO*>Ãzroðßß hßÜa z~uÖäðãðößu:ßðBAÄ+hÄ,*o©vÜÜÃOª.bzî>ß£.üv>~Ö@ýÄCåÐz//¢Zðö._>BhhÐ*,ohî.Z,Z.åußª£Ã_£åüåoý/aü|,BðåC+ã.hß~r</ðoAÖbC Öäö/UoäO.ÄCöäîZ+@Öäür@åü/._üaöÃöäu¢Uý/årýuÐB:v¢@¢Ü>ýrhhUýüýßªåo:Aob¢', N'99999999-9999-9999-9999-999999999999')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (6, N'Bä£ýüÜÜ@OßA*u:ÃÖÄB+va/b~BbZbZrýU|,,h_ho<u/ßA~_öý*.*_åß+£ßbîî>ÃUýßÜÜßb|r|ðîb|¢Aa_CzÐäã/*ÜAÐ <UUü@rãrßÜCîßrÜ¢üÖßAÜb*Ürü+h,.ýß UÄ Ãö@+ÜßuÖa,ö£bß+AuÄ_/å:Ü|ãÃß+ßz~_>:ðAu/UüßªÜßaÄb~bü~¢ÃZ/uoü_býäüÄß,oªå*ßÜ', N'99999999-9999-9999-9999-999999999999')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (7, N'ZÃü_CªU ãÄüäuAÃävîoüü¢ba¢_<ÃÃoßoC©h_r..<Ö@hýã_ö|O<_åZ¢££ªöð|C_¢©ðßÐ_åh©ã<Ãr/>BOBªð@u¢ðä>a<ðU>ã*rî:bAß,©AßÃ,ª.ro@ÜßürA.býöU_,u.*¢*ý_AAoZuU<,ö@vbß .<©åhO<.bb_ävß,*ÖU.©C>¢@Öü|aC<ÃOÐbßö©Öußb¢übÖ*ü£ý~Öa£ouîãohOª<z~,+hra:ÃaAªª<__Ü,ýîa@Ä©@|ãîB>ªAu~z+Ã+uÖ¢_îÖüb_Ð+z+ÖrÃ:ßåÄä|+C+O.a+AOoä.ouZ<ªöÄ:AB_ßhäã@C@<ü@©,@OÐ*ü©@|r/ü~ü.', N'47a725b9-0c69-491f-a589-397047961d56')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (8, N'ZOzî.>hzOÃ>/öÖ>üãÖ¢öý..ZB|Ö+a_+@<vÜA££|ß _BÃZ,îÖzß|ßB¢ßäÜaßäÐÖz£züü©ü:zOrßª: ÄýÄ£ýbrü|/ã<ðU£ãÄb~u:+ /ußã<+ªvA*_babrÐÃB©Ö_Crbu©*<ÖAuä*©Z/rUÐ~öoßh+r¢Ü> åhÜªßzaÖ¢ßAC@ýC©Ä*ßÖ@:+bß,zb©aA|ý.hBbÐåü.:¢î_ß£ßaÃ>ZüÐß/ÜÄß.aöbªß<hBäAªü:ß*bß:@ýÐ<bü@ÐªUªÃz+ö<ü<,ACb©_üüB_ßh,ÐªzOß©_äBbbäî<oÄuaýäåÃß : O@Båýî:äåbaOoß/ªZöbuÜbßvå@ßv>bßüÐ<<aÜubh.bªbÄAäO/Z,ãZu|CÄãý<bO*ßvA:Ã .ßbåîßÄ:Ð_ã©£ßu£üÃ>î*zðuªbuÄÜß©~OãA: ü+.ã£ýZoß/*h', N'99999999-9999-9999-9999-999999999999')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (9, NULL, N'99999999-9999-9999-9999-999999999999')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (10, N'_v~|A_oäî£Ãåå>ßÜZåªÐß>_ *OvåCC*|üChhðªÃßßß¢î@|bBh£ÃZ ZªAÄUuäZZÐßzhðÖ+ÃãÃrßðüå¢ßßBOÐ<.buÃ@B.©,ß@@bã~+¢zÄ/ßaB@+¢oB/.ÖB|v+vîuUZZoz+Z,åbb/oß<Z©.üÄ îð Uüb.üß: <,b/o£ÄÄuüÐCAývü¢v~üZOî +üî zä.b~ÄüÖÐACAÃU>*o', N'00000000-0000-0000-0000-000000000000')
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (11, N'ä£AB¢Cv:ß*bbÖ*h£,üzðßÄüÖü¢îA£ýð/Avãb©aZ+Üß|>ßzÐÄbÄh¢+¢:oÃvCýuußß.¢a<>Bý+Ãðoýo<ü£årüöäzb,ßÃ*,îZo_aÜbozUrüÄÖð/<:arz:BaväðB|ª©ßÖ~:,Üªü+,ß*¢ýý', NULL)
GO
INSERT [dbo].[MachineConfigs] ([Id], [Host], [IP Address]) VALUES (12, N'@ rä.oðÃräzrößÄzboßöäb,ð/+', N'00000000-0000-0000-0000-000000000000')
GO
SET IDENTITY_INSERT [dbo].[NonDefaultFacets] ON 

GO
INSERT [dbo].[NonDefaultFacets] ([c1_int], [c_decimal27_3_AS_decimal28_4], [c_decimal24_0_AS_decimal26_2], [c_numeric24_0_AS_numeric28_4], [c_numeric24_0_AS_numeric25_1], [c_varchar230_AS_varchar512], [c_varchar17_AS_varchar98], [c_varbinary60_AS_varbinary512], [c_varbinary31_AS_varbinary365], [c_varchar80_AS_nvarchar512], [c_varchar185_AS_nvarchar285]) VALUES (100, CAST(0.9000 AS Decimal(28, 4)), CAST(1.00 AS Decimal(26, 2)), CAST(0.0000 AS Numeric(28, 4)), CAST(-1.0 AS Numeric(25, 1)), N'ªoåýCäü_>a<@AÄ@bî_:höuÐh,ABßÖ¢/+*Öã©Bä:,_bÐobbb>,ýb/åh+,/ÖªbÖhßä~BOväãöABb~å', NULL, 0x9182B8F9FA, 0x, N'+/U*v+£,vä|öîß£_', N'*ß_>îã£ZC')
GO
INSERT [dbo].[NonDefaultFacets] ([c1_int], [c_decimal27_3_AS_decimal28_4], [c_decimal24_0_AS_decimal26_2], [c_numeric24_0_AS_numeric28_4], [c_numeric24_0_AS_numeric25_1], [c_varchar230_AS_varchar512], [c_varchar17_AS_varchar98], [c_varbinary60_AS_varbinary512], [c_varbinary31_AS_varbinary365], [c_varchar80_AS_nvarchar512], [c_varchar185_AS_nvarchar285]) VALUES (102, CAST(0.4210 AS Decimal(28, 4)), CAST(1.00 AS Decimal(26, 2)), NULL, CAST(100000000000000000000000.0 AS Numeric(25, 1)), N'*,bÄZ+ßChZ¢Ãb>>ßh__:.hößU<ð*ühbÖuãU©+*:ßªOaüÄÄ©bî|/Ãrý:r:Z:ß::oauå:Uvã.ßBÖäUhýB@ßä/.Ã+|U+buBå© hAýÐßU/Übo£ª/hub:Oöý~AÐ ä uäuª î..Ärhvvv+b*vbÖCBhüÖîö©ÐCZ©ä>a||<ßÐOA.aðrð©¢>©<vBrCÄUã.üÖ©~ð:,ÖUß@å/z~bÃhb_üv', N':ß.Ö', 0xBD71FFBC9387B5F710E3EBF79F001E2DE61C6AD3C9EAF3B9956B83720EAB110C52B858236E7A8D68BCA5E08FBCB3E9BBF33167FD05F8, 0x7E4626280342E9, N'OÄbßß@A,*,~|ª|¢ä<r:+ª+zîÐbðb><ão', N'_Cß.:oÄbîÜäÃ@Ö rrÄUªßß,hBÐ~öîä_.>.')
GO
INSERT [dbo].[NonDefaultFacets] ([c1_int], [c_decimal27_3_AS_decimal28_4], [c_decimal24_0_AS_decimal26_2], [c_numeric24_0_AS_numeric28_4], [c_numeric24_0_AS_numeric25_1], [c_varchar230_AS_varchar512], [c_varchar17_AS_varchar98], [c_varbinary60_AS_varbinary512], [c_varbinary31_AS_varbinary365], [c_varchar80_AS_nvarchar512], [c_varchar185_AS_nvarchar285]) VALUES (104, CAST(-100000000000000000000000.0000 AS Decimal(28, 4)), CAST(0.00 AS Decimal(26, 2)), CAST(1.0000 AS Numeric(28, 4)), CAST(-100000000000000000000000.0 AS Numeric(25, 1)), N'BÄzU<Zåhß:öýbå_bäã~ÖªbOzoAÄauÐÄB/ÖOö|å<£äýouäî:,,aüoÐrUA_ýB:~äðbÖä_ Ä~>ü*ðîªîö:v|z¢rÜ|+u@h.|ßabýbB<ý*hÃß@ýßßz¢h~_ãåvUÄZr> ß|OðO äî_ß<:î/¢ß©ÜÖ|ðîaßAöCßÖ*ßZ>a*C¢ªß:ö,B Bbð:£/A@/ð.î_*åuuboOarüåB>Ob', N'¢@ß©Ð', 0xEA, NULL, N'Zã|ª/~vÐ~UäUð îCA+hUü|Czå', N'¢ðr_ðãäÄ*,Z£ðî +bÖZå ãäýZab*ÐÐvÐ*Ã£ß,Ãö.b¢_ÄÖÄr ¢Ob_ªu_ßbrUîÖ>ü¢h_Zuv@ý+ßäßÄZhU~ßÖÄ_©ÄChoãÖO/A£|£î~r.übBr©ÖÐ,ß>ðü©Cýß/ö/.ob/ÜßöÜuvb,|AoßÄ¢ aü,Ð  ãuÖð£ÜrüoÜvî¢ .Ðü@')
GO
SET IDENTITY_INSERT [dbo].[NonDefaultFacets] OFF
GO
SET IDENTITY_INSERT [dbo].[NonDefaultMappings] ON 

GO
INSERT [dbo].[NonDefaultMappings] ([c1_int], [c_int_AS_decimal], [c_int_AS_numeric], [c_int_AS_float], [c_int_AS_money], [c_int_AS_bigint], [c_smallint_AS_int], [c_smallint_AS_decimal], [c_smallint_AS_numeric], [c_smallint_AS_real], [c_smallint_AS_float], [c_smallint_AS_money], [c_smallint_AS_smallmoney], [c_smallint_AS_bigint], [c_tinyint_AS_int], [c_tinyint_AS_smallint], [c_tinyint_AS_decimal], [c_tinyint_AS_numeric], [c_tinyint_AS_real], [c_tinyint_AS_float], [c_tinyint_AS_money], [c_tinyint_AS_smallmoney], [c_tinyint_AS_bigint], [c_smalldatetime_AS_datetime], [c_varchar_AS_nvarchar], [c_char_AS_nchar], [c_nvarchar_AS_ntext], [c_bigint_AS_decimal], [c_bigint_AS_numeric]) VALUES (100, CAST(280673076.0000 AS Decimal(28, 4)), CAST(-1882090438.0000 AS Numeric(28, 4)), -1, NULL, 1414793172, 32767, CAST(28443.0000 AS Decimal(28, 4)), CAST(12902.0000 AS Numeric(28, 4)), 0, 6452, -4254.0000, 32767.0000, -13627, 128, 111, CAST(69.0000 AS Decimal(28, 4)), CAST(11.0000 AS Numeric(28, 4)), 0, 249, 185.0000, 55.0000, 157, CAST(0x00002CA9000C5C10 AS DateTime), N'hCh.u¢Z/+v©OªäÃÐÐð,ª:ÜÜoUZ~aý> @/býbz@AßÜ©£ÄB_ß++åzrãåß**üOöbv:äöhÖ|ä¢/uå~ãÜhbbÄ<u£BrCÃ_U£Ä *BÖ>ußÖößU>Ð:bzvbauZî:<ãª+©ß:rzrðCå', N' |*ZCîUÄî£Cß.>U/./åªðåäCö>~ðZß r@:Ä/åýß|uhÄÄ|abÃbÜ>ÃýOî:Äu*ª z.bzîZüßß_.¢ +ßOh|ð:åä@z£r _vÐ££OuðÄ¢.£ÄbîvuBb©ßCv|©/o/:îÜ£Äü._bîÜ:B:b_Ððu+ýªZuª_@/ýoýuaß<ßäÖöÖ£+r  ~~*AÄãÖrÜ:ãª_bO/ü_îð|/ZýUÃýý<Ðª.öåAöO,v UaU*¢uzÄÖz©ßZ.ÜhZ*ßAäÖÐbã/££auU~v~©|rö+A+vuobÜC_Cå©ãªU<<vr>O|£Ã_bB|ÄÐuö ýÜ©~_~ab C_h_.üABrZa/O<Ä~©böu.ßîö ãã|îð©O:ä/C|ý£h@ª@ððåßzöýä>bãîz¢Or|h:rv¢ßý A~aÃ.ßÃßZýa:b_ªîbohªöh>+ÜBýb,vzCå:v+üObUhBA£oÖ>ªäzu:Ã+,îB£î ß£.aÃî|~vU                                                                                            ', N'bå<ãBäua~,rBbã.@b*v ZÖ.<©aöUrð ª+*+ßî_ßU.åÐ// üã>b@îýª~ :ýobîüß©bªÐÃ:ª¢@_Aî,aýb*ABÖo,.¢ÖÖb*î+Ð :bb+ã~v+å/ý+öÄOz<ößbßr©v£üüö.vÄoßÃ/*öªrÖÜÄäÄ.b©b~Ðäö|Ã_U,ßÐäª ü¢Äã_vvã+äÖbvb*öä~zð*Ã,Ü~hhröhå h/ÖUa|>.ßÐ*aO>.<î/öh|ÃüvuðU,Cbåuü.îãzBöZBåCª +~BÐ©Z>rÐÜ::>AbzBzÐãhbÜª|oß>£b©|*ðã*o©/Ü+au¢:,ßbäýý|,Ür ß<O@<a|ÃBåB|OÐo/åü<hßhoO*Ð¢£bCO~Ð>_Ã>ðZ+/__|ZUåhã_Ã/Zb@© ýoÖ,îªýÄ>ã©r<öü©BÃvª~îCã>ß@.ÐZ©üä*>Ö@ý_ð|ãÜ.rö+ªÐÖr+UbÐBbîåbB|ýroÃ C/roCo*AÖCÄ¢|:ð©ýBzÐßª.Ä¢B:ãýä|', CAST(566457609.0000 AS Decimal(28, 4)), CAST(-9223372036854775808.0000 AS Numeric(28, 4)))
GO
INSERT [dbo].[NonDefaultMappings] ([c1_int], [c_int_AS_decimal], [c_int_AS_numeric], [c_int_AS_float], [c_int_AS_money], [c_int_AS_bigint], [c_smallint_AS_int], [c_smallint_AS_decimal], [c_smallint_AS_numeric], [c_smallint_AS_real], [c_smallint_AS_float], [c_smallint_AS_money], [c_smallint_AS_smallmoney], [c_smallint_AS_bigint], [c_tinyint_AS_int], [c_tinyint_AS_smallint], [c_tinyint_AS_decimal], [c_tinyint_AS_numeric], [c_tinyint_AS_real], [c_tinyint_AS_float], [c_tinyint_AS_money], [c_tinyint_AS_smallmoney], [c_tinyint_AS_bigint], [c_smalldatetime_AS_datetime], [c_varchar_AS_nvarchar], [c_char_AS_nchar], [c_nvarchar_AS_ntext], [c_bigint_AS_decimal], [c_bigint_AS_numeric]) VALUES (102, CAST(-671342354.0000 AS Decimal(28, 4)), CAST(2147483647.0000 AS Numeric(28, 4)), -1883156520, 1298338223.0000, -902842942, 32767, CAST(-32162.0000 AS Decimal(28, 4)), CAST(-5507.0000 AS Numeric(28, 4)), 29105, 16308, 10345.0000, -1.0000, 25678, 100, 249, NULL, CAST(174.0000 AS Numeric(28, 4)), 142, 91, 255.0000, 55.0000, NULL, CAST(0x0000A551006B6430 AS DateTime), N'åZã@åðußvßðî ýåuîß/ü@*baÜ>vÐü uAZzaU|OB uåýÖb:ªð Ä@>r/ß@UßÐ+©>ãö~îªaü££ÄÃBÐ¢*zö å ,UßÐßä<>ýÐ:Ð©ÐbbOoä~üÃbßßBÄOoöä.< B~CäbÐ_<£ðvü.a~zhß:z+ÄOaðÐoZ båbU*¢:ðzBCA<Ah_ä©ÄªäßböOü,.Cð*~v', N'AuÐb+h+ßÄ*vå©A<bb/Ã<UßBb,uAß+Ö@Ü*:CzC~ :>ý*~ðbÄ+¢äZo|©*uC©ÃoC_/üã<_uðOö<CUüU:@hz@£r@<+u©Bår:îO*ö|,Ð/@<::ðßb ÃBÜª_+¢: ð><våCbý<|ðîa©bÜÃÜArÖ~©zåüaC~ð@_å¢£îvO£*.:/uC/©.Ããã~ªU| ßo+îCð,|b,a,Ao>@h©ßZh/r:z~.ÖBðð£b bBßÖU<båOÄ.Z,_ z:ö/ZO,öðª_@¢:C:+ ÄB,Ð+/ uvv<Aarå/ß<ýrÜh©håoÄü/.bvböÃ/ð~b>Cbðh<å~ ¢r©£:o||.UãuÐ*                                                                                                                                                                                                                  ', N'ruüb>/>r,>bÄr_©a|+ uÐ,ßî+CA©ÐãÜÜvBðvî>ãrÃ:vübã+ä~ã£*a_Bß.bÄ,.ã<_Äz/C¢.Bb_h_vhãß@ÖoBîr/ÖÐýCäãß/ßäýÄvÜ.vUoÖ~ßåaß©|UO¢UÖ|*Z_ÄC>|UvB*©Z/~bC>îðoªªåÄo:Z~¢ß_C.+ýuÃhÐª>zÐ_*_uýrbh ã.Ð©©aöbv©£vß|äbªß/*Oz£zå*+ªuZ+|ÃuZa¢z_ÃOÃ*ã©:ÐÜÃo,,¢Üo@Ö/Ü £*ßüZb~|Zã:ZvÖO<üß¢/ª~îbîýöîbÖUr@uAãå+_~äo>äÄCCäª©|ðß*Äb/ÐbZCÃ>@~vÖbÄ ªªZA~/Bb+ßåbz,r ,O@ý.hZU<o©üv:*bovbü£ÖÜvü++Z.A,C vä~@Äð<zA|.ÜCÜð/ßðAzU©¢,UaAÖaã/Ü_£a~Ö@/*ª£ªr*>ãª:ã~C+ßB~uOZÄîÄzrC£u<Ü ÃZ<©Ä~b/bÐ', CAST(1269258048.0000 AS Decimal(28, 4)), NULL)
GO
INSERT [dbo].[NonDefaultMappings] ([c1_int], [c_int_AS_decimal], [c_int_AS_numeric], [c_int_AS_float], [c_int_AS_money], [c_int_AS_bigint], [c_smallint_AS_int], [c_smallint_AS_decimal], [c_smallint_AS_numeric], [c_smallint_AS_real], [c_smallint_AS_float], [c_smallint_AS_money], [c_smallint_AS_smallmoney], [c_smallint_AS_bigint], [c_tinyint_AS_int], [c_tinyint_AS_smallint], [c_tinyint_AS_decimal], [c_tinyint_AS_numeric], [c_tinyint_AS_real], [c_tinyint_AS_float], [c_tinyint_AS_money], [c_tinyint_AS_smallmoney], [c_tinyint_AS_bigint], [c_smalldatetime_AS_datetime], [c_varchar_AS_nvarchar], [c_char_AS_nchar], [c_nvarchar_AS_ntext], [c_bigint_AS_decimal], [c_bigint_AS_numeric]) VALUES (104, CAST(-2147483648.0000 AS Decimal(28, 4)), CAST(0.0000 AS Numeric(28, 4)), 1, 1417914182.0000, 1115782007, -32768, CAST(-21434.0000 AS Decimal(28, 4)), CAST(-13669.0000 AS Numeric(28, 4)), -24240, -2750, 15839.0000, NULL, -1, 186, 196, CAST(255.0000 AS Decimal(28, 4)), CAST(1.0000 AS Numeric(28, 4)), 115, 28, 255.0000, 36.0000, 248, CAST(0x0000FFFF018B3BB0 AS DateTime), N' åBbr.rªª.>bAvß,ÐýÃå,/Z~ä..öhCoö@h.ß|Z_O|_.ßöhb<ýÖ.üvbäå~>OÜýU:<v_@åäýã::@ ãa<¢Ð öü,ÄO©<v@ubCÖrzBð_,ªrªýîü@ÖÄAäCå//AZbÜBäbª ÜÜ*Ã', N'ÖbðuC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', N'ü>Ö©ðÖU£CO© oaAo:_|~vuCªß/ÄZÜO£ ZÃz|A.öZ+Ã©ªÃ+oýÐð<Ã||bÖ+hã>Aüäð@*A:Ä:CA~vr~|@ð/vÐ_äÄöÖÄ¢_rå~/U,ßÐb  ÃZvß/Cz+<rãr,Uz.au~~zãoUu:haßÜß:~C|/Zbvã/*o*+ÃOrðýß@>ÖaähA|ýüz|Ã,,ªZ©åhü', CAST(-473253532.0000 AS Decimal(28, 4)), CAST(-1.0000 AS Numeric(28, 4)))
GO
SET IDENTITY_INSERT [dbo].[NonDefaultMappings] OFF
GO
SET IDENTITY_INSERT [dbo].[Offices] ON 

GO
INSERT [dbo].[Offices] ([Id], [OfficeNumber], [FloorNumber], [BuildingName], [City], [State], [IsWindowOffice]) VALUES (1, 1231, 1, N'37', N'Redmond', N'WA', 1)
GO
INSERT [dbo].[Offices] ([Id], [OfficeNumber], [FloorNumber], [BuildingName], [City], [State], [IsWindowOffice]) VALUES (2, 23, 3, N'agaglha', N'Seattle', N'WA', 0)
GO
INSERT [dbo].[Offices] ([Id], [OfficeNumber], [FloorNumber], [BuildingName], [City], [State], [IsWindowOffice]) VALUES (3, 46226, 1, N'37', N'Redmond', N'WA', 0)
GO
SET IDENTITY_INSERT [dbo].[Offices] OFF
GO
INSERT [dbo].[OldVehiclesLinkTable] ([FirstName], [LastName], [MiddleName], [VehicleId]) VALUES (N'Chris', N'Robinson', N'Patrick', 2)
GO
INSERT [dbo].[OldVehiclesLinkTable] ([FirstName], [LastName], [MiddleName], [VehicleId]) VALUES (N'Chris', N'Robinson', N'Patrick', 3)
GO
INSERT [dbo].[OldVehiclesLinkTable] ([FirstName], [LastName], [MiddleName], [VehicleId]) VALUES (N'Steve', N'OBrian', N'm', 4)
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (1, N'zbÐC* v|ýäüßãðð /a>vßßßÄ,vuvÜ/|U¢å__abª©Ü.>,Z>Uz¢Bä: Bð>UAÐBBýÜ|ZÄoö,, *,ß<,z..îað¢Ã~Cð_öbZü*@|ß£ðC~ ZðUÖ>b>ª@rß¢ãbO*BýOßªa B*aåvÃÖ+zß|Äa,ðbb/ö.ä:*@/,/_ððßÄZ~o.<OUîÖß@ßv+oüoðC*©ª<¢a>/ävu/+Aã//u@~äOA£Aö_vbu:+aß/bÃB@,ýÖ+£_,hÜ.öÐÐ£ vO¢ö:Ã<U+£ßã.|ªßÐ ÄCªCß+C£ßÖãC<ÄÐÃ_v.Ð£ãðÖ+ÐãÃü~O¢r,A@Äo*vãßåÄ,vobCÐa +ýÃårãÐb@.Ãu~uîbÃrü,îoîãör*C|Ü~u|ãUuÃozä.vÐ.C©zO+b,îÖ¢/uBäða>¢@Öã:©ÐüÃ,_îBü¢/<ÄZbOÐ>+©<ð', N'Cãuz+ßÖü~©ý,u©Ãäa£©', N'ªo£özåA,oüÐ ð|_zªÄoä:åbZ©übß@©ßv~U@Ã|*bðÐ~/ÃUbZCh_.ö>ö ÄB*Z*ßuä<o<Ð©bäÖU£UCå:*Aª©ö£ývåÖ£ðß~ubÄB@Äö_Ü ¢bZÜoZUß/vÖz©Ãä|åuZÄBÐvZ_OðoªO>ßvZbî+rB~>ß>_ßî,AuößÄvbuåßaUý*BuUÖöb,¢ürÃhÃrZUÄ:¢Üîð©*Ü|rboB+öBu.ªUÜåäý,vÖh~|äö£b_¢r:O_îý,ã*:äßÐA:ß©ýö|Üß>£îuOý*C@aß åÜUb*Ü>a£ö,ð,_CbZ©Cüã.ü@£©ß,<Uöäý.h©|ª¢ObÜh|vüß£äZãäåä<<ßÄ.©ýB@.ý_öü./>©Aöîbv.U©ão_r.Bühð©äãrüOüUÐ|ÐAäu/Üoßöö.r,<Ößß| aî~ßbÐ|©:bÜðß_ä@¢ýðC.UvaO>:<+/h*,ð', N'hUß>äCÃÖOaª£_öhãî:îÜ£|¢_vBzað._åßr+,O/Uz_>ãoîßð.zz:öAöa~¢vuÖß©ãÖ<Äã*|Ð£<r~uoÄ:£<OåÄ¢ü~äärßÜîu<>ä£B©Oü~ã|£ýÐ/Äãåo¢Ö~îüußîäüoÜüÐUÄb+>¢Ü:>ªAhüüã/o*îªZ<î~å/ZÜ a.bªîÐA***U,oUýåãUßb/ßßä+:Üß<>b*ýh>Oü@bUßbßý©uCuîÄAr:ÄåO¢ru/öräãZî,AÖßîzo~U*aßro*|ðÜ:ãåvUz_Öz¢zªrüÄÖßB:bßÄbå<@OßýbB,ZB,/aCÜ/vha@v¢oAB: vBãüÐßaßÄCÐÜu_ð B~vÐÄzAß©Ä@ªä+hÄ_ÖßZ/h££a b ', N'Üý*zb:ãÄªöbAZAZ,ö*üAu<Ä¢åüð¢Ð,UÃvZð_U| Ãäãhäu.ãª*ª,Ä*>ozvÐ.B@uýuÄ+ÖaCÐo+AZo, ã.<C vCý@*Öhªv@huo£ãîoã£ã>ª:aÃb*Öý.zðýröåuOAaå><¢UßC@_.Ã~ãZß££ýãZ.+¢ãurUöÃü©üß£üýhßÜîößr|ÐÐBÄ+zuU*Ð~>å¢.A|oß~ÖÄÖOzã', N'uö ~ObB<B_|,Ð/¢bb<B>.Ð ÜaªßAüî,_Ü,A.,ýzß@ððA~/ãzb©hãÐa/>ª|~|Ub@rhAª*.r©boZý<ßzr~Ü>öZÜ_ßÜö_ßã.Ö|:.Ðå|ß<îäabÃ/aöÃZ*aßÖCu.~rã,å,ß©,Ð_bb/¢ÖZ~BZÐä,Öaã@<,üß r Z*übA:O,ZÄ<î¢äÐU>oAðÃÐßb,Aä*v/ðrãÐhvÜr_¢C ~©vBu©Öh:¢zv£|_å©aªãCäÜZbåÄ:<Zª.ß*ohßzßr~hüZî~B~Ðå@_AZrÄåýA öZ©OAî/Z.,b+r,Uýî>+<ßhÐ~Üb,_h/Ußv>Uz:ßvahßo ßo*¢buß,¢|@ß|B,ö@îhühvCÄhö_CU+ ýü,Ü¢ÄÖ>ð¢ärÃü/Ð+,z>u©Or_A£<BÃÄoUu_ãozÜUÖ.u*Zb.ÐÄroÄðåBzÜrU~bv,UîÄö:/~|bªbÐß:ãð<¢îÜî@ýu+hubübro<a', N'|CözC¢CCähZäöZÜüo>>Äð>| r_ªý.îUß<,**©ª©v.å+Uã*C©zUaý@v@b|¢B~ACÃöå>,|ð.Z|ãuzbC >ä/ð©Oîvvrävßb>bUZO.**ö_Ðåö:oZü<öuCUoB:@b¢urÄ©¢UbÖýaäÄýoîåOßu:BýU+ |ðUðhã£*ÐCÖãbUÄ+.ZöªuUü*vî©Zª@Uö  bzßßäOu+UAhAC_@bÃÃZÖB öî©UO+Ðråß@ÐO,|~/Ü,ãýöuußCÖ_ß')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (2, N'|UÖ*ðo¢aä£bh @++h>BU>+U aÃ//bªO, hö>.A£/ßÜ_rößåÄ/Ö¢bÄzorý/*UÄOöU<©ßO~äöBä©/Ðßb+rßÄazüC©aýÖ@ý©.Ä£ßZÄZýÄh|ß_Obå.+ðbo/ao£Z*ýßrß ü.:öÜî_ Brb~:@/ðªh|,ªö@üÄ<Oa+Zr@zUãCÐCB@ß~üü*.Ähã.,©¢/Äaî<uzÐ_üßa|ZrÃzr>Ab|Aü|ªzÜboöî_åä@ßuvåßÜZªOößh>/@uå¢~åÃA åð@Ã+aå<Ã.©äBðªuvv.ßªßOvª¢ÐaîZüãÜå,üvBðªZ<BÄß~/ZZ, ¢vuÐbÖvbÐvå|./ãBr_£öO*ß@CÐ:/AO:Ð>ü*|_o raaO .ðÃvý<UÐ¢/', N':Äª Zãb_ßhb/bZ_Au/öoo>CrAO:_öÐBbßbBã|aðOü£>väUOÃðu@O>ýCü~.ZB+>ªBba¢aOÄ<r@ÜO@ýä*ÜýÖªÐrî|ßöhUoÄßß:A.uãªO>rÐz©ÐßªýÐb@Cªîååh:ßbb< >ÄüÐ<|¢>oßv,ýîUã', N'o>BrÄO|o_B,ßh/Ð.ßöÖBh.B_*z*>îüåªßÃîýuZaÜo A_B+£ß©|BZbîuÐ,_ä,ãbU|rÜü:_Ðr@öýðß+|/ü£_ã*åª_î<oª©/ªöCb<* ,rvð*~ bý.+ãBåÖZuî©ªubü,h@b*AßÐîrC|/vîýZv:ðbßÖ~_ã£îoßÐB*uåÜß>ýbOÃ:¢üzzAzð+*Ühî', N'ö@>,î|C:Aur+Coßv.Ð+ hªU_ª~U., r Z.åý<£vC oöBB©OÖ~b*,_vU*ZüÜ zÄbÄaåbÄZßßÜ<Uýü£h/ö,>ß üßßAo_Ã@åöß¢Bubu~<<ßZ~îZvvÃh_ßößåÐÐOBA_ÖBZå_/+å/br+ðaAb,î@Üåã|übaýÐ*>åC_ðÐÃaÃ+ãî,vb :aßäÃ Z~U©î_zß@:¢@ðOBßýZ AÄ', N'å>~<£ªýOå£oª@zvßoÃää+vå åu£A@_£¢Öî*Ozb©u_vÖäÜ~|@Ð:O*ã©z¢ªv~.üö© ý@ã¢öB>BA£zC@a_z©hzb+zßbªÐ|b:Uv~~.äUÐö|£öbzr+OBªÄZÐß£¢üÃÐÜar@:£Ü,Ä@Chz~Ð|£BZaªÄ.£ö*O@/öü/O>üð+C>._ß£©ý:.Äavý@©Ãhb~_~B<vöÜ_©üßªßO_ªå:ßbÖ©<ö:>oö:Ö>+î ã_,öväåCz>ªBrB:îßu*aãåBoaÖÜßbð:/Ä:*arðrðo¢+ý +zb>_üZaî>ö/Uð@bbb+AO+ÐÐ/Ääa.ãr>Bã¢:Ã _üO.ßü,|üa©äB~ýöha|*bãBvªbZ: ,zb+Ä@.äÜ|Ü åÐä*|Ð¢@oÃ¢', NULL, N'ÃäîßÖ©öu|Äª<,b|B+/ßaOBuðAz£öOÄ©oA/ß_öüßB,£OoÐB*|öbzrB*Cª¢ýÜ/AaAäA/:öUAh.¢Äª@ðbröüBýC,<bÃ uîür*b,ª CZ£. ððî|,Ð~Ã|Üß<ðað:|+Ö¢ACouv¢uî~öðz|ÜbO>î©üÐ_*O')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (3, N'h+Ãå|îåÜzßÜ©ZÖ>©Bªä>ðoðÐö£Ãßî<Öýã,>ãuÄ+a/Ü<v.ß¢î:b/Ð äöü:öððrbåßbßãîv£:+uãboÃ© hAß*äAA£ü:_,vß:ß*î£r¢ýÄ£ß~b><ßßvÜ¢ßå.ÐAÜAhä/ÐvO~ÜAÄvA:Ãhzh_vü@OO©vª£ý~,¢ååO>hZð_.<Ð:B@u ð£~ZOÖß>ö©Ü:£_~O¢b+ovraAraä<ßÐBhAZÄ ýC:CbÃ_:>:îäå_ßahbbÐ£_bOî Ãu~£/*ãvO>¢vB~©|@ÖCýªvîbýüuüÃ:bZuÖýzääA_A¢*z,åý<bbA bîÐ/z@£<Cä|Ð: b ~*Ä£Ð~üüî~©BýÖîª.ÐuzA_ý*u_.Obªäbã£åÄ++~<öÖ_Äã_>+öö ÄCÐzA*+/OoßîZÐ¢v ärUAhÐ+vaZ>©bbuCZhöC*ä*aö. oäUýrZo>ÐÄZ~,+AAbäÖCC|Üa~ÃoýaãUBÐ.r.ÜZZ,î_<.ý|_ÐzßZoOZrª', N',@CO>î<räýo¢UÜ|+u~b+AAh.©O_bî/rª _îÜvÐb~ößÄ|~Ã~@ªßb¢@Ðr*,Ä>z*,Z.Ü_zÄäßB>@>.u |ßýªA<B,|bª*|+|uÐu_@ZßA+ä£ßÄ_BAzýaßå>Ã', N'Oar:Ä*z.@ZÜväÄbÜÜªÐ,©+ã<AZ+__ÃÐbî£ v~~©@ ,rvzÜ/vübBîüðUßOÐ..ýÜäã|Ð*u+ÜrrðubvO~oväB|>~ßbü,@Bäov@|_*Ä|.rîräåüÐäü¢ª|o|îr+UÐ©,ßã©*b©Ã>Ðßä~ä£r+£Ãä*B/î>ZýÃ¢*oBýîA,b@@ßZA+ußÐüZðÄßÐ|åzZ,ðObbýbh|ÐåÃãvhäCä|zÐrCÖzÃÜð@/_C~Öah :Özüu£bäZ:£|üªÃza_Oß/Ð+roªCOÖBbva_£Bv*>|båauC*|ãäß~rãzåÄ,Cßª_îCr+,|/ö~b©A¢Ü|ÄhbßbZzü>å/Ã£öÄh_îAhÜßãÐßhåZÐîou_ ývAa|U~hÃ>üäÜaäîhhª¢ßîZ*aî,AuªÄro ö:C_ Ü|¢C*Öð*å.ãÜA¢î@Bü©ý£ã|ðBßÖÄ:b.ÜªßßboÜöªB|@ª,ß©~Ußã</_ÃðaÄA|ýrîßýbOußã*zAbåB ö_vCo<£uö*bCåb:Ö,ªå©Ä¢ £/ß', N'_:+£~ªboÖ/ßÐv~AÄCCîÜå|¢:ý/ª r¢©+br©>ü,@Zazýößo.C~¢@ åª|ýßî£oýÐöhÜ:©bî_ÐÐ~¢Ü~|Ã©ãA>Ö~B*>:¢ÃÃbÐ*ZZ*äO >*rAåßÐUãü.CUßh>ü+A/ür/uäÃýu*<UÃ@ *©ZÄÄzªU¢£v|ßðuÜzüßÐ+zîýOOß@å*ÐÐªî<:rv©ÐãÄ|ÜöZåba|OvåÜüAÜZ@@>b*Zð_öî/Ö~AzBî£ÐCbåzÐ> o:ããö/ÃðÖhUÖ+Z', N' ü£Uýhößäzz£U¢rÜ|AC:ÃCüýb©ZoãoZ/v©_ bv A@bý¢Cb©Cð:O O.Ãua£O äßöÃAä,|båÃzÃBö¢h*åaýoU,ýövãü  /baoÄCZ~U£BbbÜä£B<bb©Üo*Ã__ÄBª_ªÐ|UUÃðu@äÖ¢+åCO¢hZO+îU£©î©<O||>£C>z>@ªüOU_uîhß:|+ð~ß/oÃ>î~*a/böZUüU+ßÃB@ aC*AÐ', N'rîß£ýÄrüßß~övöÐrªö©O|bÐ©ãb:/A :obUß@UzZ_Öv~aBov+v', N'Bb*@COCßðUÜö:*/îahuüz£h.Z>Ä~ÃßBoC~+bÃÄÃ*C>+Zý h©£Uvubü:/ööU¢:_Cho¢ãäü*rZ:äãßZä.ü+bð/_äBhhðhÖ<bî|+uC*>vÄzbüÜOC£oB@vv.¢Ãªz@ÃÐAu:ß,üZ/bÐb:B ¢+|bîA>Üburß>öÃ¢ßãß@Ãb~O,uãuC*:ßobazAuª£uUOU~~< Ð.ðu£|£_ß+©ÃrZ£ÃÖ,£.ð,~~UOz/î*~ßÐ><Ã/UO~.:@©|î:ö~<<Oöb,*ß*ü:vu£/ÜäöÃßüv@ubý<åðA Ä*ã.å.åÃBhåBvÄzrßbåÃüÖh¢uöüåbð<åz£Ðð+U_+ývª©bOv@Öß©ßb +ürrOö/ý¢O©ýÜªü,ß|@>ÃÃh<|b©/hvU©ãüvÜÄObªðý£/aB,£|+üCv_¢©ßÐ£hvaä*ðýh')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (4, N'r©£>î~ÄbÄ<<£AåÜzh,z*ªöý_ð*ðhZ>aö~z*Ã ª*öðªBUO<UCBbß~ã:ÐU©B~|©|Üu:@bÄ@bü@A*.ýãÐ+/CßAUÃ.Bh|CAuaßZ+ãåÜ£.@~AbZ|<bÖ,ðÐo:ã@@@b.ðh.AÐ>UbAhüöÐA~Uao.ä¢bßÄB>ä*:ãz*Ðu<+oý Üz.aª/üaCäª>*Br', NULL, N'ÃöU¢åªrßªu>_ubAã£_rbuZh>Ð>ã üU_.¢b:bBh.ßßÜßÐ>~¢_<@:£ªÜB.ßÖî,Üåä*ÃbðoªýÐ>C,v/:,ýoäzä/ßåßãöAU*UAbðî<b.©<ð>ßö@u@£ü.ÖÐ@:A/|ßvbr|Ð,vB* _ý |>,,*£ã*~ zbß~>>~î<îUo~v*Ö,Ã/åO', NULL, N'OUhb©ÜÄ:©Öî>îßÖ~Ö.bbB.îCA~UoðÄhObÖ.v*@UÃ', N'<ã+ãäªöãCÜbðüÜ AAb_|@üªÐ/o,<UUO*åzðbÖrÐ£rB~+ChÜ¢ö <oo¢v@U£,Ãu:ªå~Äb©ãvZß å*/+UªZ,Ö_îÖaOUb.ßBßb.Ð>ÄÜ,BCß©b£ßvvãhýACZ<ðÃC~@ßª./OAZ<¢ð©:urZöääBOîýuZßbÃÖößß~OäZ>,Uä¢_ß£î:_ßða@bßa,ªß+hªC @@ßCbv*îÜ|¢a<£C  ßZvÜÖ.Ðý~ßv<hv¢ÖzaZãÜ+v:auü:ß_Ð>>bz ã|ÜCbh><B/£zýUo£ß>|/AßÖ@/ZOAbÖýbözîÐuoÜ¢åÜ*~~©:|+B©ý<äZaßU©ßü<.*:|*Ã /.©Ðð|U<OöÜßª£übýªBaîöü>ü©.+ahazÖuöÃav|ZA_ªzåü*ß:v:üUÃ/</oÖUoå:bö:b,ÄZbÄAßü* ©ªa ~îÖ©AbbÜ:Uã@zCob|', N'îüBOOÖð/ÄboÜ|Öð|ýÄ,î.aªUAuOÐÃßvÜzOB*<Ä|îCª*Äz:ZÜ+|o+O<aî+ãoü|OÖîß+<,£~bvh<Üß£îö|ö.+h£îªãorý£|ª ðã/îðýîhß<îuÃÃuU<î~Aoß¢vîÜ£u/~/Ä_häöuýa~AZ~£Ö©îhðö@Ðý|OCuOýo*©ÃrAO©_ßZA<îýýåuü@uä>z>bÄÐýüÐÐbaãU+~,¢|a+ £ðbßý~ZåU£Özã*rCz:Ã|b')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (5, N':bÖªZã*öu<O©|AåÐ,Ãä>,U_,a,v CzßUBð~ÖuüýbîÄ_ß©Ã¢B.ÄZåubªu_+ªå~Aãð©ö|£/h>/Ãßª©ÄÄÄzÜoî,aðaA +uä+C:äå¢hÐhü©ZräO.:ð@ß©ZC.C/îÖð_zbð£b~*Ðßb|üOß>¢roÐª|.ä,ObýbÖ/Ä,ß~£~+|ÜªbÐC/UÃBZð>UÖazýîu@:ý~zü**Ooªoîv¢+C|ßZ.o>ýÄCvrü+>ªÐ+ãBßAÐÜÖbb@>hauª,åÖo¢ß*öaåOÄo,ß©ý._._~Bßb@*bý<|CAª~<Ð/C~>hÜh|bªÃvã>Ð<ßbßßöBB:vü_zbÃ_ß ö|Zöð.ßövað£ßhýã£r|ÜÃß*AhuoUã<+bîðîö/@î£aã©Boß:ß_</<ýa£hrvßÄU|CÜ¢äÖîUb,CzîÜãCUä Ü*Ã*bîbåvÖÐOÄr./Äî<zb_|>bzobUßAü,<öîäÜÐÐßå£> u.C> CuÜ|ZuÜrvÐÐý£:ÐÖÜuv@|öOÐ@OîbOäîb~îÃßrãrÄC©>ýaßuOÖ|:OäýÖObAAC ÃA.ß©.ÖÖð|ðA_,î/OÐ', N'Äzª,Ðrªh@Öoßb+/£Bo ,<.ãý@hzªäÐäz O¢+.aB:ßªUo.CüOöv a, :Z<¢ä~îývÜîã<îÐbUBbå~åO©~,Oh£ª.ãðýÄ*îÜh>|ß <v~£b/åaUö>Ö~CßA:,Ü*©*bî<O,o:ö~zÖ_Ã.aÖhÃÖ~oî.UhUBÖ©Bß<©hr©oåbÄ|z*rýb.,AÄvb~Bro<UAhbÄv<@Zå|u ªU£Aaä_uUBßÄÄüßÄå|ðArîãî£äAå©ÄOäoÃCA/_b ¢vaö +ýz©ß,z¢rhÃ,Ö,oã©__ðü_aãßZ*<ª,ðîî~ZåÄråzäUü|/¢Ãoð>üÄ<A+ãü:ä@bßAßrß>OCvC:©ubÄ|:.Oªr_B.u/är/îU**vbuo*¢C@b©+@bUü£v>bÃðävð+ý+¢ü©*äCzüa>,CÜbboåÄîoOî|O.r£..ÜZÜ*v<|+z@,ÐZühä,v¢ãÄ+r<ãOÐ,<ö©:å|Uu¢Ö@~@Ü~r@/îö. aöa~Ä,bz@BÖoå*ãöãÐÐðU£ÖbzðÜaö,vßüoðÐ/zäãhzu.ß+åU', N'~Ou>b+OüvÜªb*CßürÄ.C>@ååÜð/ uöb_£,ßB~:B|_<bbuböB~äooßubbz ÄhöãÐzÐb.üzÐ+Ð¢ã~a<ß©Äý*Ö*ßåÄ.zÖÜUÐö¢ÃÖÖ*o£üÜä</@ü£b~@©aoªB+@ã*ý©_öhýÃuåvÄ/>ba|åä**ÐÖUOv~ÐÜAª+U@ß£zUî*/ãÖÜßåboöoAr>o>ªU.+Ã_vðOvî<ðÃ.Ã ý>î@ýý:zO/ß¢ý,äbar.îärßOð~@å,o:@:ÄrýUü¢Uöb>B:ZOåA,î>aß:ßÃÄª,:|îAüZoZOäßb~oößÃÄÐ¢,£äaUü@£v.z_+uÜ,o:COh', N'O~äîãä£BüýýaßÄîßaÖ>aÖ|Z©*+_¢U~_<<ö©/+b©Üª  _,rü©v©C.¢îðªZr|<zaä+/>@åA<.öBÐ,/uÐvh.å+|<hä~AbhO>O<~<üBîÃb¢ßvozî>>,_ð.b/£Zîz¢öãü u:îvßöv¢+: U~zzßüB@©~vBhAörbßvÖu£:AÄ.£Ã|hð_öÐObýª>©ã zÖö*ÜuäÖrãBÄB~Cv~. ,ü@©Äh,ãäu:Zªîî*Äb*¢.ßßðb:U¢~öÄaB /*ÜbUu+,a_Ö_<ßOU.rUÜî~oªªvîÜUî>:Ov:||¢ãhUAßvO@ü// _>Öz/ärO<ü ªhCAZ*u*¢ÃÜ*C_åÖå.bz: î*ýÃåãª++oäß¢åÄUåoÐBß£Öo£Ü_BzÜ.©åZuÖAª<', N'v ¢<zîýb£_î|+@vªãABZ>bªÖrð*£üuv©+*_zC©*å|b£U>B@ÖühO~,BUrÐåZ,_ B/vUraýö<OÃrÄ/.*UB.~ÃßAÃZvB ~U,ü Uöuüvî>Üa£aåO+ßß+¢Oüü¢v,|öðð£+UßÐå<>O+ýrðßÃoAßBîZ@rªrý+ªÃã.zü~h¢.rozå ¢ý£ýboöC+ÖäA£CO£~Ð>åß*üÃu*©bÖß¢Üaüîuöuðu£|:£/öða:Ö¢/ßa@ZAöÖÄ<î*_CBA©uüÃ+ßvUuåzUZ.©~ýrröa:ªOa:rÐÐuð_*ðvÜ>bU¢_ÖZ.ÄÃ<zß **îhAu¢ÜÃîª_@aöÜî+hîBðö~.UOr<zýîð.ä|¢rîAhÐ+*AaUv:ößCoðu/, ÐÜb/Z,îÃªBo,hÄ<CÖ*_~|.aîÐ_@åÐaO.Oz<CýÄ/ý: ,', N'bßb£boåîßÖzÖhÃÖäAöªðÐrãu*hAð_huaäß©Ð/uÃãz@*_o*ãaÃC.+Üu+äö', N'ðhü*©@zî*Aa/ßvÜªrãzbýzAu.ÄäU¢.ßß~ðÜÄ*OÃaä:<ü©ÃªBýªOa£ÜzªBÐðö©bvöUuãå>bvAoZr_ßb|ÐCÖUaUÜhßªoªªUÐ*ßO_Ð/ãÄªð*hã*|ÜÜAorãîßvÃ:Bbv :©Ü/ö.*Z hå,oz©BöÜuã+~/bå/ýðãv')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (6, N':v:Ã*..o.>ÃAz:Ö>~ª@zß/üåuÐ_>//:bÜBöåäýÐ@+b.åå.Ö/Ã< UÖbýaz|<¢äîÐýA¢vr@ä£ªäýðÐABýßüCßöCuzÐCö~Z@C©: .ãvh_ðßßÄ+ÜCUür~©£ÐBÜåß _B~Z+BÐ :.ªUÐ£.raC,ã_ªäü+Äã:ð+__aöª:*_:¢¢:©ß*öãau_b£<ýÜöuªî£UZ,båbUßbüä<©ÜrBðbª/äãu+zåbAo©UÐ£ß+*b~öZÄAövÃªýÄÜÃaOý<ß,bAÜýau£+Ðhãä,ãA*B ÄßåöÃÃå*U:©bÐoaýZAßüZ>,~_|ÜC ö££B©Öü>C BB£üOÄ©,©ä.|a|hAu.z.hðÜAzßaüb.A<OÃÄä£@uääoBvî+¢Bö¢@_OÃOo ª©*ÃÄ Ußð+zãv,ÃO:|üß>CðOða/å>Z>>_@Aäåooãä:ýýzUÃuã+Ðhu*ã<Ð', N'Ãå* £åßzÐ+ãzZ,hübhðä© rbh_*ZrÃ_CÄ,:ö>C B>ööäýb:Ðb+Ü*ßZB+ÃzrB_@BAßÄ~åör:ðßß*Ð+ bbB¢ußðrz.zbvrðU|ýãîbZ:|Üåðä_üö*ý*vCaîZvCª,O~åðva|v+å:ZÜª@ã îb©*<öbððßu©Ã|Ü:åZýîö£äüÄ|<_b<@<bö+bðbÃ¢ßa r*ª©z©ßåz_ö,UrÄ¢î<_ä/ZÖ~ÐrÄ_ßª*Cöz£¢CîoäUªröh|Cär.ÜoUoåð~aðCüvbÄOã/ð_B@a Ãªãbß:Obä*,ßräÜ/ÐACýbîü_<ÖZhO CîÜã||Aãß_ÖABð£îýý£>ßb.aZß¢zªAobî_u>A+Zu,åU|uaßbå|Üz<Ã>A>Ö_ÖðÐUÖ+Äh|Ãoå¢Ã.Cðããßva~/Avã|rArývß@z£¢<O@åu*ÄÃo¢b|~r', N'ZÖ*zu>@hð_>o¢ßoC:Z*£v,ÜUÄ Cu@£:ý Z@Öö*.ý£,öÃã_b*:ðCZäaÄîýCªå,zªZB@ã Z,OCå*ýä/B,ovÖÖª@oh ~¢ÜãÖ_ª*Ü©ª ÄÐbbÖa.>aã:åÐ/ª¢|aÖð,@Ö£ª*+*Ö£bÖ>b/@ÃÃã@Ð¢zÐoåCzðýßÜð©ðrý.:.£bÐ+ÖÄ,£ýbðåourÖrA<Ðub.ÜäzãßhU_vU/å©åðü:<:zãbðªÃ<OýüðÄO~£ü@:ä~@Ö_©¢Ä @ävbAUÜÖ~ÐöÃh*öv~ @vzað.@~îð|z+Zå+özÄîî<,ßbU~ÖÐu|<ü C:a@öä_/ ãrv*£ßÜ.£|©.Aä<ö©ãÖäÃ+b*bo/*/*ã+<o|¢ßåðöößðîZîB~_~ZaÜ|£<Cðz>+/ýZÄzöåzähÜðßðå/obhbãßãbã~î>b>å~.~@ß£rýörZ©/>Bü£ÜAöäo/@¢hråÐb+u*vr>U.bßübOä|h.~ÐªUÐA|a.übîÃ/zUîãbzOZ~ÐUÄUüÜý~ö<Ð¢hCß¢rßUÜ@O>*+©ßva@ßuZoåaaß~u/,B.üßo', N'rä@ð>b|Ð*åzüÄ|/£> ýUÜª,ra*hbB,_>Ãoß©ZZÜBzZ©îZvÄã©Ö:<Oî ~:zîo', N'£ö ßv|ÖÜ+r_åð>ö<ðÖ¢z. öb ßßUrü+¢Oã¢Ä~<ýoBå,UöZüã¢ü,o@¢bzav<<Ð@|,ãîÄBäUî:Ö<u@öÃCAßýªU~uC_Ö Ãzý>.~za.A|åü,bö,A._* o:©Öî ßªÜO @_~<Ub¢uövb:ðauO£ßBhuü+o@ã©©ýrßv,|/ã<:hüÜ .bbýÖÐÃhoßÃAB_O.ö.,üuÐ:ßb*|+ÄO©C+å|zb_Bðüãba|+:å£b@Ð|ßBÃ~vð,oz/üC~©uýä*. <ý+Ã/UÄîÃ', N'©ö_|ÜäÐßªÃÖ£,bîýÃUåÜÄC,BßÐahAu><~ÜzoAC/Ch@ß£Ð*üª_Ua£ßöö||:Öbä~ß,rvb¢ÜÖü~ßÜ¢OzÖ*:Ö,ªÜrãÃ£ãÖ~|*+U|Ð,/<v*ãÜZ.ãAzÜUßCZz<üaO*~/Üao,u:@b/ðzåO,|ã<Üa© b>Ü:bbÜ~ÄuBîã|ß¢îr+>U  >UCððh_, îBÄ@+ðO,Ð<ÄÃuý*ßÐu~~¢oBÐOZuöhã:OßÖýÐäzUüaýÖÖª¢vUÖBOðüßÄÖaý bÄuUîA_å<aªü/üª~£,*h|AüOb©_uabuÐäýovÜÖäÐbÐßUhCÖö*ub+©äÖbÐArU> ä.ÜåB:ß*ßî@ªbßuÄbðî~äßýäbauB@Ð_¢UÐå+<UAz', N'/OãbÜöãaýZ î:b/ðãBUÄãb*î+ öãUßåª/å+ßAauvv>ÖUz vßö|.öb/o+ßö©/aýÖO,Ð<~Ã¢åßäü/ zC~bbCîÃ+ö@ýÐýýb ÜvZÐ|ã|ãÃC ©ªbBaßbÄ*¢+åBbß:r<äÄ¢ß>bÄo~ÖvAu+a~AÜä.ýððZÐÄ.+r©Ö,+*ã,ÃäBa,ãuz: .ýä>AA~Ü>ðÜ bÜ© üðýä©ä_ªåoÃäAhÃªã.z.>Ã¢Ðß~ãî¢+ßz*båzz~©_:Uªå*ÄÖ+Uo>©<UãvZvbba£ý@++@üU,zvÐÖüUbÖ+Bß<£<åhßBuªab@~_ßvB>ürßCãäuðÐZ~r_îöv_ý>£U_.Ð£,UÐouoüýU.îA*ß¢£rBß£.<o~zýßÜ/v/Üb<:ª>Ö>CªuZ<bUOoåaA/ªbUðBoãu r_ýüCüå*ah:~ÃbOO©@bß£å/uýoüU_>*ðZÜ,©Z@ðvzßää~ãðAbÐ/¢Ö.ÃzCÜüüý¢ß@ß@zî£>îh~ß@ãA|£huörßbÄoåBB|>_üZ©ý bb_A+_ßzAüåãZ_hßÐb/a:B+/ß|ö,~¢@ääÃ@~ªr|£')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (7, N'©OývßA+ÐUUuüåüÃCußª.Ä.:Aý~A_u@<ßAÄ.O/_ÖðAä+Z¢åß_î>üÐb|bUÐövuýß@ÄÖ/öo|>©ÃbÃ,äbO.BÖ<£Ð|ÐÖ:©o/<v@ðr*©@Oö£ý.ßv©+orr|_O:@OÜhaÃ<>,bO.@Ör>+£uoC<UîZb,z<üäöBb.A|@@><oª*¢äoªüÃßð a*AðåäözOA/OU :*OöäCÐÃüåîv/îÜ Ühö¢bÐ,BÃ©|rZCOo,@ÃvßÖüßª ,hAª.A@ãUZU¢UÐübvO__,ãÄÐåîu@_AOhAÖ UbbU_©/äåðÜZüZÄ<ÜUbð_/zÐ>ßazuCB~>,ÄaOöaäöüßßB¢vuß_,åüßßßÜ*ÖÐ©h£ÜßOß||ÄzãUrý|¢>¢å|Ü<©Är¢©ªðuãrZrß AüîßÃ©CU_£ÖãuOvÄäOî©üb¢_Cö£<:£ö', N'u~@ÄbäB*/o|äã,Ðüh Czh+ý*+ÄÐa¢ÜîÃÖ£ý~Öýß ßz@åb©v|î@  ãÃAäªo**CBÐ£väBO,oro@ß>ßãBzÃ/OCB:~ãbª', NULL, N'¢:rÄ~åªr~bOÖ OßbOua@ä©îöý¢rÃaA|vOª@b~ßUü<BC*ý*ÜZÜßå,C:Ðö_vÐö©ðr_@î|Ä£Ð<,ýbAÜ||ö¢äîîuoOoÄå|@zbZZ_î|ãBßb¢bz<.b.ö,ý BBÜAü, Öäßbuo ÃÖ<äýÄäãÜvãî©ÖBZðO@ýüO@@ðO> öv|ãzoÄZðB,Z<vz>ObÄ|£|åîÃO*>Uüößr@î@ÄýÖ>bß*ãÜu@ÃåA ä:ðÃ++£hüßrbüh~bü+ßÜOzu@ßrAC<£©¢u£b*vß@hbäÜÃãÜ,Ãrh| bUh|U.äO*_© h|ß bußhä£Ä @@Ãbß î B*_ü>@Bäö ß@', N'_vöb¢ü*.:/@ßAÄÐß+a¢*ußaäß_CöO@ãrhbü.CÐÃðý©åC/Ã>,hhüßîãuÖvBUBã,uö~ ©üÐ Ä¢zÃ+|îî.hAÐßb_bzzãuha>~b~/ð@Ca_£ß/ <r<©ã*©BbCªO,_A+C@OÃCÐªßCý,zC>Büªr~BãO+ß*.@üüU@ýb£.C£ÖrÐ~Ã_äü+ü|a¢|röð@öo+ Är£ßå:.U<Büzäýã@o¢>ãü/öö © AhC:öZ.>_öä©._h><b ÄrB.+z©', N'vUÃ<rC+B*¢AA:>z|ZübZãö<îaühðÄÐoZÖbuZv+<ZoAhãaZvÃßãB ~u@ ÜÜ<uý:+ª<ÐZ,vAzî>ßhßß¢åÐÄ/hå£ßÄ@@î><îUzÄ£@+Zaä/Ü@OãßBÄ@håÐ@_ >ü£aÖä+@ãav<.oZUªÐãa+*:ýð.ß,+~oÄÜ,o|ÄvUýbUÃO~ ©|uîZaÃ_öo@©B büovã_ÃAý', N' <ãöC©v.ªÖvo:ZhAU/aAbOîöBB. A¢£|>+ü@ã~ã<Uv>~ßßÃüÄ>:ªýÃ<o~îäAUð+ýBÄ©Bzªr£~@ÜÜÃzhZ.:¢_oA|ßåßöðÐßU î@>bh~£Bzßa<îÄ<ZÖ|ªßZßßbhäu>©vðÜZ:åoßboßß_u+ABåO*£oor:AbÃ.öv*o.Aåur:ßz:Ã.ßaÖª:AbüboABÖ~ã/ß<,Cå<¢zO<ßå/*AO<Ð./v<U+åZZý,öC£+aaßb~_z+ª.üUO_ÄCã¢aO,o uaU~O¢ÖU+h@/ uCårBb£bZhÄÖ~å|zB<ü')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (8, N'ªb öhÐäo~B£C,îÄÐßb >vöä_ßªÖrðZ©_~¢¢b|vö ßîÃAb£rýã~Z,£ /£rßC_ý©Uz/C@ÖZ©O_hýÄ*vã<O,Ü**avåUrüäÖh.*C©,ªöC/ÃO,Ðv©¢b+*zöhrzîZouZ_zß..Ð¢~Ãåu_bübOöZauªCª>:rvhßÖB/Ðãå,+ýz_AA,>hÜåOhhüaoý©/Äzöu:>ßðÜÜßubÃßöü<O~ÐB*ÃzBa©ßBZÐo:ÃbABb_U:Ð*ö©C/ aAÃßBÃªövî+<CCÃ<bbªaÖðå,¢*v+aÐ£ý|*ßbªîbÜbCÜOÃbC*bää~>/|BhZOÐ.Uö@v,îÜ ªåOýãð¢oÄÃ|uð häb<CÜÄð Ð *ßOUîzo*A/ýÃª©@ðö/~ª>>ðß©uîßý¢Ã|/', N'C:îß,.åîåho:ßªãÖ>ÐCßäî+~©,+*,Ð/vðO,<A¢rrª~A©>ÜBOhärßzãªuB Cýb_>oÄî@¢r+Ðä_ðrZäÃBîZOr__ªöb~O+Ã>rhbBåü~U<üÖh Z,¢ *,UuÄä öªBü/baaA+ ÜhrüÐ>©ßu:.r _/Uãü:Z>ZÐhZåªß/öÖBüöª>h+©Ð|î£å_,Ö.ýßOA|Bã>,bÃäîä,vÃ U+ööB:ZÐÄª¢ä~åCOß¢ÜÄ@äBCBbÃßãÃ>,Ouo,<bÄÐÐã+Uä_<ßÐÄb', N'ýß+vßäaÖ<åABU©+ÄÐÄÖîAü©>äU_ªåbC¢Ðår.ÜC£rÃüvö*oªåCBaazä:aCå.|z.å,Ü,*+:öö¢b|ubÃÄoÃ£©>ÜbC å.rzåÃbîvBåOößU.oh,öÖ£,z,ÐÄð¢ðBz£b:öv¢bðü©öüß_rå.U £ÃO~UAåîoüov*ý|_å*Zo@B:üBÃ.>ä@ß@+ª:¢<>uð+Äåüß,ªýuý _CBß|ur<_ª+b£h£åÖ@öb+C+ßßr>hÃB/våOZ,Zßî.va©zý©UßO>ä:Zðö.Ðzý*Ðbß:o', N':äUªö¢@ß+:bßhö©üOuüüüUä£ýß_Ãruroå>ßüöîðãÖC~üÃ>ä.bBªUrhurý~ªCbãªoUîð¢hÃAZzhuã©åü<üh¢CªüüÖ', N'ü*ZßÖî@/ÐÜ~uv*b ðbð+_Cªhoöu<_vöo*|Ð©ý@+z uorîÐävbZbîãðAäÖo¢ßÃAå:ß.åÄ¢. ,ÃªAzü.u.Bü/Uub .@åðãî_¢z*Ã+<äh££ü£ruîÄå ðrÄÄª£UÜb:rÖ<<>hýÄüvbÖ|ü ßv|ãC@ßý~îÃãîÄÄ:~.,ðåo<obuOÐ¢ZO¢Ö,ß+©ðöö,Üî|ßzBavß: OA/¢Ü.ßî b*zÐbb>î ß©:/@Cvî*ÖCO<ßãã:ÄüO~Uhb¢*.~ãÐUªCðaÜåÖ@z+äbAßo~|<å¢*_ÄÖ_@.ßOÄ©b¢@>b_ßbüÃr£ßÄrBU<ÜäCüCåb,O<v<ö ', N'ß/@ZBAÖ/ððhîîA*/o .ä|B@¢/©*zß>ÖäACîÖ~ü,ÐBÃbOÐo>oCßzªðÖhÃîåã.Ã:¢.oväÜC~ãrö©Üåb îZorOüroöZýuäÃCüA¢b¢A:ZÐA_ýB£Uüv¢~ý|v<v©ua ~ÜîÐhbý¢hß/z/ý.o£üB>ÃzÐ~vÄ|Ä_++,AhÄühßãA©¢ã/rZ||ã ªÃh>£vAz:/>vbÖ/AvZv:Aähbßb<z+ýhaäuÜ©v@<:ðß ,@,_býOavz+zÖ|b©~ßÐö:z>.äýÜÜÖßß_r@Ð_._,zrýåÃ>ðACOãî©OåäBaý©Bu.U:<ãBuß_vb,.Ö<.ßîöü£~îîh* ££@.äzBÜÐ.u©ßßZ£~ävÖC,©rBÐC|ß*|*<Ü~OaãOB üÐa~UCO*özA', N'rUü  CO@ö,ãäObrC¢ÖÃO/h££ªã¢öuåA_<î| rÃ>bîßA*OÄbbüU _*ÃobªzÄ>>uZb*z,Z>åîðv¢ZªCZ<åÜ|ýý|<OßÐ>Ðîýý|©_öaä Ü~B ,ZÄ,|ðzßßÄöUz>äCª|ýhaövbªbOZª|aýå©Or:,O|/bOZª/u/oÖÄu~öz/a£ß>ÖauUÄü+£ ££u+.ÄöÜý:oãÐhääß,ð*Ðrß~Ãß.ãð|£b|B>C<ãoU*©ar¢£Aå*+ð|/Zª/ã£ÃªZBã/ßBv¢¢Ö+öuÃabrªöAÜ_>_£b¢Z>bvãh_öUß~,_+.vªaü*Öv_UuÃ£ãÖªzÜÐ:ýh|<_')
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (9, N'ÐÜU¢u,©+vå_ÃÐåaößbh>Är¢@ß£b,ZÃh:o©a>z¢aZý<<ÄÖBa|ýOÖ/,zü@hÐß| ZB|Öb@bå>£OAã>uÄîÜÃ£@,BöÃbäÄ<+~ß:üÄ,îü©~öÃ<_|,_ßÐßUöCðßåý¢ba£*,hb+~äßãßöBCÃßð_+Z@bü©C¢Ã_oã,Zî©ðªz <rßÃaîaZäauýö:UÜ<ª,Ða/ÃAÄö/@b.Ob@~bO<ãAb£ãÖÃzoåöbCO u~ b@Üüb:>U/ßh<+,bz£|zbO©aÐ_b><ðUääöUa©Ãäüªo~zäoÃ>|ýß_Üî>h+>b/üüA rüZ_C++¢Ü~Ãð~*h|ã~ð<BÃBö/C£o¢/a£CvCîåo+OªrÖOr~|a+>~,A_u>å CaÐuý*~bß U', N'ÃrÖåîðîÖã_¢ßhäª¢~b¢A|b+:,r.ªoÜUÜhßårv©z|ü|v:C/ä<ý.rv¢rC£ãZ>Ã>z~bzã£zü.*ðÐbbýÜî*ü*ð¢Ð|üoðÄu*üo¢b£ürovÜ|@|bZ_|oCäðö@*~Ãã<*ÃÐ~Ðb+ÖCý,a~ÖbOß.bÃZ.~Üª+.A¢v<üCÄß|AüÜ@©@/~ÖBZOä |o£orðCöý+¢*Cã>/ååö@oß¢@aÖýaA>bUoZÄ  ü>å:Bü.î .~bzr,U*OÐ_Co/ðCð<Z,rßhOCð+bbbãu¢Ã*.ðÄZÃaßCüßrßbü o>C@C~:årZAOZhîz><B@Orrª+.ÄO,îCzBÐå*BC|Öüb@a£ß@üb<Ä ü:oüZ@hÄäZ<ZoÄB|U_u+î _hÃrö', N'ÐBðrÜ £~ðb~ýäåÃ|UãöÐöÐ@v /¢îaZB||ßhO|b+,/ü >¢,b/ä~/*aßöa~©å*ÃÖ|¢öa.bÖ>ao:|Zý.A¢ö,rA/ãÖ|ÐåCªîrAÃÃ.Ã_¢üýÃ+~Zî:_ö~|bðü>ÄCßr:©O¢îBü/åª|Ð<aü,@©ä|ãBrð_AävbOüZî*oZßb:< <~ð,äbAü~ýbvU**<vBäUÃ+Ã¢Zãhã©|:r,u+@Z@©üßz<OðA£ýßß|ö~u¢BåzBAörZA@ãäaýßOÐ/î/+î@ÄvOhaäý@¢O~v£ý/¢AªA:£Bo£aý¢ã>ÃÜUr+~ãäßr/AauÃ.ÄOrZßäã*:ä¢C@hAuoAð.*bv,ªÖu.ª.£ä:UZß/_ÃßðîÐ>üÐ*©oräüZZb¢îßÃb£/ÖAuÖ£vãußª C</*Ü.å.|U,_©~OO£îªä£O>hÃZuBbßö.v£oß¢Zh.ß¢br+>_o:BOzOÖÃöýz£>OÜ ÖZüZA/,|+ÜrAaBzÜrÐb¢ý¢£U@öuß ¢¢uAZ î,r>', N'_ß_ýÄÃãÃ@:ÖCo*C£ÐÖBu~uÐhüaÄÜ,,ýU', N'/ßBvßU+CßOäBåörv©/.@<zb,aÄübzh:@Ü~îZ|:üãã:.|väCÜ|hÄ_ããBhÖÃUBZzß©Ä* zAðÄr<|©Aå>Ch~r>o.ðÃö>Ü_äuä|_£Öãð_ßÖ£/>bvobUU|C@bß£Uß£,ßU+ãý¢ah+h£rªÖ:äÐîä.Ü/@ZZB*<Ðý>bvoa>v~@/vA©B~+@Ö¢öð öUª+ÐB|åZ_,,£ªð/Öü~o,/oÖÖ/Äî~ªãßboCA_¢ÖOA¢oÐ£Z/ý:bý©*Öö>bä¢Z,£zÃÃ~z><ååCr.hÖv/C:ýÄ:>ªO:zrªüÃa<ß+ <Abüö>|Oå<ð¢Ou¢Öoz©Oß', N'CaZåðrBÐ¢Ö.ß.b<Auî ÄÄ@ÃA+*öãohr_,_ðü©¢¢ýÜÖzåÖ/uÃ©Z:v:+ßª v>~UU|<_å.äh@+ªv ðüußvöhvOåÃðbaÐ £,CbÖ_Oß*åa*|oîãah/ã+@a_:ýbÃßªß.hßäü<u~,Ü,:+öÜÃaüãðö|îöC,|ªÖ:<aÐBªrÖZð+Ü|Abýb¢ª©ZbÄüÃããUãÐ~îªßöz+Ðv*~ðÐb:h,@ãübÖüö:,ÜAbUÖüð| :OÐBÖª*+vB+ ©@_:z,åÃßö©*__*©A~ªaOÄaü£/B+Ä,Ää', NULL)
GO
INSERT [dbo].[OwnerContactInfos] ([ContactInfoId], [Email], [WorkPhone], [StreetAddress], [City], [State], [MainZip], [ExtendedZip]) VALUES (10, N'@>Ü:|Aä@>>+|uv© ©<*oö>~ßåz>ü/Ußv:/ßOUCbüzr>:ZääCAbA+Ðð', N'ðü~U_åbUÃCBß/', NULL, N'.+äÐýC_a/,ö+u/@_vÜUZ_ß/.CUÜoÖb©_ü<ü*b.Aß/~ßoöÄAU~|@£Ußaªö:¢Ð*+v+Ä,,Ð<o>äÖ/ãöaZ:,u@~r|azo:+.ªßZ:b //| zÜ.b©îßüb~©ýu@ßÜbßÄbUvCÖåb:üÜ¢~äîbîÐOhåB@O.ÜÖ¢|Ü¢Zv¢Ð<bb©£Oª:ßO.ýßBhªBªðîª|bä av<© >+öC.aäb@öZ£ÃaýÜð@/o_©*ÄCðAO ¢ðCÜ<ÃbbÃ©hÖaBü¢öäAå|bÐb@ßßAua>ü©Öåaoår ðÐUãz._~+BObýzÜ|rbvÃäAßÃOobvr', N'b©ÄößãåÖCvU©hß/ü+ü ßbª@:îð|©h v,.ªB,v*öÄz o/¢+©äÐOÄzåh,:oUbîvuªÜýäv@ÐbÃaaª@Ö:bã@UÄðö¢ü>vu¢UAZb:BÐ+/ÜCoC©<ÃZv¢£ab.@£|Z£oA*ýzCß©Äöo/AB¢b.B~U<ð©u£|ªoªÜ,åßbu./Cãaäßü Cr¢ð:*B|üAOu*C Ð>©bö|v¢öäu¢zU~,©ö*C:öÃÄU©ãîÖåýbzÜC>rÐAÜã|©buÐßz+£@vaýåÜßöãZÄ*äbåo', N'hBröð|våZ£<@ä__C+ÄA î ÃUåÖb<ÄªOb.vOZ/~*:Äý>o< .OßÖÃohý¢ß,übO>ÜO©<.B~*U©ß+~ªîß_Ü| å©üðað/£+î<_OöðßãÃbußß~båß_,ÐüãO<ã¢CuÐ:<©öý rvO£©BýäÄ*@bBåbu,Að,bZb*zß~BU|_äßUå¢ªîÄ¢ýý<Cz~A ÃuB¢AªZîrß ä>åªoß£uãa.ª> Z,bßðbÐÜv,a<ðãuöü.Ü|äCB+  £*OzvªªzÐrrbvÜªbU>ª©åßaåbaßð:ozÃ>ª,+~öh.äªBAÖ', NULL)
GO
INSERT [dbo].[OwnerDetails] ([DetailId], [HomeAddress1], [HomeAddress2], [Level]) VALUES (1, N'ßBä*ÐüÖÄã:|ö<.,übAªrÃbB_¢Ð~ÃzZAßBbßßößÜßßßÐa Or©O|BBå*ýÐa Ða,b._/Öä,ª~AvUß+î*bu/_î@ÐrððÖbbßªbÜ/Ü+O|| ßb~@ßãbüb+ðCz:<@© @ßB @ß.r:+ª_o>£BÖãðu+bäÜýÄä>Ö öUÃäbÖu:|ßC¢,Ä+_r.<rÄ£~:ö/ü  ßðð/h.*äz:åäZvhCÖÃh,:>:A|ªz£uî¢ßîCÖäOrvZaÃîü~ /+:*rÖßðåz<åå@BÄ¢,ãBüo@vð_.ã,Öª</uOöräÄåüüU/,z Örzb>h>*vãO/£ ü_CÄý:£ h@ÖÃüCaðBåªu©£BÄB*öäîCa/b_ý/CÄ,ä©.bÜZßO+**Özß.£ /.¢£>ß.A@ ¢.h|ß', N'Ö|vªz.zO~>|+Ãª£î©ýÃBÐ*äýavüoÖUß_+ßbã,ÄCaz<ðZä©ßÐý>:|BZÐ,Äv~A/h. Äaýå_ß>öåÃÜv.|h*:UovÜu/Bb©hhhB|Ob~~ã©örrý@Ã.><ühCU~rüo|<|îßä©+ßÜCªuãüz©@büvv@A~ªÃýaî>*rîABvÖh _¢ÄîZåUhoß|boýîzü_ OO©*îZÖ, ßåAð+Ð/¢_¢ÖÃ*_ßr*/rrýÄhÐ/öhävß¢@>ð ZÜ¢Ä/|vÖ*ß¢ã£ãh|ä|r BÐZ>.~|+Ö', 0)
GO
INSERT [dbo].[OwnerDetails] ([DetailId], [HomeAddress1], [HomeAddress2], [Level]) VALUES (2, N'_/ÄÐÜ£ÐößößC>ACuÜüZªu_<hZãýîa*|.,.zÄähß_ªhö*ÃZB_U@uvîãýýö~/ð£ãö:++ÄbÄ.+¢oÖýBªh/ýÖ/£>Cz@|/zÖZÃååÖr>ü |Aããh~Boãî', N'h/OuO/ bäo¢,£BöZäuåBoC/Äªß*@u*Ð_ðöhvÃ©~Üoî:.,/Ob£ßzªaZ£Aa:ª*bßã>.b:ÄöÃªO£CðU£azo£zå.bh@£ZCUUbuÃ*büýzü<BürCöî*,+ýh/ÄÖð/:Z|ß.ã/*C./|rÃaarOuîrðOªZåÐvB¢@ð/¢>ÄÖhbv_ãa_<ÜrÃühU__Au@Cö_@BOv<î>h|OzUbCö++ð£h>ÃbZü,ü+..ü~ßª@O+~@¢ü££>©år/~£äª<ßAãAåZBðhÐorÐ//~ÜaÜ,aoäb|¢bO_ÜÖ_+Cý|©h<Z/Ããî<Zð:Üãß£Bu:£Oß<vuî,*ýªãª/äð£@<ö zü|vÃ¢.ÄüB:o©*,å£rb@z<ðä/ aîðOCªvh rUu~ª>©,åhÃöB<Aý ,/AßAÃß*¢@ßÜýäî_aO£/ª<A¢BbÐÖ+î.årßrßC>O_,uüýåªåZß.BZ,_Äð.,Ðý', -2147483648)
GO
INSERT [dbo].[OwnerDetails] ([DetailId], [HomeAddress1], [HomeAddress2], [Level]) VALUES (3, N'r£b/>aBb,>AÐ<o/üüßh<£bZ.ÄÜO| UvîüaÃ£Äý~Zz< .+©Uã_baîü/öC+£ÄÐã@ÄhUhÖ<:ÜUýuãOoÖäbA@ AUU+ð_b|Zbvä/ÜÖOOuîÜ+ÖãA©CUÜ*>~Ãr>><îåru,î>OÄ+,,,|©ßCÖüv.rÃßZzrÜ<~£öZZZzaÃ,<v£zZÄä+ßãÜ|/_ubÃO,ðbÃÄÃhÄ:CCZ+ß.+<ýÖî,C/ö.öÄau,bu~C¢Üzß|üO~UÖU>:ühbbuzßÜZ>hvÖüh>bbåÃUO£bÃ/ßÄßäÃÃð<Öäo ãðß**ZO@ßýAbOÃ+ßuÜ<a+ß>bö.ß/*vuv*Ðrüîîã+åo', N'ÃÖÃý Cvü+höb.Ä,ð<ÐO_ÖÜÐ/>,î öChuoÃ,rÄßCuaUårßo_O>îåhüBbîav>ðuöAvaÐåÄ Or©¢ü_@î_£ äÄßAuýUb£>r: OabrªObvßä Ãu>a__ý<ªob>haAa<ßbßýÖ*/ö<zZ*~bAã<*ý<U@C>ÄäoC@ðr~O|:ÖA öåbbbuÃhaBb£££A_UZüzvåO /|BÄOAªZßo.C.O:åß~ãbbäv__¢zoÜÐbbÄÖ£>Cüöý<Üä>UðCbãB>ÃbBU|Z_O_Ä:>bB*.£_öÖã¢äªzaÜzª@U Ãu+aª>bu|ß.vAvÜ,î@:_å ©br>ö|@U|a<CßäÐ*ßo:Ðrbr~~AU+.BbÃ:+_zßB|@Ã u,ßî:î£_ÄzBhC¢ãªðî hã:üÜ©/z/_Ä~öAåßßß©~ Ðä,ÐªzUð:rO£r|<Ö/aua~uýýÄhCUßAßU ý.übuO+r,ý*_ö', -1536317320)
GO
INSERT [dbo].[OwnerDetails] ([DetailId], [HomeAddress1], [HomeAddress2], [Level]) VALUES (4, N'|Ð>ä.A:OýC.+ðzro@ÃrãäßOU£/Ü,£äÖ£AßÜvîB£rÄOrZ|üª¢_zå+Oö~Ð_UuüUb_h*Ö h_öU.AahÃ¢îÃ©ßhã*ý,<BubÄ©åÃö¢£bðß¢<Bªb: OßîC£|_hCuOhüZUî>u~@*b>A|üåA bUZ@bzz öbB _ã,:ðü@,|ª+:ðýCZä_ÃÃ>ßbýå¢ðüð~|o>OßuC~£a+£Ü/äã~bra<,,.ãÐÖ,|ZA_:ýbrüÐoåOvî© äA¢hb', N'ÜðCoÜb*B<Äa*üßOÜ,©ääîzãr>ÄBüÃhv@vOÜ_äå.å,b.:U_Ä>ÃvU<OOö:Bð©bý,. :>BÜb¢ð>Uý<ãî+ööý~v.åß BUz:öu*åý£baÖ:ö:b ÐurÄC|ÄýÄB.Cý:£Oa@ÐOýZîB<Oã+r>AhrBo|h,hÖÐü@v<å©¢*|:.Äå*: BuðÐ*ÜrbZîîZbbª,ý:aÜ£¢ª>ra¢b¢. ÐÄUAorA+OzrrüÜ Z@ãAÐ. ©Ã<¢/@*oh.ä|o~ãa:Oöbã:/.¢ÐåÄBuªÃð,A_|_Ü@Aaoß ,ªÖ/@+ãÜ*>uvbýÃ¢¢bðßO£Ü_Z/ð./AãZ£BuChv~ãÖî~îßv@_bå.öUüoÖãrob:/*z£ð¢üÖ~>*>BbZbäÐað+ |¢îb©ð<ZðC>, |vUî£_Ü>+b:oîäÃü:hhbBß©ÖäöAZz|uýÃÐÐß¢ã++ªãO|/îÜbÜz<ý+zUÖª<bÄ@<rßã::Ohî*¢ÖÖ<v¢Czö', 124883620)
GO
INSERT [dbo].[OwnerOwnerDetails] ([OwnerId], [DetailId]) VALUES (1, 1)
GO
INSERT [dbo].[OwnerOwnerDetails] ([OwnerId], [DetailId]) VALUES (2, 2)
GO
INSERT [dbo].[OwnerOwnerDetails] ([OwnerId], [DetailId]) VALUES (3, 3)
GO
INSERT [dbo].[OwnerOwnerDetails] ([OwnerId], [DetailId]) VALUES (4, 4)
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (1, N'ÄCßÃu>Az>ÐbrÐ+,*|©_zA>u~h|vbÃ|O|Ã£¢rbÄãBÃ©vaýðz ãhÜ>vüUråu|©uýªð|>>bÐrZãß:¢+UuªrUör_ÜÃzÄ./zäoOäÄb /<.u~£äö©ß åü©ª*.ZÜboåOß©zå.Ã£ªðzîÜCÜA', 1195612311, N'>+_<£UßÖ')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (2, N'ýO|z¢_vÖ/Uar.|bå>|,ðu+zä©.hãuOåîAýzÄrßo<Bßv~aZüü.ÖÖU+¢Ã¢äÄ¢u./@v+CO.U*ÃÃ.ðã/BÐã+:O.:/£_,z©ã>Oðb£výuîC_Äbbbß/ßv@häUÖuAbãÄ|ÜC~>r><ãroC>övî:*,+ßBªAhÃ¢öOãªro> */h~å|*ªªC.¢ðýäÜÃ©:å<Ob/ß|_za~ööaªî< Ö>ß<>aðÄbÄüzbð_Ã¢äO*ÃÜzAA~ao<¢zb,/ðO©,ýOoÄÐä~aö£.U+ÖÐC¢ýOÜ:îýÖU/.åî¢a*AuåýOýb:/A¢+ÖUU_*vßöýîöbr.<Z:ÃB £broåÐð£ðÐ .vªýaOä_£ßb*CvßßÜ@ÖýÖözÐÄAB£ª*Oav~@ß~/:C~h:@|ÃBîbðoCoÐ|<üåZüBuöZ¢bB_Öau b£.ª>ÜoaöO|©Obã_abßÃh<a+roî@ª_hbÃßb@zöýrÐZAî£vC~r|_Ãr_r|¢b.*å£.,b>ü*ý ubb¢üä:BÐöA zAa/åo¢>åv_¢zB', -1371488625, N'Ü~å*:£||*C@z<z| +,ª¢ßÐ</ö@.zåýßU~£vÐ/Ã_ßzªZ,*öb ÖÖ>Uv><AC/,öuvÃ*zZÐßbßîÃãß r:BBý<B_h>|üBOu¢ýZª~bîðBbuUZöãß,<Ov~A .:CÄ|äÐz££ßrî,Urvz@ýAÖUßªZÃo>îð¢ª')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (3, N'h< *b*Ö~~:Öö.oZîübAz£uzBZo~ßÐÐO~U@BÐðü:¢ZO£*ä*Zýuýö||*uðoubîÜðääZoÃåb|üý¢,a<~öUðå~ªÐÜªAîZO|Ãî_ã+zÜbÄ©,ð£AüöO*Ð rýharzCB©hßªåývBb_£oßî_v>£öÄß©ã|_ã*ÄÖ_£br©,~äßb£Öää¢Ã~_z:ä>|+.ZýZUbb£|*_îªüh>ö,ÄªZüößuäüzAvîABÃÜ+,Z¢Ðýar> ÄBª,ß>:ßöb: Ob+bÐ¢Z/>ßðOÖB£ÜüªZÜ:<>Ü+îuÜ/Uhª brUv©U+îbßîo/£ÄãÃß ÜÃåÄ|~Äã.@ývÃzãÄå.>z*ðä+£ªªðv>öÖ.ßã£o>©©ö.ü+b|rä~öß.O@ýäß>böüÜ|î~Uãå<O_,Öã*ðö<zb,Ö* Ã@~îßüã£/ÄÃOãbßãÄz+,,.©*obî Oý|r.Uub£öb>*îüAhObåÃ<+b,üöväUÖÖb@:/o<ÖªãÐOÜUåb<:¢rýüa¢Ä', 1008457066, N'ör.O /ã/@ä£/<büz~ã>ð:ßuAÜßbåÖßÃ£ZZå_Ü~ð/rbðÜ__<ü©.A¢ _ähü+.@,ü©ÄoýhOO._ýðbÄ,å:>uzbr*ßb Ð/Ð~,O,AU+u¢_.zßUäAÃUã:U>åruzÖ îb©,Ö/ãhß_A:a©ãößaZö<Ö,Bîü>b>üOÄ>Az_åa_*')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (4, N'uhr+:~©ö,uAßäoÃ~>ÜöÜ¢ã+züü+zbß:ð_Ö@Uå_@î,|~öÃÃOhãz>Ü.£B+Üî,<u+å~ÖBvC£:ÄüvA+bv.¢vßu:ÖzÃ@å£o<ýhbÃAÃaOª/b>,ª_>,ZAB*vh©ýðhvb|+:<ýÐãu  ,vuAãÄÐboÖOhª¢bCÄý+ÄC_ÐCAb¢a.äÄZbö¢ãhUZüväü>î/Öß/äaããªuã_CýÜBÄ¢Zbåb©ýuü<Ä.:U~ur~zß~_äå:/ÄßzaU@ä_u©:a*Bãuå_C.oývzð,<Zhb/O/¢ürîüur_îaîÜOUuü*£zÖAZÐ_ýBãA~.oUv~ÐC£zðzðåUü*_Ðov Ü/h/,*U£ðä+oü>ä£>~>B bÐýßoAÖO:*ÃÜv¢ÐCãO+åý,böÜîÖCÃAh£oýÐÃhªU <::>Ã+Äåh_£', -2147483648, N' ©©bAUZ¢>.rAªvîAüUöb._ð|U,Oäýh,Ö@ü£bAb|ýAãübz©Ü/ýC|.:bßßÐCß¢b.£*A:>£¢ãýå©üA||åU|¢Öåå~ýz/Oã ðvððªr¢aãoC')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (5, N'CÃÐ<bUuãäUaz_ÜÜAob:Ü>b¢ÖA.*öä.,>ðÐÖåvß,öª<baðªb/ãý©B©b¢bbý:£åZý/ã>,ßaåÜ*©@o', 2147483647, N'ß. ðBåÐzãåBÃãv*Ðb >£o/uv.ür .håªb:oAzüOBÃ_£@Äzb>ýö:ã_ /,rb>hÃ,åÄý>ª+B /Bo,ö¢ÜÃ_CðÃ*<©bbÖaÜßu:A,z£ð_uÃ©,©>*Ãh,ßª@@,uýb.Aö.ä* >r£Cý£üão .vZÃüz+ð*rOzÄbß.UUî~ßßzbozÄ|hÖãÖ*rýöÄ+/Ð~>@oor>~Z~,Äö|@~öu@©ªßÜ~*.ü>bäÃäßOazzhðüßhv_*hßÜ©,a>ãÜhÜÄðßÐUý>.î_îÜ|uZßZ|ã:@UUuªOãÃäraAAu~+ OÄß¢ã£ßuAu:CrrZð©U<Ã~Cboß|Ã@åÐ ¢ð:CãAã©~.ý~')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (6, N'~£aÐB+ýC©Öb©£ßZüZ ZåßOÐb/îß|åv~_BÜUîÃßÜ**>UÄbO+A,¢h©Zb|,ððZr_.u,o@|å~+v<|ð_zöAav@ßOvhðUAuãýÜ>~ßðZã|_ª>:A*£B+@U/îîA©ÖUüvuZ_£Ð,>ýüC¢AB:<£A*oî<ßå>ý,Bä<îbÃz| vbäÄ¢ä©hUîr*/.,£,Bbß.,A£ Z¢>bbðÐ@hu~O¢@', 1725691548, N'ßb©/Bv©ªvÜðäAr,*uobOü<ßZrß<Ö~ýýÄÜ.äv¢O.ß+ :Öu*_üUoã£¢/£ U+UZÜðavÜrBª*CÄAÐvß¢abbãU>>.o*B Ü@AUöhA:zrüAvð¢C/ßî+¢a O ,Av.ªB/CÖãßB<bªU*zßBA~ å+ü+:ÄÄÖrãð|BÖAÄB_î>BßAüÄZhvÄ>bZßÄ,b¢Ðý,bB¢U_@>< ªÄ|hbUB*ý£o~/bÃÖ£Ö,*ýb+_>:ýoÜ.rß£öBß@oÐ:ZÃ£bßß¢Aö<îÖBC @*a¢¢Uö||:+ö>öîU<AðbZ/ZÐÃãüuZ@:Ã@ª~/>@Bu*hb¢:åhBAU.ÄobbBbZößvÄvbý©.å+:Ðöð')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (7, N'o+£vßÃåObBÐ@<|>*u~zö¢äa¢ß:UÐ|>:ß:zåÄ.ACB,_rüvhö äB@+¢ÖCz*a:*:oª|¢öbo©ÜöO:r_b£b*£>îä:üBoÃr~+,|Ü¢Uð£  bß£Bo î.rA£Z£ßä_Zh~@Ü+öB,_¢Ã~zoaÄA~ÄvÜz£OÐ>OðBÐÖîBöÜbß|Ãä|Ã¢Ãuãîå£|¢uoZ@ãö AäÖoZßåÜ>*+öî<åäÄb©öüîªzZ_C@Öß.öC<@ãB,,ßß/*_>Ä£o Z~:oa+hv:åÖÃ*aÃö/ß/öbÖz©äC__bß~åör:rüÜCB,|¢>¢h:.£ªbåurv_vÜzåã~u©zåÐo|<ü©Ä |>hßAÐ£Cå:ÐÃ©ÖððöO:uvß*ürÖ,zäO¢.oå¢Ü,:Ð~uÄÃÖöªuüu¢_Ür>bÖoOªZ *vÄßz_ÜCo_</åa_C', 1, N'@/bu¢ãu©ßåªrä:vå:ýð¢b/äbBb*z>@£|oaÖåvAbüBåüU_ ¢ý¢CBC£,_B|ýh|>îoZubbãÃ+ª.îü@O:ª_Ö/*Ã+/@ðÜ<© Zå><OÄÃA<ZÜZU@©uÃä*¢ü/,hhußãÃCZ*Abz_.<*:Ö~b<©b/ãÖzuîCA*ã>+*üîä *a.Uruhßu@îä++î<bÜüb+î+UaÃ<AAh+_îUÄ<Ußu¢¢@a,uoý<ªîZOöÜü:¢OU@ÖBÖbo*üC©.uU|*:äåýaãÃý/härªhZUãb|Äå@ÖöUäräßO©A¢ªzC~£o.ßÖ©ªuöÖßã/~oÃã<ðBöÐo¢ãrv<ã|aßO£rîhîC')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (8, N'ÐZC+A+ª>*ßh+a£îaÜü_,h+,Ðý©Ü+v_ð*büu:Avßã©ý<Üå/oaZî+ð~:a*å,++~uußäÜzb//', -1118370915, N'oîªä_>ÖB+oýÜªüä|¢å.U/Ö©îBhC~ãîãÖäÐã/Z@ßåßhä£åaÄb|ä*£Ö:Z,UÄÜ.+OU: UîåC/ZCb_.zåaAB/AAü|rý,//r~Ö.>£å. ¢Cßüh~u~rbý@u©Ãý hvåCU>/©uÄ+£AÖ.<Ã,üªbî, ¢ß*:ðýîb/O>¢@r,ª+zðääðoZ|A@vÄ+vUä_>:hýÐußZuävßö>a+uÜü@<Ã¢båå<£+bîUÖüÄð:+|Ãb|ÄzaÜbAU h>v*bßãbCãÐoðoöaAýÜbîärZ:îýzbBß:,Að.ü.åðB,vÄöî£_*aÖBUO.ZZýåOß@aAAZÖîU_AªBäü>~> |v/üA*Äruª¢hý_ÄC~,UÃ©oÐZßýhý,rîÃÜ£ ð+_üÃzb_Z¢,Ab,Ö,C*ß©.@oobrÐßAÃð+ ußÐA/|')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (9, N'ª:©/öbª¢ßß*üýð,u,î<~v@~ÃAÄäªa*©ß:Bßb<ÄBhCOuî~,*z,@¢@bÜ Bäü.Uua¢:C_@îC ÐÃß*:bzÃC¢*_r>ÄoÄ©ÖÃr>zäîC|ÖÜAå:ObßöÄÄzvßoäÜå©ßhÐüããh/hu+ö/*@_ðbÖî+hÃÜ/a*>åA¢_ýUz.AßrAzÐð|~ÜZüÐvUßAýZ©/ü@ß<£_B~ßürAB@CåÄ~¢rhO£Ä,Ö¢ßã@ýö£ýbv+_©OãýÖßBð£ÖCðz.©:zÜåCbåðzÐzüU,C/ã>oî/+h/ã¢<Cä©ðr~Zr©Z,v:ßv@U:ãã__zv.h>ubo*A<ªÜb¢ßB,üO/h/UÃ', -377816806, N'ýÜð||,>bbbC@ö+ÜäArå.*:å*CoßO:.buv+AÄÃr>uzbzîbîrb:ãbüü<¢@î~:,| ª©ýîU~ boãÄ©CZoüZrüÖÄª*bUÜÐ@ßCÐB£ý/£îo©ªÖ,©uvz+ +ðZv.ßªý ð£:ãßvbBªahä@bC_*ý ðCßö.,håß<Ãã+/ ý>rÖöCªC©zu<ääoÐbãZbrBÄA:©,U¢îoÖ.rb¢*ªbuzýo£rîZa£Ö¢aB+CîßozvÐ+>Öh:b©ß_,:ÜbÖröbã_,+ªåZo©AboßOZÜ>ö>,@ÐãªuC+ouA¢ðöÐzÖå+Üª:üßA~£ÄrOa|ßÃ|_CÄÜo<@hö£.ouBå@îhOåð_ößA|,oýu:ßu,rObCrZB Ah¢//¢z£B/¢ß¢aOðÖ~B*hÄr~ößîÃ<ßðåßª>ßo~hÜä*CaO.ÜOah+¢rÖO öb>ªÐ¢oz@Öaa>+Öo/ <ß~O,@AÄÃ*/ZÃA.OäBB@AUrß</,Ö©¢+rOäv,ÐÖ£ü|AößåUbýª @£bîZUªßÃühZAbýuBßÜa:B:CöaZ,îU+.o*CÄhv~aßðbÃãZýåß©')
GO
INSERT [dbo].[Owners] ([Id], [FirstName], [LastName], [Alias]) VALUES (10, N'u~ä/röövöuå/~ÐC©ðvbßuÖu@aÖZ©A.|UChr~<Ã@r  b~b¢CBOzö|~za:**./£ZU_£¢z/__rUÖå>îÄ£:,£O>Ä:a©ßhÐuhZb_Ab>ð/ ©|¢CÄßÃßBÖÄåAÜ:ß@B£ü', 663351288, N'ü©*<ßrÄAbý¢äªÖrüabý>UvZbU|.Z:ß')
GO
INSERT [dbo].[People] ([FirstName], [LastName], [MiddleName], [PropertyValue], [PrimaryVehicleId], [PersonType]) VALUES (N'Chris', N'Robinson', N'Patrick', CAST(1314.000 AS Decimal(18, 3)), 2, N'2')
GO
INSERT [dbo].[People] ([FirstName], [LastName], [MiddleName], [PropertyValue], [PrimaryVehicleId], [PersonType]) VALUES (N'James', N'Robinson', N'A', CAST(323245.000 AS Decimal(18, 3)), NULL, N'2')
GO
INSERT [dbo].[People] ([FirstName], [LastName], [MiddleName], [PropertyValue], [PrimaryVehicleId], [PersonType]) VALUES (N'M', N'Robinson', N'L', NULL, 3, N'1')
GO
INSERT [dbo].[People] ([FirstName], [LastName], [MiddleName], [PropertyValue], [PrimaryVehicleId], [PersonType]) VALUES (N'Matt', N'Robinson', N'David', CAST(52255252.000 AS Decimal(18, 3)), NULL, N'2')
GO
INSERT [dbo].[People] ([FirstName], [LastName], [MiddleName], [PropertyValue], [PrimaryVehicleId], [PersonType]) VALUES (N'Steve', N'OBrian', N'm', NULL, 5, N'1')
GO
INSERT [dbo].[Projects] ([Id], [Name]) VALUES (1, N'h,ÄOUAZ<@är:vv,,ðhªß¢<bOß¢/|*>våvîÐ|Ã@>ÜÃb~:Ðã_CCý@ýO>*£*@+¢ªÐCA~zr*_ßÃ,£ßB|î~/öb /*üvÃÜ|buOoäOüð_å/£O~zzh*+,ÜÖÖB._ZZÜbzª/ß:ª>uÜ¢h¢*ÄazîÐhbãð +Üz<BÐzå©o<|ßu,CÃßî~Ðvo,bbC£_hÄu,ZbahC.>:Ð:<åhrB>ª/Uö*ªB¢ð.aª£*@/vo@o+ý~+,Cýß©@îåAoöÄ<vbÃü,uÄ.åß,ðA¢ü©ðh¢äå_uªZö,@C~>,ßüýCãrýÖåü@ ~î£îðuBAzã~ÄßbÃ:ãOZzZýBb¢äßÐhäýðAîa+z<~î><Bü+vzÜ@@ðÃ©rAªß|vb,*å:ä©Ãðbzo*ª,ßßîCÃ+_bu¢ðzvßä.|Ðr>>hª¢CÄ~+Är+~Bv.rÃÃåî@ hv_|.äb¢Ð/hBå©uZýýÜO*aU uý.©Ðåãzüoa b|zÐ b<ö:ý+Öý.ÃîC*ýCar*./,îä~ãCÄ£år/©bãv_Zåu¢©Ã OöO¢Oî åuåZöoª+¢å£BBrUub>Ð|')
GO
INSERT [dbo].[RecordingAlbumsLinkTable] ([SongId], [ArtistId], [AlbumId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[RecordingAlbumsLinkTable] ([SongId], [ArtistId], [AlbumId]) VALUES (1, 2, 1)
GO
INSERT [dbo].[RecordingAlbumsLinkTable] ([SongId], [ArtistId], [AlbumId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[RecordingAlbumsLinkTable2] ([SongId], [ArtistId], [AlbumId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[RecordingAlbumsLinkTable2] ([SongId], [ArtistId], [AlbumId]) VALUES (1, 2, 1)
GO
INSERT [dbo].[RecordingAlbumsLinkTable2] ([SongId], [ArtistId], [AlbumId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[RecordingAlbumsLinkTable3] ([SongId], [ArtistId], [AlbumId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[RecordingAlbumsLinkTable3] ([SongId], [ArtistId], [AlbumId]) VALUES (1, 2, 1)
GO
INSERT [dbo].[RecordingAlbumsLinkTable3] ([SongId], [ArtistId], [AlbumId]) VALUES (2, 1, 2)
GO
INSERT [dbo].[Recordings] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (1, 1, CAST(0x00009AEB00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Recordings] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (1, 2, CAST(0x00009AEC00000000 AS DateTime), 1, 1)
GO
INSERT [dbo].[Recordings] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (2, 1, CAST(0x00009AEE00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Recordings] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (3, 2, CAST(0x00009A1700000000 AS DateTime), 2, 1)
GO
INSERT [dbo].[Recordings2] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (1, 1, CAST(0x00009AEB00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Recordings2] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (1, 2, CAST(0x00009AEC00000000 AS DateTime), 1, 1)
GO
INSERT [dbo].[Recordings2] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (2, 1, CAST(0x00009AEE00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Recordings2] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (3, 2, CAST(0x00009A1700000000 AS DateTime), 2, 1)
GO
INSERT [dbo].[Recordings3] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (1, 1, CAST(0x00009AEB00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Recordings3] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (1, 2, CAST(0x00009AEC00000000 AS DateTime), 1, 1)
GO
INSERT [dbo].[Recordings3] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (2, 1, CAST(0x00009AEE00000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Recordings3] ([SongId], [ArtistId], [DateOccurred], [OriginalSongId], [OriginalArtistId]) VALUES (3, 2, CAST(0x00009A1700000000 AS DateTime), 2, 1)
GO
INSERT [dbo].[Run1s] ([RunId1], [BuildID], [Name], [LabOwnerAlias]) VALUES (1, 1, N'Run1', N'christro')
GO
INSERT [dbo].[Run1s] ([RunId1], [BuildID], [Name], [LabOwnerAlias]) VALUES (1, 2, N'Run3', N'steveob')
GO
INSERT [dbo].[Run1s] ([RunId1], [BuildID], [Name], [LabOwnerAlias]) VALUES (2, 1, N'Run2', N'davebarn')
GO
INSERT [dbo].[Run2s] ([RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, N'Run1', N'christro')
GO
INSERT [dbo].[Run2s] ([RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, N'Run3', N'steveob')
GO
INSERT [dbo].[Run2s] ([RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, N'Run2', N'davebarn')
GO
INSERT [dbo].[Run3s] ([RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, N'Run1', N'christro')
GO
INSERT [dbo].[Run3s] ([RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, N'Run3', N'steveob')
GO
INSERT [dbo].[Run3s] ([RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, N'Run2', N'davebarn')
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (1, 8)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (2, 5)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (3, 3)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (4, 4)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (5, 4)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (6, 7)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (7, 3)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (8, 2)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (9, 4)
GO
INSERT [dbo].[RunOwners] ([RunId], [OwnerId]) VALUES (10, 7)
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (1, N'öÜ', 2147483647, CAST(0x0027D85F0150ABE4 AS DateTime), NULL, N'ZvvÜ©ã|å>~©+U<z+OßvÄýhoåßýÃZÄðäh|Az©ä¢rÜ_hUz:¢ÄZ|U~ãrC+hC+öÃoZO~Ð@ßrO¢>|ª>Oãîä.rv,Ð<*aö:£o|<©>ªUö©|ðß>CðÐAUÄð@UvüÖ.Ö|ÄUÐ~*|AbaåBåðîUZ<,ÖZßÐ ÜU@hîz@îBãÃU/ã*:öbäÐhhßa¢ýý>+£<Öüîö*ã/CÜ', CAST(0xFFFFD73C001281E4 AS DateTime), CAST(0x000BC9D9016E94EC AS DateTime), NULL)
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (2, N'ðßröaO¢.@@îza_/+öv@åa¢>übUohßÜöO_+/ãZßüÐ ð ðr:</~©Z.z_CzzuäÖA>¢Ð', -1577163515, CAST(0xFFFF2E4600000000 AS DateTime), CAST(0x000327A30114D074 AS DateTime), N'Ü|bz~ÜªÜÐ|h<_åaUh@böuÄãz~*:Ãß*ý~Oh@üAaÄ:výZö<vAäÜ,übAObbÐÜÄuzðö,|_z,*AuCß~Ãu.åßz ªî.+ð_ab/UvZ<o bî+ðü¢>ÖOãv/<ã©ãö,îÃa@a£ýz ðÜöãz/*O>@å*ÃBoU_£C@r', CAST(0x0009C6C601711E24 AS DateTime), CAST(0x001552B700EC9BE0 AS DateTime), N'îÐð£Z~üUaöah©O bbu~äZ:ýåßCo,¢öÐüA£~ÜüÄ,>Oý_ÄC+_~bvã+å:u/Öbäo/~¢bubCA~_B ßB©ZðZÜ.~|z*B+b|/oAîãUbª+<<bv>a@O>_Üßð@<v:|åvZüäü|ª/@O>~Abð:ßÄob_Üo~ßzÖ>¢|¢,©O B>¢BÄî~aaaüÖÐab©|Z> <C,A©ßBßü_CðãÐãöo¢:OüÜo~ã_a>|åbBOããüCª/îßßb:åbðaOC@ðãz+ÄüßOCÜªUB<AÐaåäã|r_+OÐÄÃß¢a /*hUä:haz.zh')
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (3, N'üýäzîhzZöÐzörývC,>ÜZßÐ Üå_Ðä@oå,o¢ÜÄß<Ääah.,öîUoÐraß+ðÐu£B.+,/Üßäîß~r_zðßîv© ðßýZ~C hbAUå_bÄb*<~+ª_AC©örîBa:£bîÐv/bßz/£Üä_Ã©<~å/.ÃZÄ+Üå¢£ð/bb|ªß¢*/¢v©vðöÜO|üZÐzr|Aüßr*<_:o,aªÄZöîAhhUOÖ.*Öªª £+rCã>_¢a/ýübß@åð*båªbU~Oü,Z_//ÐåußßOîÖuÖzîªhOo,u_/,_ÄÄ|CªöåBUB|ývbäýÐÃAªãhzO£:aßabýabOo>U', 2147483647, CAST(0x0000901A0000012C AS DateTime), CAST(0x0007260F00DCAB68 AS DateTime), N' ªåBz,>ã.ßÃ~.,<oöBBOB_öbð+ÐbCbÐÐªbãA~î<ª|oªU>|BãO.aÜa CÜ©ßoö©.Ä*büý _:|Aª>ªööÃ~+vååÃböÄvüb+ÜÖ_ðo/UO@~ÖzÐäüo@Ðo', CAST(0x002D247F018B81FF AS DateTime), NULL, N'©Ü@AZCUÄ*<bÜZb|:@Ã@bß>~oãbßr_ßu,|üåh¢.übZä.ß£bÃBöZ£h:oýor+Or Ao|UÃu r.ãCÐ:ÜðBÜ@Ü,ÃUvoBö,üÄöUuÜÐUÄã|üã+î_/_,ý,bb/ä.ß£ßî,oÐã+<:~åöÄ@uvu_ðaÜÄß¢Ãöýå£@,ßüB/ß/.uaa/bã£:våäßrz>ßäBbÜ:ßã<ãörbý¢b.ßß îa*¢üüU©CAãzb ou*Ä©ö/O@~h£~:£ß/ý,ý~ß@<CßrCÄ:ý¢CÐã,ÐÃoäåÐ<Ö< ,ÜA ~ãîBÐ*ÄåªãÖ :bª>@ã¢UbÐã_Bã ÖýÜ/.b,åhÄAý<ÃãBzC|Z,oüß_oßvãa+ýîAöîß. Ubr:ß>ão_u£_/_|ðªaýåvZhbh*bB/Ðövåß UrÄOzÃýUAO<ö/ B*îã_böðoz::ÖÄßv+££u ÐåßÃrvbBä©.ªÜ ,b')
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (4, N'Ð+ b.ÐäöZ/Ößßzua+<bh*ÜîßZ£Aãý+.uözîäa©<bãUý¢ bãB,ÖüðüZaö<>ÖÖÃaüîa_ä@,+aÄýýzBßv>Ußö:u.>U£zö+>îÄ,ßZBªßO ÄaÖUðýýîora@üÖ|Ð<@Zuu/ý>ßvª>ßÃ©Äb<u/:O|v©,ßO>,Ö¢v_¢b>öCvAv/£,<B:@z/>@hZZöA_ß', 1754781997, CAST(0xFFFF2E4600000000 AS DateTime), CAST(0x002D247F018B81FF AS DateTime), N'vb~rC*ü,rÐðåOZ £OüUChv h<,Z¢rUAh.Uã,ðBzh|Ðb|Ah+@zoß:väBaÐ:ÐÄb*röÄÜ:ð:öÄb£C|,rÜB AÖzb/~ä|hß©<+~bu_CäU©/b+:ÐßozÄßü*,ÃzAo@h', CAST(0x000A51260107F37C AS DateTime), CAST(0x002D247F018B81FF AS DateTime), NULL)
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (5, N'bb äbðä©~Äö~ÄÖÄv/aÃCýîÜO,ªÐ Ü©.BuAÖCüãÐb>ÐBªb|ß+u¢ ¢~CÄhvo<:O_åðZä+©aªzªZ£¢vßoCßß*Bh ß@B ªãß*väüãOzuOh*ª Ä ð</*BA©©ã/Ö~< Z*,Ö>vaß©/¢äå££ý<ßª:~ªåvÐÜÃ~A@B~ãåîßüäã: hßaÄUhaAãööýaÖ©:hAÄ~.Üh*AaaÖäA¢üoh:ßå_<¢©|O~hªßhU ãßhåî+©©ÃuhvoßzýßåZä~~_Bîã~|r/rä>_rßãvubhuäU<..,voÜöã,ÐUvAübßC:vAZÖ¢~>h|£uÄ+Äzª>/OZA£vaCßö_ßzoZAÖªur£ÜßÜauZ¢©+_ü/<¢ªß.ªÖv£ã£ö*U>ðÃªCb.ä£,>a.ý,:/.~*ã', -1446905558, CAST(0x0000901A0000012C AS DateTime), CAST(0x0000901A0000012C AS DateTime), N'aöoß©üßÃüÖ/åaªüuz,OÜåO.u+ý.üv<vCª>äÄUÃ*:OÃ<©ýÃ u|:îößÃAß_ð:©|ã/><zv@Övý¢bÐªrÃÐU©£r,ß~ Zð:AOzu©å*Uýr©.ß:z:våBBãhß©ÜA+/¢îhA*bÐb©.+ãUöÃ_~vãÐB*z:rã¢î+£/£@ðªBb£bÖÐußä@Uãå/vB@O¢ ZªÃß>/ãÄaüÐ z ª>ðOBaå_/ðüaÖ<B_î:åª <*ß~zî>Üîßð@_ßÜo B¢/ÐOÜä>Ã+ª:bv/ÄahhBªÜC+Ü@hb<r£ ,|*vo~z~üb¢_îzã@<ß_Ã¢bÐ @bü£¢ßa<Ävb<îo|/ã|h@h|<:©¢|©©öÄ ãAÖbª£üoboß¢u+ªzUCäbðrröª>üav*ßÖ|Ö£å.>ßOªü:ýÖãUzaU/|B£,¢ãß<C©öîÄ*bb<ÐÐîÖZ©/üÖrOÖv©ýaðu©î*abªAÄ@£bÖ¢ÃÜÖ~v*©v/u/å¢¢Äãýöåßh,oCÄÃZÐ~hßåa~>ý@BÐ©UöuÃðh.ýzä@ÃOö>Zª£ä|', CAST(0x000651D600DEDA64 AS DateTime), CAST(0x001245F1004E4260 AS DateTime), N'CÄ îur_OO<O~vZ.ÄªB')
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (6, N'Br,äUo¢Zvðv+U+äª_¢<ü. C', -982374538, CAST(0x002194C2004469AC AS DateTime), CAST(0x00120EB90083CEF8 AS DateTime), N'öð :£b~vîUuß î.ßOüªÐ£Übv.üäãÐzUð_./öZBü.+h.åî£ð,+ÐßÄÐBroäbbÃOÖ@~ýzvð:<@bar*>*r*ÖA:<a@_O/uZBrAZu¢¢ãå~+aöîuÄÄ_ÖÃß©ÄZ©Äv@b/CãÄo,zAÄüÐå@zÖ,A@~Üßã£Ã@<.>Ö¢>*BÖ:<_zÜ>î©ý|AßZ+üî¢rÃÐv~:oOÃüßZB:+ÜÜãZäÐÐbåCäB©ÄOb@äýZ©+<äa,Cb_b,åB£b@@©bî<ªãhÐ+<<>îZ.CoÃ,Zýv:ª£@ßÐüýa£©_äßbßb@ C¢î£|£ÜüÜðö£U@,~zßBA.Ö,<ßã*/ªA £äöä£|übåbÖrbba/A:uÜaü>ð+U.ßÐZ *Ö~zßZ£Öa Ðrü©| /ß. ý,U ©*A>.hh*ªÄ,::Ðuh,Äu/vÜ_Ußîýý ö ü>v¢/vh*är,ªvvBäÃªvöZoßbîßÜÃ>oha£+/örCÜåU**UäoZý', CAST(0x0000444F00AE8814 AS DateTime), CAST(0x0000901A0000012C AS DateTime), N'bßÃrÄ')
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (7, N'/ãÄb,öåßh£|ß+Ãðß_OÐ_Üý:ãÖö¢ ¢Ua,O.ß@¢r<u,o|,Ð|ÄzhýhaýbÃ:+åz/z|rî£O£öî.O*Ã@h¢.bBOu r£Cý.CÄ hÖîbîãü©Ð|ðÖ.Äßßz:ðbAzÜCrý*_Ü£Ü_u|v.:£¢z£Ö*_v<ð<ãzÃör£ZãýÜãî<.åbÜ,@ã:+*£ãª.ZüUäÐbåÄ<üã*~v//©ßÄßUåvÖåöbA:üAC~uaäÖðBãªÄ,CöAð|aöÃßCßO.Ã<ýßýäU@ðÄÖ+v|ÃÐÐåu@<oßã', 1106909481, NULL, CAST(0x0000901A0000012C AS DateTime), N'ÜAª', CAST(0x00143EFA002C478C AS DateTime), CAST(0xFFFF2E4600000000 AS DateTime), N':åOuZ|z/UöBU~£ö_£hÜ:äÐUÄÄý*£,.ß/a<b~ü~|:r|v*CÜr+©¢¢ß@,åÐ£<@zu£bãh©uC~*~b~ vZ:îªðÜüýÜßaî¢~ ö>bvU_@.r/_BÜ A_urh~ZÖä~@U©vbhÖ~@v,Ba BÄÜAÃo,ÃO©ÐUßÄ>ýbr¢<Ðýåv+bÃü~@ðö_åB.ßUbÄrãba@ß AB@ur:_~Bã@£ª<.C©ÖßÃîªBOßhðvîðäÐ~Ð£äbzÄ<azý|z~/UÜÄ.vÐB//a*.b_v©OüÜbåß|b*AzÃªª@äuÃ©<O@ªý<zuäÄî£öÐ¢ß~@@|.u©bu/,ãß<<O+äÜ<©+ß~|ªÃ :,*öüßð ÃCvv@:,|b:.+UÄZböhhuÐðaß@ ªãb:åa|h<Uª@ürýu>BO BÐCZaß£ÄªÜC/ÐOä_<¢~,ßBUA')
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (8, N'OöU@/î¢OuäÐß/b*ã_ÄCoßß*/Ðä@Ü@a>bß~£Ä:B*uß_öýßÃr_bü_@îz¢+ªßÜ|+ä©u+£üä.£+:+î*Uã*ªb©ýÐ_<üO>övC£zÜãüåÐªOÐ C,~bhaü,_UuÄå,ChÖ,:<ðh_Ðh~b,+CÐ. *ä ö,ßO__Ðä/ªî/ãÖürÄU.üääö|ö~A.>ß,__ÜO+~Zö+.©Z_Ãª_ªo@Ãbðå:b:vuü@z*¢r+îb|ª¢/zb|r~,ä', -64120314, NULL, NULL, NULL, CAST(0x001FDF40014DA548 AS DateTime), NULL, N'zbýäBz£*zÄ<b_åvÖå v>b,îðBb,@åÖUÐ<Ã + r:îðb|¢_+Äbã|Ð b~ãîobÖAðh:|:Ö|ã|å/Ãä+~aãv,Ð*z©zAîÃåã.rv/.üß~ýOßßä@ühb:Ãaãbî©AÃª:o__bÃahÃoU:,Ü/ãB~ð<ÜÄOü:ýäa*zª,Ä+ /:¢ÐCä+vüßazu,ußbCußÐü|BbßýÜ+_äÐA:a,:äß¢,/rO:Ã¢ªh<_Z>_ª:î_£Zäªî/övvÜ,ß+rz~.zÖ+£,O+¢åa|U>ã_<îu@Öß_ÜUO.äu C ýîCzÄ_îvC<üa.+AÜðã*:ýÜã¢Öüh:ü ozÜ©~ +_ãöaö,vß_+äo£ð,ü©*rb<_Ð,:zß ©UÐßÄ,,ý,/A,~ßuªZZ .Ö B +vîaC_|£ªðoz¢b:U_,|u ß<Ã hCoý+| h.//>+åäå+Ü©¢ðüUãbå+Öäý|ÜrÃü/,©u*ãor¢aÐo@Ä*üAßb,oå î>r|v/ä©ZÃî.<Ã_zßÖÜ¢ß Äãb@A_ühZß|bÜÐov')
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (9, N'Ö*:<ªZäv<@v¢,U>|Ü*@Ð. Ão,Bä.ðßo@äaä<åUUÖ©Öb:å£/z|rößÖo+.£Zb>//*©*ÐÜ+,A©_CÖb£vUvÖ©_ãÄå+ÜÄ£/ß~OÐzu.,Boåbð__,©ýBÄo,Azãîª£ÜýübÐörB+,:ãuåoCåª¢zO<ÃÜªðZ.|äå.¢ÜªBOßzü :AZ_U<vUð/uvz:zzO:ß£Ü@>>Au:vbðbz£üÐ/.U+/aO£.£hzzzßa*>z|ð_Ü>aAaOý+ð¢*Ðäåðb+£ªåBäîîoüvîÄß .ßî£Ö*.aý£AÐ@ü~/îBZC©öA/ðªBåAðB©hZððüUOÄü¢¢Ubh+ö|@+ß.©£:Ü:Ähv_üb|*~uA£<£î|obzß,ßuoz@_vv:¢:o>@A:/£|ÃÃ_oîðbÐîä@ªoýbððBU:@ZBh~~>üCåBÄ,ÐBÃUbv+:ß+,ðAzo/', 256524076, CAST(0xFFFF2E4600000000 AS DateTime), CAST(0x00012383002CDA08 AS DateTime), N'~ /BªAÜßu.å+©äãäaÃðÄu|v @@ÖÐ@OÃÃCä<öö*r ¢CßîZbðv_ O+<åOAbB|BZbvAÐOUß+îð£<~BCÖ+A:ª>rrýzrUÃ:åãÜCb|ãÖoBßBå¢._îîÜbvÃbC>ßäbA.üahîabä*_@varö¢>ª|ß:.z:¢rrß©¢vÄÜÄÐhßüü¢ ©_*vßU<C>ýOzv~a©|@ÄßZrÐvß>Z<ßß_¢ð:ÜåörßöÄ©', NULL, CAST(0x000198760185BC44 AS DateTime), N'Ð<v/vßb:ßB:ZüazÃ:|+ßßhÄ+ÃÜBªABr,aoÐ |B*h,zbäÐ@ýÄ*<O>bÃ ªÖîÐ>Ä:/ÄåbZ')
GO
INSERT [dbo].[Runs] ([Id], [Name], [Purpose], [Started], [Completed], [StartedBy], [RequestStarted], [RequestCompleted], [RequestStartedBy]) VALUES (10, N'ýh*rU.<bã¢OÜ,v|ðÄ zßh~©*ä.öå+ý£uO/+*ãZßZã_ðv|Ä OäÜOÖýüh,<ý*ß:~ÃäüöªöårB.>Aýª£,ßoBÖa~ßîUrzüåãöaßUãbZ¢C+z£ÃÖUöý@ÖbrrÐÃ~BbbÃ,£ð U<>rÐÖ~BOAÄ:*', 102799233, CAST(0x000C8C75016FF5A8 AS DateTime), NULL, N'ÐZC©ÖAuðÄÐ+ :ZÐÖvÜOüAoaUuuý,,OäÄ@ªÐuBba_åU ýbA/Öð_öýbã¢~vå:_Aß@@ä©ßã_>©uÜ¢BÜßaoOÜu:äUä©©ýhür~<@bÄßC,u~u/åÐu.ÖãÖUÄZÖß*©Zaahä,_:¢zBAbAîÖüOaAü@£Uðh,Ä<zÄÄÄb>C+bÄßî/Bî ÐÜÐ*öz~ß ÄÜ*ÜrÐaãü ª, a@ß+å:rh_.Ððr+£*@ýCð+*ÐÖªåýßb:Üzð.Ör||/C~rO+¢äa+*</ <:ö©ßAÜa:,bb¢.ýßª:ßö|a Oo+hÐå¢:~A:ã<:B._ß.£rCBÐrårÖîÃ<Ö:CÖ>/îbhãö>bO|> @Avoo*hbb¢ðã©ä_å_Ã+*Ä~ü', CAST(0x0010F4DA015DA628 AS DateTime), CAST(0xFFFF2E4600000000 AS DateTime), N'b_¢+åUä/ ªCüÃ/ßür:ü,ª><Oh¢ðb¢.ä@î/aBZ:ßª©/uBv,ahO©|ãããa_b/UU ßßîÐªbv/Ä©Ð©+ÐOZ+ðÖ¢ßåöäA©b/<Aãu|Zå¢z*©zÐÄ:ýßO<CãUÃ@<¢@ðäbÄðAãüÃã>Cbã|üav:åb.üAärð~u* ÖðÖüÖv£ÐZîÖÜo b.vZZ©UAÐ/>îaäÐBUÖ*>ÖOzåßÄ+@Oü £ßÄÜß£zð©BÄrz:ãUßaO©ý/©~îB+<|ZÄäÖBäCzbð:ðß©.Aüa/ö:~@ýz rhCåÃvã+,+ä/rªÐöÄbÄÐOÜU|ðBö@CÄrä/Ü£üOOuOB/ZAo_ßßu@ä/Z~o/å|üª zU©Oaý/üÖÖ_ã')
GO
SET IDENTITY_INSERT [dbo].[Songs] ON 

GO
INSERT [dbo].[Songs] ([Id], [SongName]) VALUES (1, N'songname1')
GO
INSERT [dbo].[Songs] ([Id], [SongName]) VALUES (2, N'song2')
GO
INSERT [dbo].[Songs] ([Id], [SongName]) VALUES (3, N'song3')
GO
INSERT [dbo].[Songs] ([Id], [SongName]) VALUES (4, N'song 4')
GO
SET IDENTITY_INSERT [dbo].[Songs] OFF
GO
INSERT [dbo].[Songs2] ([Id], [SongName]) VALUES (1, N'songname1')
GO
INSERT [dbo].[Songs2] ([Id], [SongName]) VALUES (2, N'song2')
GO
INSERT [dbo].[Songs2] ([Id], [SongName]) VALUES (3, N'song3')
GO
INSERT [dbo].[Songs2] ([Id], [SongName]) VALUES (4, N'song 4')
GO
INSERT [dbo].[Songs3] ([Id], [SongName]) VALUES (1, N'songname1')
GO
INSERT [dbo].[Songs3] ([Id], [SongName]) VALUES (2, N'song2')
GO
INSERT [dbo].[Songs3] ([Id], [SongName]) VALUES (3, N'song3')
GO
INSERT [dbo].[Songs3] ([Id], [SongName]) VALUES (4, N'song 4')
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [MiddleName], [Major], [CollegeId], [StudentType]) VALUES (1, N'Ken', N'Rice', N'F', N'Civil Engineering', 1, 1)
GO
INSERT [dbo].[Students] ([Id], [FirstName], [LastName], [MiddleName], [Major], [CollegeId], [StudentType]) VALUES (2, N'Emily', N'White', N'Anne', N'English', 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (1, 3097925411, 1241558469)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (2, -1321755389, 9223372036854775807)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (3, NULL, 9223372036854775807)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (4, 188625021, -1)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (5, NULL, 1310128077)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (6, 118921550, -1608923773)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (7, 1, 221864504)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (8, 3187034607, 297739599)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (9, -817922720, -1030528598)
GO
INSERT [dbo].[TaskInvestigates] ([TaskId], [Investigates], [Improvements]) VALUES (10, -648528035, -3859554120)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (1, 1337821826, 1080170422)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (2, 9223372036854775807, -907360679)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (3, 1648262218, 438935329)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (4, -9223372036854775808, -2806820883)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (5, -1699990667, -9223372036854775808)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (6, -1, 852247751)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (7, 1, -1)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (8, 1475038239, -9223372036854775808)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (9, -1169619645, 85150152)
GO
INSERT [dbo].[TaskResults] ([TaskId], [Passed], [Failed]) VALUES (10, 0, -825265197)
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (1, -1, 1, 9, CAST(0x0000A41201764804 AS DateTime), CAST(0x0009E983005338B0 AS DateTime), N'rªäh_*ã:Ö ~Ðü.ö©o~ Oa£ã./hßÜ©hzu©ã_î*UäöZãã>OãårU.:¢Z©Ü|Ö/Ä,@bÜ¢a*bCäbzðÄ,îoß UªUª@UÃÃöabýhð_<.rbu<ßÖÜ*rC_îîÜªÖ.OChð|@ö .bbåð++UüÃC|ä/ã<v hhÜAu:uÄÖ/*<£@Zo,ÃÐ<ZÐo©öb>O|Ðv£©U,ß|,ã~£r¢öî<A~ZÃAhÖÜb.ýCBhöboaoÃß.h>~aähãbBrÖ:AðîäÄCîårýß:ZÃ¢ªb¢ßu£¢/ÜCAZ¢öüzÜ*£BAhZzAßöuoÃhÄO>UA<.@ß.<CÖÃãvðuÃaB£~ª:Ö Ö/Ä,ZbüzChÄðß*ßãÃ|a@¢r@Aý:Ãbb~åÜvo©BBaObÜ+Ähuzä£vßîA/UÄ_ð©.ß,ðU@Uð£©ÃÐÖ©+üÐU<+ßÃªAÜvÃä*A:CO.ª*£ährîZ£rü_bu£:>:b_')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (2, -1546111383, 1, 10, CAST(0x001162C200DD80B0 AS DateTime), CAST(0x0008F8B601589D18 AS DateTime), N'bA åBZ:@A,bUr:rå_ýb¢_îCvÄo+@Äbý,ýÄO¢hª+ßB*ÃßzîÜ*OÃbu@ðßoîboðîößü.£v>Z|Öðªv_Orzüß,a aýÖåbîaÄB:/åh_Ä.©¢vb¢öhªv+¢öªB @å¢ßý£Ürªvã©<O+,£<åzOhöÄbäo¢ÃZbCýhîý@ÖÐÖå/©ßÜZ©/åýü:Äßh,öîÄh>o')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (3, NULL, 1, 8, CAST(0x0006BAD1004B8B74 AS DateTime), CAST(0x0000901A0000012C AS DateTime), N'ÖC.Ö<oðßrÐÖÃz~,rý@bªA~vÐð ~b¢zo>BbÄª+,ðßüððÜ.ßaª :*Ö väoã©ãh|åOå|U~uåßßªªU¢C©> C üÄoü,oãu_ÖÃ|ÜuBÐbrouÜÄ_¢ÖoB¢Ö>**ÄßªOaîoBÖa*Ahbßa_+ªzOå_UO_rUbu:A.*ãü¢îÐhAb:Ü+>>Ä*bb+îAOßv*a<Ãða__ ¢Ürã+££:vB/Üå©A>îýhbC+OaÄZîU/CbðuAäÄ>>Ã/Ð/Üb,<: /rAa,:rvªrhBÖ,AhA>|ãß a,zÄ Ã~Bªuß|ßUBb_ÖßªBZ+ª©*.¢Aîð¢@CO¢Ä©C@©@~îvr~ÜbýößAruÄaÄbýZübÄZrA©b: ä¢zö~Ä: <Ö¢~Aöh~ î<¢ý¢hUÄ:å¢boðÐ~©BOÄU¢a_,|u£+AÖoªÃÜ~ã*U>bUhßãUzãîý+äüåBZ:bªbî~ .C:::hhÖzãÃ©ý<OÄhU,Ö+£îrÐª>hÖÐO~<îÄÄ+ÜäÃÜUbavuBßZ+<ß>ãüÜrvÐ')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (4, 1386610270, 1, 7, NULL, CAST(0x00049F220140A780 AS DateTime), N'*,ÃýCªåð@@Ãã,v+b¢öö>BbabÖv<+OAaAßAC.ßäãO *r öo~ ZA|hßüuZ,£uäC@Ö>@©b*hövÜBÜOÖã©Cª©obh:äußßßAO¢ýbßªÄßvCuO*ÖÜAAß<:Ä_¢Oü/ªA©:u_zîBhCÐ+ohäã>/üÐ,©ßOa + £aßb*ý©oßå©ä/©£ðz/z äÃh')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (5, 9417404, 0, 4, CAST(0x002D247F018B81FF AS DateTime), NULL, N'ö~:h £ao:ÄAªÖBzÄAîä~Ab<öäbb£Üzz@Ã:ðäu>ª£.håh©_ýî.@ ö.ªOîC>ZZ~+,h,>îzO:<_zuoåo v bouvý+BbvAÐÐuzbbÖÐÐO¢©ÐüAÜ¢r:z')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (6, -1682641284, 0, 5, NULL, CAST(0xFFFF84480100BEF4 AS DateTime), N'AhÄÖ ýoBC/~BÄ+/vurÐîªüzö>vB¢ð¢~ÄÜÜ£~vZ:£b*OZrhuãýåîöZ>ubãÖUbî@O>ãåzöÐäaðÖBãvßaÖ*Av£bÄ¢/Z_~Ð>A,Ö_o©/ ßZBhäürr£üvãýîA¢åhÜu:A,hC>å**zBC|/_Ðo@OÖ.u¢~ î@h+C£AîuåÜîüa+Bää*åov|+Z<+üAßu.ßßuýÖýu£br |Öãr>ß£|+ZÄo¢öÜB¢Zbå.£+Bhß+*å¢Ãßööýª/Zäo+uãhB£~Aüåª*a îî,ÖbÃ/zÃÖ~îuÃüo£ .î>rßUý<u*+ýA ßªABuÃUOÐb_B_r/îbßuvðCãÄBhÖ|<böÄÐUB¢©äöüBUo/©ÄÄßbzv|ÖÖ,ÃÜzaBö©Ä£Cß+ZBßuråvOÃö,b+/ü@oß,öüä.ä*ääA._@ ã*.ÃUbbÃ>~ÄÐ+U¢£ýo_ãÄå,/©öå*aUÖo/buAavvbÖÄ:,hÃ<Curbvý©ªööýA')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (7, -1, 0, 7, CAST(0x002D247F018B81FF AS DateTime), CAST(0x000D4E8D00FBA1F8 AS DateTime), NULL)
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (8, NULL, 1, 8, CAST(0x00027B1C00EC2EE4 AS DateTime), NULL, N'Zý')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (9, 1644253482, 0, 2, NULL, CAST(0x0000901A0000012C AS DateTime), N'vbAUöäAbr~|+Ob¢| +@~ª@öÃAã/ªãb .|ãÖ@ª<öªbüu/ÐªZÃ<UäC£oäÐh rC./rhUoß*zCüä.î_£z@ü/|ÖCªrrÖ,ýA+ZvãOªÖBO|Üð++ZaÃÐªu/¢+Ö_©zªöA,/*ZÐÃ~~Ððåu ,©¢,Ð O@AÜÜ~Öî>Z@zohho*~b£ª.CaÃ uZüBîZ|vÖ@+£~ÃüÜbzu¢ÄbOUzbzBÄÜ,AB/+:ö.+uÐå,ªßÄý,©ß ßßb¢hBÄÜäý<|ýC _o ')
GO
INSERT [dbo].[Tasks] ([Id], [ConfigId], [Deleted], [RunId], [Started], [Completed], [StartedBy]) VALUES (10, 2147483647, 1, 10, CAST(0x000C42A60106074C AS DateTime), CAST(0xFFFF2E4600000000 AS DateTime), N'ªbî.î/~UAßu*u¢@Uv .><oãboa£åßOß:_ZOßbb£_@b@*Bo~b.Ð¢<Zbü:uãvåßÄ/äýÖßö:ÐOrÃåü,£>üý.ª<b_ O: Ä|ußÖÖß££***£ª©|.ß.C|ßÐåv<OU+z©~+ªÐoö.ðCoÖýh¢£Üaß>h_Ü Öîß @Z||v*ÃÖýAä@¢aåZüßßªv¢ÄO:äOCßAäß ªå¢|~<£/ä£ÐhZåh£>+ðBubî~,C.O|ööOAOaCUÄ,*oo')
GO
INSERT [dbo].[Test1s] ([TestId1], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test1s] ([TestId1], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test1s] ([TestId1], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test1s] ([TestId1], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test2s] ([TestId2], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test2s] ([TestId2], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test2s] ([TestId2], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test2s] ([TestId2], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test3s] ([TestId3], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test3s] ([TestId3], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test3s] ([TestId3], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test3s] ([TestId3], [RunId1], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test4s] ([TestId4], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test4s] ([TestId4], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test4s] ([TestId4], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test4s] ([TestId4], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test5s] ([TestId5], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test5s] ([TestId5], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test5s] ([TestId5], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test5s] ([TestId5], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test6s] ([TestId6], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test6s] ([TestId6], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test6s] ([TestId6], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test6s] ([TestId6], [RunId2], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test7s] ([TestId7], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test7s] ([TestId7], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test7s] ([TestId7], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test7s] ([TestId7], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test8s] ([TestId8], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test8s] ([TestId8], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test8s] ([TestId8], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test8s] ([TestId8], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Test9s] ([TestId9], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 1, 2, N'Test1', N'christro')
GO
INSERT [dbo].[Test9s] ([TestId9], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (1, 2, 1, N'Test3', N'steveob')
GO
INSERT [dbo].[Test9s] ([TestId9], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 1, 2, N'Test2', N'christro')
GO
INSERT [dbo].[Test9s] ([TestId9], [RunId3], [BuildId], [Name], [LabOwnerAlias]) VALUES (2, 2, 1, N'Test4', N'davebarn')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (1, N'O_üZäÐCu/brÃb@.£îOrb|:ßbvß¢~C.hðÐÄ>.*+AC.ªÜbÐ,O / .+äbªÄÐîAbB@CaöZü+Aaz_hb£ü©Özä¢zoÜaÖb©BÜ')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (2, N' ýAå<ÜB:.ßZ.AäuÜ.£bü~o/ß* ýOrzZv ärobÜ<î©ä/ßaÐÖo_ZU/ÐÄãO_U@oÜîUC@ABo£bÐ£OhzÐÄªÜ¢|ã£ðbã@ªAAªßUzCÖª Zü¢ª><_~v~.C:ð:îªöv b©@>h¢:ð,äa_h, ßýü*O+:~ðrî~©**ÄO>Zv¢:h<åA¢O,~äübª£ð£ªböªb~zuAÜ|boßbãhÄ*ã<:oÖvr* ö@bÃ/b~.*£_åãUãUbhuÖßCðîzb')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (3, N'ðO åuüZ@Ää¢Bu¢><o:ýU¢îÃhü~>ß~o,*ð:>o ££äüz_r@h@r¢:Ðäbð>a>rð¢<:ö_<vOÜ')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (4, N'o@ßhvz*<ªßbzrh._výö<£CÐA,>+aÐUüÖbvZubö£r©A~B|ovßCöýOß£ÃAÜÜÐÖö*Ö+ãzUðãr< *Öß¢_£:uU|åßvßö.|v/vrîUzZuUvî üð:©ßbßb<h >>+:üBb+ã*~ÖrC:>>* ,r îªö ªüå~>ÜzöÃ,åãzCrîbü+Ov_+| ÐoÐhO~Ö@¢>b<Uä')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (5, N'U/b¢£ArrzUöUÜbbª vÖª|ß>ßC ÃªC.ãC|ÄaCzð©Äö_ßö£@Ð|:<oýCrå.ðv@  ªBå,ãÃbböZ,~A£Aý|h~ªCo£Uäý*ß~Ob,*+*:ð_ßã©>>rÖ,b_ä.*CöÐu:/£_ã U<ÖuaU©z~ba Ððª£:<<ðßüoãö:¢oîaZaý@/AÖüÖh.UZ+ Ürßªßýobî@Zzðv_¢>.|Üa*u<|î<Ä @|©ß>ovß_BaCðbýoÐßÃu@îßÄ~ /ýzAå@:Ö,ü')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (6, N'.CZßüz|©BZu ãbÜ>ß¢ÐöuOÐv>@r>©O©A_u.~öÐö@oðUoÖýrßÐööÜu©ZU+aZ/BbýîªrÜ¢©r|b©rßZö|@@ ,ÜÄuåßåðOrð/>.Bð __r|o@+åBaäýZß<ÖCÄzv©Ä.îÃ>ý¢¢OßÃ+ªAý ÖuU**ßÜaöå./Ã+Äß£©ãCzå©_Övðuo¢©Ü>/+<bðzð£åÖª~rößbîÄöOäAä|Ã~Bä_ãzr¢öUýUÐÐ*î<.hbü_ CovðÐ~¢.@î+ ubBA/.üUÃßãOýªZ,ªÐ@ÐbÖÖ,~,:A ã< ')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (7, N'Cä+,Ã¢ýz¢Z böhzußÜ,¢Z<ZÄ/böððã >ß~<.ArAîÐÐC<b>/ ÄBAÃöÐB£|£ö¢©b+ßöãv*£årªÖ<å_*ß©öª¢rãß¢_b<ãä+v,u©+ @uuBÃãå.ö:ã|ZÖýaAbä_üzZOåßAß**vuOaZ/Ä@ö+ö.ÃbUð|B,U+Oßß+rðbuîßbbªr¢+Z:_Z>C>ª_¢uööUð/Büb.+£B@©zb|ä*Bå¢|Z£')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (8, N'åbzuß|ÄBv£å¢ö¢hra¢*A¢ObðÐO_* ,üZ~hBýCoß@ß|A,ÃU.:Ð/|£Zß*Ãa+<£A+ÜåÃ~bß_hbãßãubo©U>ÜBªåß ýÖß,ýÖ©O>/ßoÃBO~îª*Äß:ªZ_ hýäöÜåb+ªZAoh O£ ÜUaýhzOrý_C>_o>ä£¢Ãz|£îB >î|Ð:A_OCßb_*ý©©Ðß*öåbC@Z>Ä< Üh*î££.ª:@@~z/*: Z¢A¢ßä|o::ÜA:üzbä ÃÃ¢Ã vbZvß*|¢Übürb/ÃüvÜÐrr¢|a_r@:C©ÖÃ~zÜ|@~Ðßåãaü<ÜU¢o*.ðå>h£>ZÐ¢ãB@C vªÜ©C:©Aöz+ªª@ÜüîZÖUãßBohbuäCüß î£ro:öbîÐåöOÜAîÖö£ößÖä>:@ª_bußðü@bÄü ¢>öUã>öäð,BO:î:aý|AoÐ£ä,aÃðüü©Ð ð/ oý|ð+_ªªu:äÖð:ü@<Ãßªý£|Uo~ýîU£ÜUA|zA/¢©ªCA¢öhðý@aoU¢hã*>/zÜÜ|Ä*|©¢Ð*hðbäAO<öAªBu~<åB.hCOuß~häåb.Ãbv@r£+')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (9, N',ªö+.<ßu_ObßUo_>_C  öýhhbUü |AðBßaA@Oßß Ü')
GO
INSERT [dbo].[Testers] ([Id], [Name]) VALUES (10, N'Ãý~:îÐA©_bÐh,<ßzo><£@UýauCa ÄZý|AÃ/o:ßbª_*,bbå¢b+>©ßZUÜ/ý~uÜÐÃöUbOBÄA£ã+/åCoäðð*<üöu¢ovÜîýoå|Zäã.oaîÜðaÄ£z,.hª~b£åZÜÐÐªåîzßA>üßoAvÖÄða||öU| Üä£Z.buÃýBBÃ_Ca:CürÃ')
GO
INSERT [dbo].[TestScenarios] ([Id], [Name], [ProjectId]) VALUES (1, N'CßÜÃ~©£©>_Ö| uÜÜîBððv*ü~~CðÄBC: ~_BB@U~öÐö,C*@åA/Z~¢¢ßbÜãOB:Ðð|+B.üÜhÃU©@ýrzüãubUîvß@ãÃÜ<zv hCrß,aað|BîÖAðB£¢ÖßýüAuã©ÖävÄrzß.ð_.ß,ðöãZ>oý>ÖªÐboÄ>Z+Bî*h¢oÖu*ÜB*C,Ããuãäh©_', 1)
GO
INSERT [dbo].[ThirteenNavigations] ([Id], [BigInt_Id], [Bit_Id], [DateTime_Id], [Decimal_Id], [Float_Id], [Money_Id], [Numeric_Id], [Real_Id], [SmallDateTime_Id], [TinyInt_Id], [GUID_Id], [Varchar_Id], [SmallMoney_Id], [DataColumn]) VALUES (1, 1, 0, CAST(0x00006FC600000000 AS DateTime), CAST(-0.01 AS Decimal(16, 2)), 3, 34.5600, CAST(0.000000000000000000 AS Numeric(38, 18)), 1, CAST(0xD6070000 AS SmallDateTime), 214, N'66666666-aaaa-7777-cccc-edededeedede', N'text2', 4.0000, N'yuck      ')
GO
SET IDENTITY_INSERT [dbo].[Vehicles] ON 

GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Model], [Year], [Type]) VALUES (2, N'Oldsmobile', N'Alero', 2000, N'C')
GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Model], [Year], [Type]) VALUES (3, N'BMW', N'330i', 2005, N'C')
GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Model], [Year], [Type]) VALUES (4, N'Toyota', N'CrossOver', 1999, N'S')
GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Model], [Year], [Type]) VALUES (5, N'Ford', N'F150', 1950, N'T')
GO
INSERT [dbo].[Vehicles] ([Id], [Make], [Model], [Year], [Type]) VALUES (6, N'Catapiller', N'Roadmaker', 1974, N'V')
GO
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
GO
SET IDENTITY_INSERT [dbo].[WideTreeTable] ON 

GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (1, N'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (2, N'B', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (3, N'C', NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (4, N'D', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (5, N'E', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (6, N'F', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (7, N'G', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (8, N'H', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (9, N'I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (10, N'J', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (11, N'K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (12, N'L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (13, N'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL)
GO
INSERT [dbo].[WideTreeTable] ([Id], [TypeFlag], [B_Int], [C_Int], [D_Int], [E_Int], [F_Int], [G_Int], [H_Int], [I_Int], [J_Int], [K_Int], [L_Int], [M_Int], [N_Int]) VALUES (14, N'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14)
GO
SET IDENTITY_INSERT [dbo].[WideTreeTable] OFF
GO
SET IDENTITY_INSERT [dbo].[Workers] ON 

GO
INSERT [dbo].[Workers] ([Id], [FirstName], [LastName], [MiddleName], [MentorId], [OfficeId]) VALUES (1, N'Chris', N'Robinson', N'P', 5, 1)
GO
INSERT [dbo].[Workers] ([Id], [FirstName], [LastName], [MiddleName], [MentorId], [OfficeId]) VALUES (5, N'Steve', N'O''Brian', N'l', NULL, 3)
GO
INSERT [dbo].[Workers] ([Id], [FirstName], [LastName], [MiddleName], [MentorId], [OfficeId]) VALUES (6, N'Juan', N'Guitieriz', N'Carlos', 1, NULL)
GO
INSERT [dbo].[Workers] ([Id], [FirstName], [LastName], [MiddleName], [MentorId], [OfficeId]) VALUES (8, N'Mark', N'Ashton', N'p', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Workers] OFF
GO
ALTER TABLE [dbo].[BugsDefectTracking]  WITH CHECK ADD  CONSTRAINT [FK_Bugs_AssignedToOwners] FOREIGN KEY([AssignedToId])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[BugsDefectTracking] CHECK CONSTRAINT [FK_Bugs_AssignedToOwners]
GO
ALTER TABLE [dbo].[BugsDefectTracking]  WITH CHECK ADD  CONSTRAINT [FK_Bugs_Failures] FOREIGN KEY([FailureId])
REFERENCES [dbo].[Failures] ([Id])
GO
ALTER TABLE [dbo].[BugsDefectTracking] CHECK CONSTRAINT [FK_Bugs_Failures]
GO
ALTER TABLE [dbo].[BugsDefectTracking]  WITH CHECK ADD  CONSTRAINT [FK_Bugs_ResolvedByOwners] FOREIGN KEY([ResolvedById])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[BugsDefectTracking] CHECK CONSTRAINT [FK_Bugs_ResolvedByOwners]
GO
ALTER TABLE [dbo].[BugsProjectTracking]  WITH CHECK ADD  CONSTRAINT [FK_BugsProject_AssignedToOwners] FOREIGN KEY([AssignedToId])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[BugsProjectTracking] CHECK CONSTRAINT [FK_BugsProject_AssignedToOwners]
GO
ALTER TABLE [dbo].[BugsProjectTracking]  WITH CHECK ADD  CONSTRAINT [FK_BugsProject_Failures] FOREIGN KEY([FailureId])
REFERENCES [dbo].[Failures] ([Id])
GO
ALTER TABLE [dbo].[BugsProjectTracking] CHECK CONSTRAINT [FK_BugsProject_Failures]
GO
ALTER TABLE [dbo].[BugsProjectTracking]  WITH CHECK ADD  CONSTRAINT [FK_BugsProject_ResolvedByOwners] FOREIGN KEY([ResolvedById])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[BugsProjectTracking] CHECK CONSTRAINT [FK_BugsProject_ResolvedByOwners]
GO
ALTER TABLE [dbo].[Builds]  WITH CHECK ADD  CONSTRAINT [FK_Builds_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Builds] CHECK CONSTRAINT [FK_Builds_LabOwners]
GO
ALTER TABLE [dbo].[ComputerDetails]  WITH CHECK ADD  CONSTRAINT [FK_ComputerDetails_Computers] FOREIGN KEY([MachineName])
REFERENCES [dbo].[Computers] ([MachineName])
GO
ALTER TABLE [dbo].[ComputerDetails] CHECK CONSTRAINT [FK_ComputerDetails_Computers]
GO
ALTER TABLE [dbo].[ConfigFailures]  WITH CHECK ADD  CONSTRAINT [FK_FailureConfigConfig] FOREIGN KEY([ConfigId])
REFERENCES [dbo].[Configs] ([Id])
GO
ALTER TABLE [dbo].[ConfigFailures] CHECK CONSTRAINT [FK_FailureConfigConfig]
GO
ALTER TABLE [dbo].[ConfigFailures]  WITH CHECK ADD  CONSTRAINT [FK_FailureConfigFailure] FOREIGN KEY([FailureId])
REFERENCES [dbo].[Failures] ([Id])
GO
ALTER TABLE [dbo].[ConfigFailures] CHECK CONSTRAINT [FK_FailureConfigFailure]
GO
ALTER TABLE [dbo].[DeploymentScenarios]  WITH CHECK ADD  CONSTRAINT [FK_DeploymentScenarios_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[DeploymentScenarios] CHECK CONSTRAINT [FK_DeploymentScenarios_Projects]
GO
ALTER TABLE [dbo].[FailureDetails]  WITH CHECK ADD  CONSTRAINT [FK_FailureDetails_Failures] FOREIGN KEY([FailureId])
REFERENCES [dbo].[Failures] ([Id])
GO
ALTER TABLE [dbo].[FailureDetails] CHECK CONSTRAINT [FK_FailureDetails_Failures]
GO
ALTER TABLE [dbo].[LabIssues]  WITH CHECK ADD  CONSTRAINT [FK_LabIssues_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[LabIssues] CHECK CONSTRAINT [FK_LabIssues_LabOwners]
GO
ALTER TABLE [dbo].[MachineConfigs]  WITH CHECK ADD  CONSTRAINT [FK_MachineConfigs_Configs] FOREIGN KEY([Id])
REFERENCES [dbo].[Configs] ([Id])
GO
ALTER TABLE [dbo].[MachineConfigs] CHECK CONSTRAINT [FK_MachineConfigs_Configs]
GO
ALTER TABLE [dbo].[OldVehiclesLinkTable]  WITH CHECK ADD  CONSTRAINT [FK_OldVehiclesLinkTable_People] FOREIGN KEY([FirstName], [LastName], [MiddleName])
REFERENCES [dbo].[People] ([FirstName], [LastName], [MiddleName])
GO
ALTER TABLE [dbo].[OldVehiclesLinkTable] CHECK CONSTRAINT [FK_OldVehiclesLinkTable_People]
GO
ALTER TABLE [dbo].[OldVehiclesLinkTable]  WITH CHECK ADD  CONSTRAINT [FK_OldVehiclesLinkTable_Vehicles] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicles] ([Id])
GO
ALTER TABLE [dbo].[OldVehiclesLinkTable] CHECK CONSTRAINT [FK_OldVehiclesLinkTable_Vehicles]
GO
ALTER TABLE [dbo].[OwnerOwnerDetails]  WITH CHECK ADD  CONSTRAINT [FK_OwnerDetails_OwnerOwnerDetails] FOREIGN KEY([DetailId])
REFERENCES [dbo].[OwnerDetails] ([DetailId])
GO
ALTER TABLE [dbo].[OwnerOwnerDetails] CHECK CONSTRAINT [FK_OwnerDetails_OwnerOwnerDetails]
GO
ALTER TABLE [dbo].[OwnerOwnerDetails]  WITH CHECK ADD  CONSTRAINT [FK_Owners_OwnerOwnerDetails] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[OwnerOwnerDetails] CHECK CONSTRAINT [FK_Owners_OwnerOwnerDetails]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_Vehicles] FOREIGN KEY([PrimaryVehicleId])
REFERENCES [dbo].[Vehicles] ([Id])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_Vehicles]
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable]  WITH CHECK ADD  CONSTRAINT [FK_RecordingAlbumsLinkTable_Albums] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums] ([albumId])
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable] CHECK CONSTRAINT [FK_RecordingAlbumsLinkTable_Albums]
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable]  WITH CHECK ADD  CONSTRAINT [FK_RecordingAlbumsLinkTable_Recordings] FOREIGN KEY([SongId], [ArtistId])
REFERENCES [dbo].[Recordings] ([SongId], [ArtistId])
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable] CHECK CONSTRAINT [FK_RecordingAlbumsLinkTable_Recordings]
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable2]  WITH CHECK ADD  CONSTRAINT [FK_RecordingAlbumsLinkTable2_Recordings2] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums2] ([albumId])
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable2] CHECK CONSTRAINT [FK_RecordingAlbumsLinkTable2_Recordings2]
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable2]  WITH CHECK ADD  CONSTRAINT [FK_RecordingAlbumsLinkTable2_Recordings21] FOREIGN KEY([SongId], [ArtistId])
REFERENCES [dbo].[Recordings2] ([SongId], [ArtistId])
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable2] CHECK CONSTRAINT [FK_RecordingAlbumsLinkTable2_Recordings21]
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable3]  WITH CHECK ADD  CONSTRAINT [FK_RecordingAlbumsLinkTable3_Albums3] FOREIGN KEY([AlbumId])
REFERENCES [dbo].[Albums3] ([albumId])
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable3] CHECK CONSTRAINT [FK_RecordingAlbumsLinkTable3_Albums3]
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable3]  WITH CHECK ADD  CONSTRAINT [FK_RecordingAlbumsLinkTable3_Recordings3] FOREIGN KEY([SongId], [ArtistId])
REFERENCES [dbo].[Recordings3] ([SongId], [ArtistId])
GO
ALTER TABLE [dbo].[RecordingAlbumsLinkTable3] CHECK CONSTRAINT [FK_RecordingAlbumsLinkTable3_Recordings3]
GO
ALTER TABLE [dbo].[Recordings]  WITH CHECK ADD  CONSTRAINT [FK_Recordings_Artists] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artists] ([Id])
GO
ALTER TABLE [dbo].[Recordings] CHECK CONSTRAINT [FK_Recordings_Artists]
GO
ALTER TABLE [dbo].[Recordings]  WITH CHECK ADD  CONSTRAINT [FK_Recordings_Songs] FOREIGN KEY([SongId])
REFERENCES [dbo].[Songs] ([Id])
GO
ALTER TABLE [dbo].[Recordings] CHECK CONSTRAINT [FK_Recordings_Songs]
GO
ALTER TABLE [dbo].[Recordings2]  WITH CHECK ADD  CONSTRAINT [FK_Recordings2_Artists] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artists2] ([Id])
GO
ALTER TABLE [dbo].[Recordings2] CHECK CONSTRAINT [FK_Recordings2_Artists]
GO
ALTER TABLE [dbo].[Recordings2]  WITH CHECK ADD  CONSTRAINT [FK_Recordings2_Recordings2] FOREIGN KEY([OriginalSongId], [OriginalArtistId])
REFERENCES [dbo].[Recordings2] ([SongId], [ArtistId])
GO
ALTER TABLE [dbo].[Recordings2] CHECK CONSTRAINT [FK_Recordings2_Recordings2]
GO
ALTER TABLE [dbo].[Recordings2]  WITH CHECK ADD  CONSTRAINT [FK_Recordings2_Songs2] FOREIGN KEY([SongId])
REFERENCES [dbo].[Songs2] ([Id])
GO
ALTER TABLE [dbo].[Recordings2] CHECK CONSTRAINT [FK_Recordings2_Songs2]
GO
ALTER TABLE [dbo].[Recordings3]  WITH CHECK ADD  CONSTRAINT [FK_Recordings3_Artists3] FOREIGN KEY([ArtistId])
REFERENCES [dbo].[Artists3] ([Id])
GO
ALTER TABLE [dbo].[Recordings3] CHECK CONSTRAINT [FK_Recordings3_Artists3]
GO
ALTER TABLE [dbo].[Recordings3]  WITH CHECK ADD  CONSTRAINT [FK_Recordings3_Songs3] FOREIGN KEY([SongId])
REFERENCES [dbo].[Songs3] ([Id])
GO
ALTER TABLE [dbo].[Recordings3] CHECK CONSTRAINT [FK_Recordings3_Songs3]
GO
ALTER TABLE [dbo].[Run1s]  WITH CHECK ADD  CONSTRAINT [FK_Run1s_Builds] FOREIGN KEY([BuildID])
REFERENCES [dbo].[Builds] ([BuildId])
GO
ALTER TABLE [dbo].[Run1s] CHECK CONSTRAINT [FK_Run1s_Builds]
GO
ALTER TABLE [dbo].[Run1s]  WITH CHECK ADD  CONSTRAINT [FK_Run1s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Run1s] CHECK CONSTRAINT [FK_Run1s_LabOwners]
GO
ALTER TABLE [dbo].[Run2s]  WITH CHECK ADD  CONSTRAINT [FK_Run2s_Builds] FOREIGN KEY([BuildId])
REFERENCES [dbo].[Builds] ([BuildId])
GO
ALTER TABLE [dbo].[Run2s] CHECK CONSTRAINT [FK_Run2s_Builds]
GO
ALTER TABLE [dbo].[Run2s]  WITH CHECK ADD  CONSTRAINT [FK_Run2s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Run2s] CHECK CONSTRAINT [FK_Run2s_LabOwners]
GO
ALTER TABLE [dbo].[Run3s]  WITH CHECK ADD  CONSTRAINT [FK_Run3s_Builds] FOREIGN KEY([BuildId])
REFERENCES [dbo].[Builds] ([BuildId])
GO
ALTER TABLE [dbo].[Run3s] CHECK CONSTRAINT [FK_Run3s_Builds]
GO
ALTER TABLE [dbo].[Run3s]  WITH CHECK ADD  CONSTRAINT [FK_Run3s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Run3s] CHECK CONSTRAINT [FK_Run3s_LabOwners]
GO
ALTER TABLE [dbo].[RunOwners]  WITH CHECK ADD  CONSTRAINT [FK_RunOwners_Owners] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owners] ([Id])
GO
ALTER TABLE [dbo].[RunOwners] CHECK CONSTRAINT [FK_RunOwners_Owners]
GO
ALTER TABLE [dbo].[RunOwners]  WITH CHECK ADD  CONSTRAINT [FK_RunOwners_Runs] FOREIGN KEY([RunId])
REFERENCES [dbo].[Runs] ([Id])
GO
ALTER TABLE [dbo].[RunOwners] CHECK CONSTRAINT [FK_RunOwners_Runs]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Colleges] FOREIGN KEY([CollegeId])
REFERENCES [dbo].[Colleges] ([CollegeId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Colleges]
GO
ALTER TABLE [dbo].[TaskInvestigates]  WITH CHECK ADD  CONSTRAINT [FK_TaskInvestigate_Tasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[TaskInvestigates] CHECK CONSTRAINT [FK_TaskInvestigate_Tasks]
GO
ALTER TABLE [dbo].[TaskResults]  WITH CHECK ADD  CONSTRAINT [FK_TaskResults_Tasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([Id])
GO
ALTER TABLE [dbo].[TaskResults] CHECK CONSTRAINT [FK_TaskResults_Tasks]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Run] FOREIGN KEY([RunId])
REFERENCES [dbo].[Runs] ([Id])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Run]
GO
ALTER TABLE [dbo].[Test1s]  WITH CHECK ADD  CONSTRAINT [FK_Test1s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test1s] CHECK CONSTRAINT [FK_Test1s_LabOwners]
GO
ALTER TABLE [dbo].[Test1s]  WITH CHECK ADD  CONSTRAINT [FK_Test1s_Run1s] FOREIGN KEY([RunId1], [BuildId])
REFERENCES [dbo].[Run1s] ([RunId1], [BuildID])
GO
ALTER TABLE [dbo].[Test1s] CHECK CONSTRAINT [FK_Test1s_Run1s]
GO
ALTER TABLE [dbo].[Test2s]  WITH CHECK ADD  CONSTRAINT [FK_Test2s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test2s] CHECK CONSTRAINT [FK_Test2s_LabOwners]
GO
ALTER TABLE [dbo].[Test2s]  WITH CHECK ADD  CONSTRAINT [FK_Test2s_Run1s] FOREIGN KEY([RunId1], [BuildId])
REFERENCES [dbo].[Run1s] ([RunId1], [BuildID])
GO
ALTER TABLE [dbo].[Test2s] CHECK CONSTRAINT [FK_Test2s_Run1s]
GO
ALTER TABLE [dbo].[Test3s]  WITH CHECK ADD  CONSTRAINT [FK_Test3s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test3s] CHECK CONSTRAINT [FK_Test3s_LabOwners]
GO
ALTER TABLE [dbo].[Test3s]  WITH CHECK ADD  CONSTRAINT [FK_Test3s_Run1s] FOREIGN KEY([RunId1], [BuildId])
REFERENCES [dbo].[Run1s] ([RunId1], [BuildID])
GO
ALTER TABLE [dbo].[Test3s] CHECK CONSTRAINT [FK_Test3s_Run1s]
GO
ALTER TABLE [dbo].[Test4s]  WITH CHECK ADD  CONSTRAINT [FK_Test4s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test4s] CHECK CONSTRAINT [FK_Test4s_LabOwners]
GO
ALTER TABLE [dbo].[Test4s]  WITH CHECK ADD  CONSTRAINT [FK_Test4s_Run2s] FOREIGN KEY([RunId2], [BuildId])
REFERENCES [dbo].[Run2s] ([RunId2], [BuildId])
GO
ALTER TABLE [dbo].[Test4s] CHECK CONSTRAINT [FK_Test4s_Run2s]
GO
ALTER TABLE [dbo].[Test5s]  WITH CHECK ADD  CONSTRAINT [FK_Test5s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test5s] CHECK CONSTRAINT [FK_Test5s_LabOwners]
GO
ALTER TABLE [dbo].[Test5s]  WITH CHECK ADD  CONSTRAINT [FK_Test5s_Run2s] FOREIGN KEY([RunId2], [BuildId])
REFERENCES [dbo].[Run2s] ([RunId2], [BuildId])
GO
ALTER TABLE [dbo].[Test5s] CHECK CONSTRAINT [FK_Test5s_Run2s]
GO
ALTER TABLE [dbo].[Test6s]  WITH CHECK ADD  CONSTRAINT [FK_Test6s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test6s] CHECK CONSTRAINT [FK_Test6s_LabOwners]
GO
ALTER TABLE [dbo].[Test6s]  WITH CHECK ADD  CONSTRAINT [FK_Test6s_Run2s] FOREIGN KEY([RunId2], [BuildId])
REFERENCES [dbo].[Run2s] ([RunId2], [BuildId])
GO
ALTER TABLE [dbo].[Test6s] CHECK CONSTRAINT [FK_Test6s_Run2s]
GO
ALTER TABLE [dbo].[Test7s]  WITH CHECK ADD  CONSTRAINT [FK_Test7s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test7s] CHECK CONSTRAINT [FK_Test7s_LabOwners]
GO
ALTER TABLE [dbo].[Test7s]  WITH CHECK ADD  CONSTRAINT [FK_Test7s_Run3s] FOREIGN KEY([RunId3], [BuildId])
REFERENCES [dbo].[Run3s] ([RunId3], [BuildId])
GO
ALTER TABLE [dbo].[Test7s] CHECK CONSTRAINT [FK_Test7s_Run3s]
GO
ALTER TABLE [dbo].[Test8s]  WITH CHECK ADD  CONSTRAINT [FK_Test8s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test8s] CHECK CONSTRAINT [FK_Test8s_LabOwners]
GO
ALTER TABLE [dbo].[Test8s]  WITH CHECK ADD  CONSTRAINT [FK_Test8s_Run3s] FOREIGN KEY([RunId3], [BuildId])
REFERENCES [dbo].[Run3s] ([RunId3], [BuildId])
GO
ALTER TABLE [dbo].[Test8s] CHECK CONSTRAINT [FK_Test8s_Run3s]
GO
ALTER TABLE [dbo].[Test9s]  WITH CHECK ADD  CONSTRAINT [FK_Test9s_LabOwners] FOREIGN KEY([LabOwnerAlias])
REFERENCES [dbo].[LabOwners] ([ownerAlias])
GO
ALTER TABLE [dbo].[Test9s] CHECK CONSTRAINT [FK_Test9s_LabOwners]
GO
ALTER TABLE [dbo].[Test9s]  WITH CHECK ADD  CONSTRAINT [FK_Test9s_Run3s] FOREIGN KEY([RunId3], [BuildId])
REFERENCES [dbo].[Run3s] ([RunId3], [BuildId])
GO
ALTER TABLE [dbo].[Test9s] CHECK CONSTRAINT [FK_Test9s_Run3s]
GO
ALTER TABLE [dbo].[TestScenarios]  WITH CHECK ADD  CONSTRAINT [FK_TestScenarios_Projects] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[TestScenarios] CHECK CONSTRAINT [FK_TestScenarios_Projects]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_BigInt] FOREIGN KEY([BigInt_Id])
REFERENCES [dbo].[DataKey_BigInt] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_BigInt]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_Bit] FOREIGN KEY([Bit_Id])
REFERENCES [dbo].[DataKey_Bit] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_Bit]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_DateTime] FOREIGN KEY([DateTime_Id])
REFERENCES [dbo].[DataKey_DateTime] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_DateTime]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_Decimal] FOREIGN KEY([Decimal_Id])
REFERENCES [dbo].[DataKey_Decimal] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_Decimal]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_Float] FOREIGN KEY([Float_Id])
REFERENCES [dbo].[DataKey_Float] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_Float]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_GUID] FOREIGN KEY([GUID_Id])
REFERENCES [dbo].[DataKey_GUID] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_GUID]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_Money] FOREIGN KEY([Money_Id])
REFERENCES [dbo].[DataKey_Money] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_Money]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_Numeric] FOREIGN KEY([Numeric_Id])
REFERENCES [dbo].[DataKey_Numeric] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_Numeric]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_Real] FOREIGN KEY([Real_Id])
REFERENCES [dbo].[DataKey_Real] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_Real]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_SmallDateTime] FOREIGN KEY([SmallDateTime_Id])
REFERENCES [dbo].[DataKey_SmallDateTime] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_SmallDateTime]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_SmallMoney] FOREIGN KEY([SmallMoney_Id])
REFERENCES [dbo].[DataKey_SmallMoney] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_SmallMoney]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH NOCHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_TinyInt] FOREIGN KEY([TinyInt_Id])
REFERENCES [dbo].[DataKey_TinyInt] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_TinyInt]
GO
ALTER TABLE [dbo].[ThirteenNavigations]  WITH CHECK ADD  CONSTRAINT [FK_ThirteenNavigations_DataKey_VarChar50] FOREIGN KEY([Varchar_Id])
REFERENCES [dbo].[DataKey_VarChar50] ([Id])
GO
ALTER TABLE [dbo].[ThirteenNavigations] CHECK CONSTRAINT [FK_ThirteenNavigations_DataKey_VarChar50]
GO
ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Offices] FOREIGN KEY([OfficeId])
REFERENCES [dbo].[Offices] ([Id])
GO
ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Offices]
GO
ALTER TABLE [dbo].[Workers]  WITH CHECK ADD  CONSTRAINT [FK_Workers_Workers] FOREIGN KEY([MentorId])
REFERENCES [dbo].[Workers] ([Id])
GO
ALTER TABLE [dbo].[Workers] CHECK CONSTRAINT [FK_Workers_Workers]
GO
USE [master]
GO
ALTER DATABASE {0} SET  READ_WRITE 
GO
