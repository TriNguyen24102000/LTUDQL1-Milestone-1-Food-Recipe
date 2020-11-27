USE [MyFoodRecipe]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 27/11/2020 3:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](100) NULL,
	[CateImage] [varchar](20) NULL,
	[CateDescription] [nvarchar](100) NULL,
	[Cate_createAt] [date] NULL,
	[Cate_updateAt] [date] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 27/11/2020 3:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserID] [varchar](100) NULL,
	[Password] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/11/2020 3:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductImage] [nchar](50) NULL,
	[CateID] [int] NULL,
	[Product_isFavor] [bit] NULL,
	[Product_createAt] [date] NULL,
	[Product_updateAt] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 27/11/2020 3:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[ProductID] [int] NOT NULL,
	[RecipeID] [int] IDENTITY(1,1) NOT NULL,
	[RecipeImage] [varchar](50) NULL,
	[RecipeName] [nvarchar](100) NULL,
	[RecipeDescription] [nvarchar](100) NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[RecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CateID], [CateName], [CateImage], [CateDescription], [Cate_createAt], [Cate_updateAt]) VALUES (1, N'Món Hàn Quốc', N'icon_KFood', N'Các món Hàn Quốc thứ thiệt', CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
INSERT [dbo].[Category] ([CateID], [CateName], [CateImage], [CateDescription], [Cate_createAt], [Cate_updateAt]) VALUES (2, N'Bún', N'icon_noodle', N'Đủ các loại Punz''', CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Login] ([UserID], [Password]) VALUES (N'admin', N'admin')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImage], [CateID], [Product_isFavor], [Product_createAt], [Product_updateAt]) VALUES (1, N'Mì cay', N'micay.jpg                                         ', 1, 1, CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImage], [CateID], [Product_isFavor], [Product_createAt], [Product_updateAt]) VALUES (2, N'Tobokki', N'tobokki.jpg                                       ', 1, 0, CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImage], [CateID], [Product_isFavor], [Product_createAt], [Product_updateAt]) VALUES (3, N'Bún Thái', N'bunthai.jpg                                       ', 2, 1, CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductImage], [CateID], [Product_isFavor], [Product_createAt], [Product_updateAt]) VALUES (4, N'Bún Chả Obama', N'buncha.jpg                                        ', 2, 0, CAST(N'2020-11-26' AS Date), CAST(N'2020-11-26' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipe] ON 

INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (1, 1, N'trungmi.jpg', N'Rửa mì', N'Rửa mì để loại bỏ dầu')
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (1, 2, N'donuocsoup.jpg', N'Bỏ nước soup vào', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (2, 3, N'nanbot.jpg', N'Nặn bột', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (2, 4, N'donuoc.jpg', N'Đổ nước gì đó vào', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (3, 5, N'buntrang.jpg', N'Mua bún', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (3, 6, N'nuocleo.jpg', N'Nấu nước dùng', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (3, 7, N'donuoc_bunthai.jpg', N'Đổ bún và nước soup vào tô', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (4, 8, N'buntrang.jpg', N'Mua bún', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (4, 9, N'chaca.jpg', N'Mua chả', NULL)
INSERT [dbo].[Recipe] ([ProductID], [RecipeID], [RecipeImage], [RecipeName], [RecipeDescription]) VALUES (4, 10, N'leteat.jpg', N'Ăn thoiii', NULL)
SET IDENTITY_INSERT [dbo].[Recipe] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Recipe] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Recipe]
GO
