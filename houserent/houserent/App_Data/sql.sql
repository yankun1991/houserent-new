USE [master]
GO
/****** Object:  Database [lcj_db]    Script Date: 04/27/2016 21:55:05 ******/
CREATE DATABASE [lcj_db] ON  PRIMARY 
( NAME = N'db_jiaoyi_Data', FILENAME = N'D:\git\house-rent\House.Rent\App_Data\db_jiaoyi_Data.MDF' , SIZE = 1984KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'db_jiaoyi_Log', FILENAME = N'D:\git\house-rent\House.Rent\App_Data\db_jiaoyi_Log.LDF' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [lcj_db] SET COMPATIBILITY_LEVEL = 80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lcj_db].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [lcj_db] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [lcj_db] SET ANSI_NULLS OFF
GO
ALTER DATABASE [lcj_db] SET ANSI_PADDING OFF
GO
ALTER DATABASE [lcj_db] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [lcj_db] SET ARITHABORT OFF
GO
ALTER DATABASE [lcj_db] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [lcj_db] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [lcj_db] SET AUTO_SHRINK ON
GO
ALTER DATABASE [lcj_db] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [lcj_db] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [lcj_db] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [lcj_db] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [lcj_db] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [lcj_db] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [lcj_db] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [lcj_db] SET  DISABLE_BROKER
GO
ALTER DATABASE [lcj_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [lcj_db] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [lcj_db] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [lcj_db] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [lcj_db] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [lcj_db] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [lcj_db] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [lcj_db] SET  READ_WRITE
GO
ALTER DATABASE [lcj_db] SET RECOVERY SIMPLE
GO
ALTER DATABASE [lcj_db] SET  MULTI_USER
GO
ALTER DATABASE [lcj_db] SET PAGE_VERIFY NONE
GO
ALTER DATABASE [lcj_db] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'lcj_db', N'ON'
GO
USE [lcj_db]
GO
/****** Object:  Table [dbo].[StressInfo]    Script Date: 04/27/2016 21:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StressInfo](
	[ID] [int] NULL,
	[StressID] [int] NULL,
	[AreaId] [int] NULL,
	[StressName] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StressInfo', @level2type=N'COLUMN',@level2name=N'StressID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StressInfo', @level2type=N'COLUMN',@level2name=N'AreaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StressInfo', @level2type=N'COLUMN',@level2name=N'StressName'
GO
/****** Object:  Table [dbo].[RentResource]    Script Date: 04/27/2016 21:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RentResource](
	[ID] [int] NOT NULL,
	[RentType] [text] NULL,
	[NameOfVillage] [text] NULL,
	[AreaName] [text] NULL,
	[StreetName] [text] NULL,
	[FullAddress] [text] NULL,
	[Room] [int] NULL,
	[Hall] [int] NULL,
	[RestRoom] [int] NULL,
	[Acreage] [int] NULL,
	[Floor] [int] NULL,
	[Floors] [int] NULL,
	[Direction] [text] NULL,
	[FitMent] [text] NULL,
	[HouseType] [text] NULL,
	[MoneyOfRent] [float] NULL,
	[MoneyRentOfType] [text] NULL,
	[Bed] [int] NULL,
	[furniture] [int] NULL,
	[Gas] [int] NULL,
	[CentralHeating] [int] NULL,
	[BroadBand] [int] NULL,
	[Air-condition] [int] NULL,
	[IceBox] [int] NULL,
	[TV] [char](10) NULL,
	[WaterHeater] [int] NULL,
	[Title] [text] NULL,
	[LinkMan] [text] NULL,
	[Mobile] [text] NULL,
	[RentStartTime] [datetime] NULL,
	[MembersType] [text] NULL,
	[Description] [text] NULL,
	[MemberID] [int] NULL,
 CONSTRAINT [PK_RENTRESOURCE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出租方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'RentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小区名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'NameOfVillage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'AreaName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'StreetName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'FullAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Room'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Hall'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'卫' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'RestRoom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Acreage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属楼层' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Floor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总楼层' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Floors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋朝向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Direction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋装修程度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'FitMent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋类型（普通住宅）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'HouseType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'租金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'MoneyOfRent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交租类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'MoneyRentOfType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'床' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Bed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家具' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'furniture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'煤气' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Gas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'暖气' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'CentralHeating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宽带' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'BroadBand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'空调' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Air-condition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'冰箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'IceBox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电视' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'TV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'热水器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'WaterHeater'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'LinkMan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋开始出租时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'RentStartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出租房屋人的类型（个人，经纪人）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'MembersType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RentResource', @level2type=N'COLUMN',@level2name=N'MemberID'
GO
/****** Object:  Table [dbo].[MemberInfo]    Script Date: 04/27/2016 21:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInfo](
	[ID] [int] NULL,
	[Name] [text] NULL,
	[Sex] [int] NULL,
	[PassWord] [text] NULL,
	[Description] [text] NULL,
	[Rank] [int] NULL,
	[Type] [int] NULL,
	[Image] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'Rank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员类型（个人,中介）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberInfo', @level2type=N'COLUMN',@level2name=N'Image'
GO
/****** Object:  Table [dbo].[LeaveMessage]    Script Date: 04/27/2016 21:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveMessage](
	[ID] [int] NULL,
	[MemberID] [int] NULL,
	[Content] [text] NULL,
	[RentResourceID] [int] NULL,
	[DateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveMessage', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveMessage', @level2type=N'COLUMN',@level2name=N'MemberID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveMessage', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房源ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveMessage', @level2type=N'COLUMN',@level2name=N'RentResourceID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveMessage', @level2type=N'COLUMN',@level2name=N'DateTime'
GO
/****** Object:  Table [dbo].[Label]    Script Date: 04/27/2016 21:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Label](
	[ID] [int] NULL,
	[RentResourseID] [int] NULL,
	[TagName] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Label', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出租房源ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Label', @level2type=N'COLUMN',@level2name=N'RentResourseID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Label', @level2type=N'COLUMN',@level2name=N'TagName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Label'
GO
/****** Object:  Table [dbo].[Image]    Script Date: 04/27/2016 21:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ID] [int] NULL,
	[RentResourseID] [int] NULL,
	[ImageUrl] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Image', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出租房源ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Image', @level2type=N'COLUMN',@level2name=N'RentResourseID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Image', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
/****** Object:  View [dbo].[ly]    Script Date: 04/27/2016 21:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ly]
AS
SELECT dbo.hf.hfnr, dbo.liuyan.uid, dbo.liuyan.contents, dbo.liuyan.title
FROM dbo.hf INNER JOIN
      dbo.liuyan ON dbo.hf.lid = dbo.liuyan.id
GO
/****** Object:  Table [dbo].[Collect]    Script Date: 04/27/2016 21:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collect](
	[ID] [int] NULL,
	[MemberID] [int] NULL,
	[RentResourceId] [int] NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Collect', @level2type=N'COLUMN',@level2name=N'MemberID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房源ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Collect', @level2type=N'COLUMN',@level2name=N'RentResourceId'
GO
/****** Object:  Table [dbo].[CityInfo]    Script Date: 04/27/2016 21:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityInfo](
	[ID] [int] NULL,
	[PrivinceId] [int] NULL,
	[ProvinceName] [text] NULL,
	[CityId] [int] NULL,
	[CityName] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityInfo', @level2type=N'COLUMN',@level2name=N'PrivinceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityInfo', @level2type=N'COLUMN',@level2name=N'ProvinceName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityInfo', @level2type=N'COLUMN',@level2name=N'CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CityInfo', @level2type=N'COLUMN',@level2name=N'CityName'
GO
/****** Object:  Table [dbo].[AreaInfo]    Script Date: 04/27/2016 21:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaInfo](
	[ID] [int] NULL,
	[AreaId] [int] NULL,
	[AreaName] [text] NULL,
	[CityId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AreaInfo', @level2type=N'COLUMN',@level2name=N'AreaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AreaInfo', @level2type=N'COLUMN',@level2name=N'AreaName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AreaInfo', @level2type=N'COLUMN',@level2name=N'CityId'
GO
