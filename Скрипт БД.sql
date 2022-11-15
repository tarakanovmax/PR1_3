USE [19ip121]
GO

/****** Object:  Table [dbo].[Вид_товара]    Script Date: 15.11.2022 15:04:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Вид_товара](
	[Код_вид_товара] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Вид_товара] PRIMARY KEY CLUSTERED 
(
	[Код_вид_товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Доставка](
	[Код_доставки] [int] IDENTITY(1,1) NOT NULL,
	[Код_заказа] [int] NOT NULL,
	[Дата] [date] NOT NULL,
	[Адрес] [nvarchar](50) NOT NULL,
	[Стоимость] [money] NOT NULL,
 CONSTRAINT [PK_Доставка] PRIMARY KEY CLUSTERED 
(
	[Код_доставки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Доставка]  WITH CHECK ADD  CONSTRAINT [FK_Доставка_Заказ] FOREIGN KEY([Код_заказа])
REFERENCES [dbo].[Заказ] ([Код_заказа])
GO

ALTER TABLE [dbo].[Доставка] CHECK CONSTRAINT [FK_Доставка_Заказ]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Заказ](
	[Код_заказа] [int] IDENTITY(1,1) NOT NULL,
	[Код_заказчик] [int] NOT NULL,
	[Код_оплаты] [int] NOT NULL,
	[Дата_начала] [date] NOT NULL,
	[Дата_окончания] [date] NOT NULL,
	[Дата_исполнения] [date] NOT NULL,
 CONSTRAINT [PK_Заказ] PRIMARY KEY CLUSTERED 
(
	[Код_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Заказчик] FOREIGN KEY([Код_заказчик])
REFERENCES [dbo].[Заказчик] ([Код_заказчика])
GO

ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Заказчик]
GO

ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Оплата] FOREIGN KEY([Код_оплаты])
REFERENCES [dbo].[Оплата] ([Код_оплаты])
GO

ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Оплата]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Заказчик](
	[Код_заказчика] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
	[Адрес] [nvarchar](50) NOT NULL,
	[Телефон] [int] NOT NULL,
	[Контакное_лицо] [nvarchar](50) NOT NULL,
	[Реквизиты] [int] NOT NULL,
 CONSTRAINT [PK_Заказчик] PRIMARY KEY CLUSTERED 
(
	[Код_заказчика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Оплата](
	[Код_оплаты] [int] IDENTITY(1,1) NOT NULL,
	[Вид_оплаты] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Оплата] PRIMARY KEY CLUSTERED 
(
	[Код_оплаты] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Партии](
	[Код_партии] [int] IDENTITY(1,1) NOT NULL,
	[Код_ТНЗ] [int] NOT NULL,
	[Количество] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Партии] PRIMARY KEY CLUSTERED 
(
	[Код_партии] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Партии]  WITH CHECK ADD  CONSTRAINT [FK_Партии_Товары на заказ] FOREIGN KEY([Код_ТНЗ])
REFERENCES [dbo].[Товары на заказ] ([Код_ТНЗ])
GO

ALTER TABLE [dbo].[Партии] CHECK CONSTRAINT [FK_Партии_Товары на заказ]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Состав_Накладной](
	[Код товара] [int] NOT NULL,
	[Код ТН] [int] NOT NULL,
	[Количество] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Состав_Накладной] PRIMARY KEY CLUSTERED 
(
	[Код товара] ASC,
	[Код ТН] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Состав_Накладной]  WITH CHECK ADD  CONSTRAINT [FK_Состав_Накладной_Товар] FOREIGN KEY([Код товара])
REFERENCES [dbo].[Товар] ([Код_товара])
GO

ALTER TABLE [dbo].[Состав_Накладной] CHECK CONSTRAINT [FK_Состав_Накладной_Товар]
GO

ALTER TABLE [dbo].[Состав_Накладной]  WITH CHECK ADD  CONSTRAINT [FK_Состав_Накладной_Товарная накладная] FOREIGN KEY([Код ТН])
REFERENCES [dbo].[Товарная накладная] ([Код_ТН])
GO

ALTER TABLE [dbo].[Состав_Накладной] CHECK CONSTRAINT [FK_Состав_Накладной_Товарная накладная]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Товар](
	[Код_товара] [int] IDENTITY(1,1) NOT NULL,
	[Код_вида_товара] [int] NOT NULL,
	[Наименование] [nvarchar](50) NOT NULL,
	[Описание] [nvarchar](50) NOT NULL,
	[Срок_годности] [nvarchar](50) NOT NULL,
	[Цена] [money] NOT NULL,
 CONSTRAINT [PK_Товар] PRIMARY KEY CLUSTERED 
(
	[Код_товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Товар]  WITH CHECK ADD  CONSTRAINT [FK_Товар_Вид_товара] FOREIGN KEY([Код_вида_товара])
REFERENCES [dbo].[Вид_товара] ([Код_вид_товара])
GO

ALTER TABLE [dbo].[Товар] CHECK CONSTRAINT [FK_Товар_Вид_товара]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Товарная накладная](
	[Код_ТН] [int] IDENTITY(1,1) NOT NULL,
	[Код_доставки] [int] NOT NULL,
 CONSTRAINT [PK_Товарная накладная] PRIMARY KEY CLUSTERED 
(
	[Код_ТН] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Товарная накладная]  WITH CHECK ADD  CONSTRAINT [FK_Товарная накладная_Доставка] FOREIGN KEY([Код_доставки])
REFERENCES [dbo].[Доставка] ([Код_доставки])
GO

ALTER TABLE [dbo].[Товарная накладная] CHECK CONSTRAINT [FK_Товарная накладная_Доставка]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Товары на заказ](
	[Код_ТНЗ] [int] IDENTITY(1,1) NOT NULL,
	[Код_товара] [int] NOT NULL,
	[Код_заказа] [int] NOT NULL,
 CONSTRAINT [PK_Товары на заказ] PRIMARY KEY CLUSTERED 
(
	[Код_ТНЗ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Товары на заказ]  WITH CHECK ADD  CONSTRAINT [FK_Товары на заказ_Заказ] FOREIGN KEY([Код_заказа])
REFERENCES [dbo].[Заказ] ([Код_заказа])
GO

ALTER TABLE [dbo].[Товары на заказ] CHECK CONSTRAINT [FK_Товары на заказ_Заказ]
GO

ALTER TABLE [dbo].[Товары на заказ]  WITH CHECK ADD  CONSTRAINT [FK_Товары на заказ_Товар] FOREIGN KEY([Код_товара])
REFERENCES [dbo].[Товар] ([Код_товара])
GO

ALTER TABLE [dbo].[Товары на заказ] CHECK CONSTRAINT [FK_Товары на заказ_Товар]
GO