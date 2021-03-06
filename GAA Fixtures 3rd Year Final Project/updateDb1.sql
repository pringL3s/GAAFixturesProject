USE [GAAFixtures]
GO
/****** Object:  Table [dbo].[CompetitionTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompetitionTbl](
	[CompetitionID] [int] IDENTITY(1,1) NOT NULL,
	[CompDate] [datetime] NULL,
	[CompName] [nvarchar](50) NULL,
	[CompDescription] [nvarchar](50) NULL,
	[CompType] [nvarchar](50) NULL,
 CONSTRAINT [PK_CompetitionTble] PRIMARY KEY CLUSTERED 
(
	[CompetitionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompetitionTbl] ON
INSERT [dbo].[CompetitionTbl] ([CompetitionID], [CompDate], [CompName], [CompDescription], [CompType]) VALUES (1, CAST(0x0000A13C00000000 AS DateTime), N'First', N'First Round', N'Knockout')
INSERT [dbo].[CompetitionTbl] ([CompetitionID], [CompDate], [CompName], [CompDescription], [CompType]) VALUES (2, CAST(0x0000A19500000000 AS DateTime), N'Second', N'SecondRound', N'Knockout')
INSERT [dbo].[CompetitionTbl] ([CompetitionID], [CompDate], [CompName], [CompDescription], [CompType]) VALUES (3, CAST(0x0000A12D00C5C100 AS DateTime), N'Third', N'ThirdRound', N'Knockout')
INSERT [dbo].[CompetitionTbl] ([CompetitionID], [CompDate], [CompName], [CompDescription], [CompType]) VALUES (4, CAST(0x0000A17800000000 AS DateTime), N'Fourth', N'FourthRound', N'Knockout')
INSERT [dbo].[CompetitionTbl] ([CompetitionID], [CompDate], [CompName], [CompDescription], [CompType]) VALUES (6, CAST(0x0000A1B500000000 AS DateTime), N'Final Competition', N'FinalRound', N'Knockout')
SET IDENTITY_INSERT [dbo].[CompetitionTbl] OFF
/****** Object:  Table [dbo].[ClubTempTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClubTempTbl](
	[ClubTempId] [int] NOT NULL,
	[ClubTempName] [nvarchar](50) NOT NULL,
	[ClubTempPitch] [nvarchar](50) NOT NULL,
	[ClubTempSec] [nvarchar](50) NOT NULL,
	[ClubTempTelNo] [int] NOT NULL,
	[ClubTempEmail] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClubTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClubTbl](
	[ClubID] [int] IDENTITY(1,1) NOT NULL,
	[ClubName] [varchar](50) NOT NULL,
	[ClubPitch] [varchar](50) NOT NULL,
	[ClubSec] [varchar](50) NOT NULL,
	[TelNo] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClubTbl] PRIMARY KEY CLUSTERED 
(
	[ClubID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ClubTbl] ON
INSERT [dbo].[ClubTbl] ([ClubID], [ClubName], [ClubPitch], [ClubSec], [TelNo], [Email]) VALUES (1, N'Blue', N'Sligo', N'Mr Joe Blogg', 861234567, N'Mar 15 2013 10:02PM')
INSERT [dbo].[ClubTbl] ([ClubID], [ClubName], [ClubPitch], [ClubSec], [TelNo], [Email]) VALUES (2, N'Red', N'IT Sligo', N'Mrs Jane Doe', 74987654, N'jdoe@gmail.com')
INSERT [dbo].[ClubTbl] ([ClubID], [ClubName], [ClubPitch], [ClubSec], [TelNo], [Email]) VALUES (6, N'Yellow', N'Mayo', N'Mr Jan Dole', 879876543, N'jdole@google.com')
INSERT [dbo].[ClubTbl] ([ClubID], [ClubName], [ClubPitch], [ClubSec], [TelNo], [Email]) VALUES (7, N'Green', N'Grange Sligo', N'Mr Mike Jordan', 793654789, N'mjords@hotmail.com')
INSERT [dbo].[ClubTbl] ([ClubID], [ClubName], [ClubPitch], [ClubSec], [TelNo], [Email]) VALUES (8, N'Orange', N'Buncrana', N'Mr Ivan Ivanson', 87875729, N'ivan@gmail.com')
INSERT [dbo].[ClubTbl] ([ClubID], [ClubName], [ClubPitch], [ClubSec], [TelNo], [Email]) VALUES (9, N'', N'', N'', 0, N'')
SET IDENTITY_INSERT [dbo].[ClubTbl] OFF
/****** Object:  Table [dbo].[ForumTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForumTbl](
	[ForumID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[ArticleID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[UserEmail] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Indent] [int] NULL,
	[DateAdded] [datetime] NULL,
	[UserProfile] [nvarchar](50) NULL,
	[CommentType] [tinyint] NULL,
 CONSTRAINT [PK_ForumTbl] PRIMARY KEY CLUSTERED 
(
	[ForumID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ForumTbl] ON
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (1, 1, 1, N'test', N'test', N'test', N'test', 0, NULL, NULL, 4)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (2, 1, 1, N'Re: test', N'testing2', N'testing2', N'testing2', 1, NULL, NULL, 4)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (3, 1, 1, N'Re: test', N'mariio', N'supermario@gmail.com', N'hello testing 1', 1, NULL, NULL, 4)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (4, 1, 1, N'Re: test', N'test3333', N'tes33333', N'test333', 1, NULL, NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (12, 0, 1, N'Jerseys', N'Tom Johnson', N'tj@gmail.com', N'Whose washing the jerseys this week then?', 0, CAST(0x0000A19500C92304 AS DateTime), NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (13, 0, 1, N'Enniscrone / Kilglass', N'Jimmy Thompson', N'jt@gmail.com', N'anyone know what time training is on at tonight?', 0, CAST(0x0000A19500EAEDCC AS DateTime), NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (14, 0, 1, N'Sligo GAA', N'Jimmy Thompson', N'jt@gmail.com', N'Just Posting about the away match.', 0, CAST(0x0000A1B300E7A464 AS DateTime), NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (24, 0, 1, N'New Member', N'qwert1', N'nm@nm.com', N'Hi There, new member here.', 0, CAST(0x0000A20F01599C90 AS DateTime), NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (26, 0, 1, N'GAA', N'', N'unreal@GAA.com', N'GAA is just unreal.', 0, CAST(0x0000A20F016C6F50 AS DateTime), NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (27, 0, 1, N'Match', N'qwert1', N'hh@ddsg.com', N'whos goin to the match?', 0, CAST(0x0000A24C017D9528 AS DateTime), NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (32, 0, 1, N'Extra Transport', N'', N'jj@sdfsd.com', N'Second bus has been put on.', 0, CAST(0x0000A26B0106A580 AS DateTime), NULL, NULL)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (33, 0, 1, N'Extra Transport', N'qwert1', N'asd@.com', N'Second bus organized.', 0, CAST(0x0000A26B0106E144 AS DateTime), NULL, NULL)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (34, 1, 1, N'Re: test', N'asdfadsf', N'adfdsf', N'asdfasd', 1, NULL, NULL, 4)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (35, 1, 1, N'Re: test', N'SAMPLE', N'SAMPLE', N'HELLO', 1, NULL, NULL, 4)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (36, 1, 1, N'Re: test', N'USER 1', N'user1@gmail.com', N'WELCOME', 1, NULL, NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (49, 1, 1, N'Re: test', N'sdfghk', N'rytughjkl', N'sdghkjl', 1, NULL, NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (50, 1, 1, N'Re: test', N'adfds', N'asdfadsfasd', N'asdfdsfa', 1, NULL, NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (51, 1, 1, N'Re: test', N'asdfa', N'asdfasd', N'safdsd', 1, NULL, NULL, 1)
INSERT [dbo].[ForumTbl] ([ForumID], [ParentID], [ArticleID], [Title], [UserName], [UserEmail], [Description], [Indent], [DateAdded], [UserProfile], [CommentType]) VALUES (52, 1, 1, N'Re: test', N'SAMPLE 4', N'SAMPLE 4', N'SAMPLE 4', 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ForumTbl] OFF
/****** Object:  Table [dbo].[UserTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
	[RegID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[AdminCap] [int] NULL,
 CONSTRAINT [PK_RegistrationTbl] PRIMARY KEY CLUSTERED 
(
	[RegID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserTbl] ON
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (1, N'Joe Bloggss', N'jbloggss', N'jbloggss@gmail.com', N'2AB49D43751CF4D1B581580886790D92', 1)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (2, N'jloyd', N'jloyd', N'jloyd@gmail.com', N'3E67121D15E54909A457D1DD66846A6A', 0)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (3, N'Mary Bloggs', N'MBloggs', N'mbloggs@gmail.com', N'769957EFE9D7753E2C081E0F1CBCCAE7', 3)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (4, N'Michael Jordan', N'HunkyDory', N'hunkydory23@gmail.com', N'123', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (5, N'Michael Jordan', N'HunkyDorys', N'hunkydory23@gmail.coms', N'123', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (6, N' Kobe ', N' Bryant ', N' kb@gmail.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (7, N' Kobe ', N' Bryant ', N' kb@gmail.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (8, N' Kobes ', N' Bryants ', N' kb@gmail.coms ', N' 202CB962AC59075B964B07152D234B70 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (9, N' Kobes ', N' Bryants ', N' kb@gmail.coms ', N' 202CB962AC59075B964B07152D234B70 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (10, N' jordan ', N' jords ', N' mjords@gmail.com ', N' 7815696ECBF1C96E6894B779456D330E ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (11, N' jordan ', N' jords ', N' mjords@gmail.com ', N' 7815696ECBF1C96E6894B779456D330E ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (12, N' Martin Luther ', N' mluth ', N' mluth@yahoo.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (13, N' Martin Luther ', N' mluth ', N' mluth@yahoo.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (14, N' mickey ', N' mouse ', N' mm@gmail.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (15, N' mickey ', N' mouse ', N' mm@gmail.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (16, N' Jord ', N' jgo ', N' jgo@gmail.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (17, N' Jord ', N' jgo ', N' jgo@gmail.com ', N' 900150983CD24FB0D6963F7D28E17F72 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (18, N'  ', N'  ', N'  ', N' D41D8CD98F00B204E9800998ECF8427E ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (19, N'  ', N'  ', N'  ', N' D41D8CD98F00B204E9800998ECF8427E ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (20, N' abc ', N' abc ', N' abc@gmail.com ', N' E99A18C428CB38D5F260853678922E03 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (21, N' abc ', N' abc ', N' abc@gmail.com ', N' E99A18C428CB38D5F260853678922E03 ', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (22, N'user', N'user', N'user@gmail.com', N'abc123', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (23, N'sample', N'sample', N'sample@google.ie', N'sample', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (24, N'sample2', N'sample2', N'sample2@gmail.com', N'656B38F3402A1E8B4211FAC826EFD433', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (25, N'jack sparrow', N'jpat', N'jck@gmail.com', N'E99A18C428CB38D5F260853678922E03', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (26, N'', N'', N'', N'D41D8CD98F00B204E9800998ECF8427E', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (27, N'donald', N'don', N'dduck@gmail.com', N'E99A18C428CB38D5F260853678922E03', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (28, N'', N'', N'', N'D41D8CD98F00B204E9800998ECF8427E', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (29, N'abcd', N'abaka', N'abaka@gmail.com', N'DF539CBB7713474266C6965E9566473A', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (30, N'', N'', N'', N'D41D8CD98F00B204E9800998ECF8427E', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (31, N'abcdd', N'abcdd', N'abcdd@gmail.com', N'E2FC714C4727EE9395F324CD2E7F331F', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (32, N'', N'', N'', N'D41D8CD98F00B204E9800998ECF8427E', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (33, N'abc', N'abc', N'abc@gmail.com', N'E99A18C428CB38D5F260853678922E03', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (34, N'', N'', N'', N'D41D8CD98F00B204E9800998ECF8427E', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (35, N'test1', N'test1', N'test1@gmail.com', N'5A105E8B9D40E1329780D62EA2265D8A', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (36, N'', N'', N'', N'D41D8CD98F00B204E980098ECF8427E', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (37, N'test2', N'test2', N'test2@gmail.com', N'AD0234829205B9033196BA818F7A872B', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (38, N'test3', N'test3', N'test3@gmail.com', N'8AD8757BAA8564DC136C1E07507F4A98', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (39, N'test4', N'test4', N'test4@gmail.com', N'86985E105F79B95D6BC918FB45EC7727', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (40, N'David Beckham', N'dbeck', N'dbeck@gmail.com', N'4D49B55D5B7478EC590C3DAC2A62B102', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (41, N'Karl Colleary', N'Kc123', N'karlcolleary@hotmail.com', N'AC9DE6F3934AEE4BA24A203A2A16BC47', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (42, N'Karl Coll', N'kc12', N'karlcolleary@hotmail.com', N'AC9DE6F3934AEE4BA24A203A2A16BC47', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (43, N'Karl Colleary', N'Kc123', N'', N'D41D8CD98F00B204E9800998ECF8427E', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (44, N'Karl Colleary', N'qwert1', N'kk@gmail.com', N'AC9DE6F3934AEE4BA24A203A2A16BC47', 1)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (45, N'john o brien', N'johnobrien', N'john@email.com', N'527BD5B5D689E2C32AE974C6229FF785', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (46, N'jim', N'jim', N'jim@kkk.com', N'5E027396789A18C37AEDA616E3D7991B', NULL)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (47, N'John', N'John111', N'jj@gg.com', N'96E79218965EB72C92A549DD5A330112', 3)
INSERT [dbo].[UserTbl] ([RegID], [Name], [UserName], [Email], [Password], [AdminCap]) VALUES (48, N'Sample5', N'sample5', N'sample5@gmail.com', N'828974C6C954ABD2ADA226A48C7D6090', 3)
SET IDENTITY_INSERT [dbo].[UserTbl] OFF
/****** Object:  StoredProcedure [dbo].[DeleteHierarchyForum]    Script Date: 03/15/2013 23:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteHierarchyForum]
(
    @Root int,
    @ArticleId int
)
AS
BEGIN

if not exists (select name from [tempdb].[dbo].[sysobjects]
            where name like '#YourLocalTempTable%')
create table #YourLocalTempTable (Id int, ParentId int,ArticleId int,
    Title nVarchar(250),
    username nvarchar(50),UserEmail nvarchar(50),Description nvarchar(2000),
    Indent int,DateAdded datetime,UserProfile nvarchar(100))

    SET NOCOUNT ON
    DECLARE @CID int, @PID int, @Title varchar(250)
    insert into #YourLocalTempTable SELECT ForumTbl.ForumID ,
    ParentId ,ArticleId ,
    Title,username ,UserEmail ,Description ,Indent ,DateAdded ,UserProfile
    from ForumTbl WHERE ForumID = @Root and ArticleId = @ArticleId

    SET @CID = (SELECT MAX(ForumID) FROM ForumTbl  WHERE ParentID = @Root)

    WHILE @CID IS NOT NULL
    BEGIN
        EXEC dbo.DeleteHierarchyForum @CID, @ArticleId
        SET @CID = (SELECT MAX(ForumID) FROM ForumTbl
        WHERE ParentID = @Root AND ForumID < @CID and ArticleId = @ArticleId)
    END
END
GO
/****** Object:  Table [dbo].[TeamTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeamTbl](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[ClubID] [int] NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[TeamMngr] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TeamTbl] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TeamTbl] ON
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (1, 1, N'SeniorBlue', N'John Dole')
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (2, 1, N'JuniorBlue', N'James Bond')
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (3, 2, N'SeniorRed', N'Max Pepsi')
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (4, 2, N'JuniorRed', N'Jim Yeats')
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (6, 6, N'SeniorYellow', N'Peppa Pig')
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (7, 6, N'JuniorYellow', N'Dora Expo')
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (8, 7, N'SeniorGreen', N'Diego Mc Beth')
INSERT [dbo].[TeamTbl] ([TeamID], [ClubID], [TeamName], [TeamMngr]) VALUES (9, 7, N'JuniorGreen', N'Shakespears')
SET IDENTITY_INSERT [dbo].[TeamTbl] OFF
/****** Object:  StoredProcedure [dbo].[ShowHierarchyForum]    Script Date: 03/15/2013 23:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ShowHierarchyForum]
(
    @Root int,
    @ArticleId int
)
AS
BEGIN

if not exists (select name from [tempdb].[dbo].[sysobjects] 
                where name like '#YourLocalTempTable%')
create table #YourLocalTempTable (Id int, ParentId int,ArticleId int, 
                            Title nVarchar(250),
              username nvarchar(50),UserEmail nvarchar(50), 
                    Description nvarchar(2000),Indent int,
              DateAdded datetime,UserProfile nvarchar(100), 
                    CommentType tinyint)


    SET NOCOUNT ON
    DECLARE @CID int, @PID int, @Title varchar(250)

    insert into #YourLocalTempTable SELECT ForumTbl.ForumID , 
                            ParentId ,ArticleId ,
                Title,username ,UserEmail ,Description ,Indent ,
                    DateAdded ,UserProfile, CommentType
                from ForumTbl WHERE ForumID = @Root and ArticleId = 
                                @ArticleId

    SET @CID = (SELECT MAX(ForumID) FROM ForumTbl  WHERE ParentID = @Root)

    WHILE @CID IS NOT NULL
    BEGIN
        EXEC dbo.ShowHierarchyForum @CID, @ArticleId
        SET @CID = (SELECT MAX(ForumID) FROM ForumTbl
                    WHERE ParentID = @Root

        AND ForumID < @CID and ArticleId = @ArticleId)


    END
END

if @@NESTLEVEL =1
select * from #YourLocalTempTable
GO
/****** Object:  Table [dbo].[PlayerTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlayerTbl](
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[ClubID] [int] NOT NULL,
	[PlayerName] [varchar](50) NOT NULL,
	[PlayerDOB] [datetime] NOT NULL,
	[PlayerPosition] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PlayerTbl] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PlayerTbl] ON
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (1, 1, N'Hewlett Packard', CAST(0x0000001700000000 AS DateTime), N'Corner Forward')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (2, 1, N'Dell Asus', CAST(0x0000001500000000 AS DateTime), N'Center Forward')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (3, 1, N'Paul Reynolds', CAST(0x0000001500000000 AS DateTime), N'Center Back')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (5, 2, N'John O''Brien', CAST(0x0000001200000000 AS DateTime), N'Forward')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (6, 2, N'Hazel Faith', CAST(0x0000001100000000 AS DateTime), N'Middle Field')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (7, 2, N'Karl Kolleary', CAST(0x0000001300000000 AS DateTime), N'Goal Keeper')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (8, 3, N'Ronan O''Malley', CAST(0x0000001500000000 AS DateTime), N'Goal Keeper')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (9, 3, N'Sharp Yeats', CAST(0x0000001800000000 AS DateTime), N'Forward')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (10, 3, N'Shane Keagan', CAST(0x0000001700000000 AS DateTime), N'Left Half Back')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (11, 4, N'Steven Lynch', CAST(0x0000001000000000 AS DateTime), N'Right Half Back')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (12, 4, N'Evan O Connor', CAST(0x0000001100000000 AS DateTime), N'Center Half Back')
INSERT [dbo].[PlayerTbl] ([PlayerID], [ClubID], [PlayerName], [PlayerDOB], [PlayerPosition]) VALUES (13, 4, N'Evan Stevens', CAST(0x0000001200000000 AS DateTime), N'Goal Keeper')
SET IDENTITY_INSERT [dbo].[PlayerTbl] OFF
/****** Object:  Table [dbo].[LeagueTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LeagueTbl](
	[LeagueID] [int] NOT NULL,
	[TeamID] [int] NOT NULL,
	[LeagueName] [nvarchar](50) NULL,
	[TeamName] [nvarchar](50) NOT NULL,
	[LeagueType] [varchar](50) NOT NULL,
	[ChoosenTeams] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NOT NULL,
	[PlayedGames] [int] NOT NULL,
	[Won] [int] NOT NULL,
	[Draw] [int] NOT NULL,
	[Lost] [int] NOT NULL,
	[PtsFor] [int] NOT NULL,
	[PtsAgainst] [int] NOT NULL,
	[PtsGoalDiff] [int] NOT NULL,
	[Pts] [int] NOT NULL,
	[RankingPosition] [int] NOT NULL,
 CONSTRAINT [PK_LeagueTbl] PRIMARY KEY CLUSTERED 
(
	[LeagueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LeagueTbl] ([LeagueID], [TeamID], [LeagueName], [TeamName], [LeagueType], [ChoosenTeams], [Date], [Time], [PlayedGames], [Won], [Draw], [Lost], [PtsFor], [PtsAgainst], [PtsGoalDiff], [Pts], [RankingPosition]) VALUES (1, 1, N'FirstLeague', N'SeniorBlue', N'League', N'none', CAST(0x80360B00 AS Date), CAST(0x07001417C6680000 AS Time), 3, 5, 2, 2, 4, 3, 3, 5, 0)
INSERT [dbo].[LeagueTbl] ([LeagueID], [TeamID], [LeagueName], [TeamName], [LeagueType], [ChoosenTeams], [Date], [Time], [PlayedGames], [Won], [Draw], [Lost], [PtsFor], [PtsAgainst], [PtsGoalDiff], [Pts], [RankingPosition]) VALUES (3, 2, N'ThirdLeague', N'SeniorRed', N'League', N'none', CAST(0x80360B00 AS Date), CAST(0x07001417C6680000 AS Time), 2, 3, 4, 5, 3, 2, 2, 3, 0)
INSERT [dbo].[LeagueTbl] ([LeagueID], [TeamID], [LeagueName], [TeamName], [LeagueType], [ChoosenTeams], [Date], [Time], [PlayedGames], [Won], [Draw], [Lost], [PtsFor], [PtsAgainst], [PtsGoalDiff], [Pts], [RankingPosition]) VALUES (4, 1, N'FourthLeague', N'SeniorYellow', N'League', N'none', CAST(0xB4360B00 AS Date), CAST(0x07004C64EB810000 AS Time), 4, 2, 2, 4, 5, 2, 2, 4, 0)
/****** Object:  Table [dbo].[TeamCompetitionTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeamCompetitionTbl](
	[TeamID] [int] NOT NULL,
	[CompetitionID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TeamCompetitionTbl_1] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[insertLeague]    Script Date: 03/15/2013 23:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertLeague]
(
	@rnkPostion int,
	@tmNme nvarchar(50),
	@plydGmes int,
	@won int,
	@draw int,
	@lost int,
	@pts int
)
as
begin
select distinct lg.RankingPosition, lg.TeamName, PlayedGames, Won, Draw, Lost, Pts
from dbo.LeagueTbl as lg 
	inner join dbo.TeamTbl as tm 
on lg.TeamID = tm.TeamID

insert into dbo.LeagueTbl(RankingPosition, TeamName, PlayedGames, Won, Draw, Lost, Pts)
values (@rnkPostion, @tmNme, @plydGmes, @won,@draw,@lost,@pts)
end
GO
/****** Object:  Table [dbo].[FixturesMatchesTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixturesMatchesTbl](
	[FixtureID] [int] IDENTITY(1,1) NOT NULL,
	[CompetitionID] [int] NOT NULL,
	[LeagueID] [int] NOT NULL,
	[Team1ID] [varchar](50) NOT NULL,
	[Team2ID] [varchar](50) NOT NULL,
	[Location] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Time] [datetime] NULL,
	[ScoreTeam1] [tinyint] NULL,
	[ScoreTeam2] [tinyint] NULL,
	[Goal1] [tinyint] NULL,
	[Goal2] [tinyint] NULL,
	[Points1] [tinyint] NULL,
	[Points2] [tinyint] NULL,
 CONSTRAINT [PK_FixturesMatchesTbl] PRIMARY KEY CLUSTERED 
(
	[FixtureID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FixturesMatchesTbl] ON
INSERT [dbo].[FixturesMatchesTbl] ([FixtureID], [CompetitionID], [LeagueID], [Team1ID], [Team2ID], [Location], [Date], [Time], [ScoreTeam1], [ScoreTeam2], [Goal1], [Goal2], [Points1], [Points2]) VALUES (6, 4, 1, N'3', N'4', NULL, CAST(0x0000A19900000000 AS DateTime), NULL, 4, 2, 3, 4, 4, 1)
INSERT [dbo].[FixturesMatchesTbl] ([FixtureID], [CompetitionID], [LeagueID], [Team1ID], [Team2ID], [Location], [Date], [Time], [ScoreTeam1], [ScoreTeam2], [Goal1], [Goal2], [Points1], [Points2]) VALUES (9, 2, 1, N'2', N'7', NULL, CAST(0x0000A18F00000000 AS DateTime), NULL, 1, 3, 3, 5, 4, 12)
INSERT [dbo].[FixturesMatchesTbl] ([FixtureID], [CompetitionID], [LeagueID], [Team1ID], [Team2ID], [Location], [Date], [Time], [ScoreTeam1], [ScoreTeam2], [Goal1], [Goal2], [Points1], [Points2]) VALUES (11, 1, 1, N'7', N'4', N'St.MArys', CAST(0x0000A18800000000 AS DateTime), NULL, 1, 2, 2, 4, 3, 6)
INSERT [dbo].[FixturesMatchesTbl] ([FixtureID], [CompetitionID], [LeagueID], [Team1ID], [Team2ID], [Location], [Date], [Time], [ScoreTeam1], [ScoreTeam2], [Goal1], [Goal2], [Points1], [Points2]) VALUES (21, 4, 3, N'2', N'2', N'Sligo IT', CAST(0x0000A16300000000 AS DateTime), NULL, 3, 5, 2, 4, 2, 4)
INSERT [dbo].[FixturesMatchesTbl] ([FixtureID], [CompetitionID], [LeagueID], [Team1ID], [Team2ID], [Location], [Date], [Time], [ScoreTeam1], [ScoreTeam2], [Goal1], [Goal2], [Points1], [Points2]) VALUES (22, 2, 3, N'5', N'3', NULL, CAST(0x0000A14700000000 AS DateTime), NULL, 5, 3, 6, 7, 8, 9)
INSERT [dbo].[FixturesMatchesTbl] ([FixtureID], [CompetitionID], [LeagueID], [Team1ID], [Team2ID], [Location], [Date], [Time], [ScoreTeam1], [ScoreTeam2], [Goal1], [Goal2], [Points1], [Points2]) VALUES (23, 3, 3, N'3', N'3', N'', CAST(0x0000A17600000000 AS DateTime), NULL, 3, 7, 4, 8, 4, 8)
SET IDENTITY_INSERT [dbo].[FixturesMatchesTbl] OFF
/****** Object:  Table [dbo].[LeagueCompetitionTbl]    Script Date: 03/15/2013 23:12:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeagueCompetitionTbl](
	[LeagueID] [int] NOT NULL,
	[CompetitionID] [int] NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Time] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[insertTeam]    Script Date: 03/15/2013 23:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertTeam]
as
  INSERT INTO [dbo].[FixturesMatchesTbl] ( [FixtureID], [CompetitionID], [LeagueID],[Team1ID],[ScoreTeam1],[Points1],[Team2ID],[ScoreTeam2],[Points2],[Time],[Date],[Location] )
    VALUES ( 1, 2, 3, 4, 3, 10, 7, 0, 8, NULL, NULL , 'Enniscrone Gaelic Pitch')
GO
/****** Object:  ForeignKey [FK_FixturesMatchesTbl_LeagueTbl]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[FixturesMatchesTbl]  WITH CHECK ADD  CONSTRAINT [FK_FixturesMatchesTbl_LeagueTbl] FOREIGN KEY([LeagueID])
REFERENCES [dbo].[LeagueTbl] ([LeagueID])
GO
ALTER TABLE [dbo].[FixturesMatchesTbl] CHECK CONSTRAINT [FK_FixturesMatchesTbl_LeagueTbl]
GO
/****** Object:  ForeignKey [FK_LeagueCompetitionTbl_CompetitionTbl]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[LeagueCompetitionTbl]  WITH CHECK ADD  CONSTRAINT [FK_LeagueCompetitionTbl_CompetitionTbl] FOREIGN KEY([CompetitionID])
REFERENCES [dbo].[CompetitionTbl] ([CompetitionID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeagueCompetitionTbl] CHECK CONSTRAINT [FK_LeagueCompetitionTbl_CompetitionTbl]
GO
/****** Object:  ForeignKey [FK_LeagueCompetitionTbl_LeagueTbl]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[LeagueCompetitionTbl]  WITH CHECK ADD  CONSTRAINT [FK_LeagueCompetitionTbl_LeagueTbl] FOREIGN KEY([LeagueID])
REFERENCES [dbo].[LeagueTbl] ([LeagueID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LeagueCompetitionTbl] CHECK CONSTRAINT [FK_LeagueCompetitionTbl_LeagueTbl]
GO
/****** Object:  ForeignKey [FK_LeagueTbl_TeamTbl1]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[LeagueTbl]  WITH CHECK ADD  CONSTRAINT [FK_LeagueTbl_TeamTbl1] FOREIGN KEY([TeamID])
REFERENCES [dbo].[TeamTbl] ([TeamID])
GO
ALTER TABLE [dbo].[LeagueTbl] CHECK CONSTRAINT [FK_LeagueTbl_TeamTbl1]
GO
/****** Object:  ForeignKey [FK_PlayerTbl_TeamTbl]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[PlayerTbl]  WITH CHECK ADD  CONSTRAINT [FK_PlayerTbl_TeamTbl] FOREIGN KEY([ClubID])
REFERENCES [dbo].[TeamTbl] ([TeamID])
GO
ALTER TABLE [dbo].[PlayerTbl] CHECK CONSTRAINT [FK_PlayerTbl_TeamTbl]
GO
/****** Object:  ForeignKey [FK_TeamCompetitionTbl_CompetitionTbl]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[TeamCompetitionTbl]  WITH CHECK ADD  CONSTRAINT [FK_TeamCompetitionTbl_CompetitionTbl] FOREIGN KEY([CompetitionID])
REFERENCES [dbo].[CompetitionTbl] ([CompetitionID])
GO
ALTER TABLE [dbo].[TeamCompetitionTbl] CHECK CONSTRAINT [FK_TeamCompetitionTbl_CompetitionTbl]
GO
/****** Object:  ForeignKey [FK_TeamCompetitionTbl_TeamTbl1]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[TeamCompetitionTbl]  WITH CHECK ADD  CONSTRAINT [FK_TeamCompetitionTbl_TeamTbl1] FOREIGN KEY([TeamID])
REFERENCES [dbo].[TeamTbl] ([TeamID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamCompetitionTbl] CHECK CONSTRAINT [FK_TeamCompetitionTbl_TeamTbl1]
GO
/****** Object:  ForeignKey [FK_TeamTbl_ClubTbl]    Script Date: 03/15/2013 23:12:34 ******/
ALTER TABLE [dbo].[TeamTbl]  WITH CHECK ADD  CONSTRAINT [FK_TeamTbl_ClubTbl] FOREIGN KEY([ClubID])
REFERENCES [dbo].[ClubTbl] ([ClubID])
GO
ALTER TABLE [dbo].[TeamTbl] CHECK CONSTRAINT [FK_TeamTbl_ClubTbl]
GO
