USE [19ip121]
GO

/****** Object:  Table [dbo].[���_������]    Script Date: 15.11.2022 15:04:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[���_������](
	[���_���_������] [int] IDENTITY(1,1) NOT NULL,
	[������������] [nchar](10) NOT NULL,
 CONSTRAINT [PK_���_������] PRIMARY KEY CLUSTERED 
(
	[���_���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[��������](
	[���_��������] [int] IDENTITY(1,1) NOT NULL,
	[���_������] [int] NOT NULL,
	[����] [date] NOT NULL,
	[�����] [nvarchar](50) NOT NULL,
	[���������] [money] NOT NULL,
 CONSTRAINT [PK_��������] PRIMARY KEY CLUSTERED 
(
	[���_��������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[��������]  WITH CHECK ADD  CONSTRAINT [FK_��������_�����] FOREIGN KEY([���_������])
REFERENCES [dbo].[�����] ([���_������])
GO

ALTER TABLE [dbo].[��������] CHECK CONSTRAINT [FK_��������_�����]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�����](
	[���_������] [int] IDENTITY(1,1) NOT NULL,
	[���_��������] [int] NOT NULL,
	[���_������] [int] NOT NULL,
	[����_������] [date] NOT NULL,
	[����_���������] [date] NOT NULL,
	[����_����������] [date] NOT NULL,
 CONSTRAINT [PK_�����] PRIMARY KEY CLUSTERED 
(
	[���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [FK_�����_��������] FOREIGN KEY([���_��������])
REFERENCES [dbo].[��������] ([���_���������])
GO

ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [FK_�����_��������]
GO

ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [FK_�����_������] FOREIGN KEY([���_������])
REFERENCES [dbo].[������] ([���_������])
GO

ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [FK_�����_������]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[��������](
	[���_���������] [int] IDENTITY(1,1) NOT NULL,
	[������������] [nvarchar](50) NOT NULL,
	[�����] [nvarchar](50) NOT NULL,
	[�������] [int] NOT NULL,
	[���������_����] [nvarchar](50) NOT NULL,
	[���������] [int] NOT NULL,
 CONSTRAINT [PK_��������] PRIMARY KEY CLUSTERED 
(
	[���_���������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[������](
	[���_������] [int] IDENTITY(1,1) NOT NULL,
	[���_������] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_������] PRIMARY KEY CLUSTERED 
(
	[���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[������](
	[���_������] [int] IDENTITY(1,1) NOT NULL,
	[���_���] [int] NOT NULL,
	[����������] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_������] PRIMARY KEY CLUSTERED 
(
	[���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[������]  WITH CHECK ADD  CONSTRAINT [FK_������_������ �� �����] FOREIGN KEY([���_���])
REFERENCES [dbo].[������ �� �����] ([���_���])
GO

ALTER TABLE [dbo].[������] CHECK CONSTRAINT [FK_������_������ �� �����]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[������_���������](
	[��� ������] [int] NOT NULL,
	[��� ��] [int] NOT NULL,
	[����������] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_������_���������] PRIMARY KEY CLUSTERED 
(
	[��� ������] ASC,
	[��� ��] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[������_���������]  WITH CHECK ADD  CONSTRAINT [FK_������_���������_�����] FOREIGN KEY([��� ������])
REFERENCES [dbo].[�����] ([���_������])
GO

ALTER TABLE [dbo].[������_���������] CHECK CONSTRAINT [FK_������_���������_�����]
GO

ALTER TABLE [dbo].[������_���������]  WITH CHECK ADD  CONSTRAINT [FK_������_���������_�������� ���������] FOREIGN KEY([��� ��])
REFERENCES [dbo].[�������� ���������] ([���_��])
GO

ALTER TABLE [dbo].[������_���������] CHECK CONSTRAINT [FK_������_���������_�������� ���������]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�����](
	[���_������] [int] IDENTITY(1,1) NOT NULL,
	[���_����_������] [int] NOT NULL,
	[������������] [nvarchar](50) NOT NULL,
	[��������] [nvarchar](50) NOT NULL,
	[����_��������] [nvarchar](50) NOT NULL,
	[����] [money] NOT NULL,
 CONSTRAINT [PK_�����] PRIMARY KEY CLUSTERED 
(
	[���_������] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[�����]  WITH CHECK ADD  CONSTRAINT [FK_�����_���_������] FOREIGN KEY([���_����_������])
REFERENCES [dbo].[���_������] ([���_���_������])
GO

ALTER TABLE [dbo].[�����] CHECK CONSTRAINT [FK_�����_���_������]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[�������� ���������](
	[���_��] [int] IDENTITY(1,1) NOT NULL,
	[���_��������] [int] NOT NULL,
 CONSTRAINT [PK_�������� ���������] PRIMARY KEY CLUSTERED 
(
	[���_��] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[�������� ���������]  WITH CHECK ADD  CONSTRAINT [FK_�������� ���������_��������] FOREIGN KEY([���_��������])
REFERENCES [dbo].[��������] ([���_��������])
GO

ALTER TABLE [dbo].[�������� ���������] CHECK CONSTRAINT [FK_�������� ���������_��������]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[������ �� �����](
	[���_���] [int] IDENTITY(1,1) NOT NULL,
	[���_������] [int] NOT NULL,
	[���_������] [int] NOT NULL,
 CONSTRAINT [PK_������ �� �����] PRIMARY KEY CLUSTERED 
(
	[���_���] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[������ �� �����]  WITH CHECK ADD  CONSTRAINT [FK_������ �� �����_�����] FOREIGN KEY([���_������])
REFERENCES [dbo].[�����] ([���_������])
GO

ALTER TABLE [dbo].[������ �� �����] CHECK CONSTRAINT [FK_������ �� �����_�����]
GO

ALTER TABLE [dbo].[������ �� �����]  WITH CHECK ADD  CONSTRAINT [FK_������ �� �����_�����] FOREIGN KEY([���_������])
REFERENCES [dbo].[�����] ([���_������])
GO

ALTER TABLE [dbo].[������ �� �����] CHECK CONSTRAINT [FK_������ �� �����_�����]
GO