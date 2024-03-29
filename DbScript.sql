USE [PROJECT_PRJ301_SE1758]
GO
/****** Object:  Table [dbo].[Detail_HE171358]    Script Date: 15/03/2024 5:38:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detail_HE171358](
	[DetailID] [int] NOT NULL,
	[OS] [nvarchar](50) NOT NULL,
	[Screen] [nvarchar](50) NOT NULL,
	[Ram(Gb)] [int] NOT NULL,
	[Camera] [nvarchar](50) NOT NULL,
	[CPU] [nvarchar](50) NOT NULL,
	[GPU] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail_HE171358]    Script Date: 15/03/2024 5:38:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail_HE171358](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_HE171358]    Script Date: 15/03/2024 5:38:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_HE171358](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[OrderDetailID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer_HE171358]    Script Date: 15/03/2024 5:38:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer_HE171358](
	[ProducerID] [int] NOT NULL,
	[ProducerName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_HE171358]    Script Date: 15/03/2024 5:38:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_HE171358](
	[ProductID] [int] NOT NULL,
	[ProducerID] [int] NOT NULL,
	[DetailID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[Img] [nvarchar](500) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Img_red] [nvarchar](500) NULL,
	[Img_blue] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security_HE171358]    Script Date: 15/03/2024 5:38:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security_HE171358](
	[SecID] [nvarchar](50) NOT NULL,
	[UserID] [int] NOT NULL,
	[Ques] [nvarchar](90) NOT NULL,
	[Ans] [nvarchar](90) NOT NULL,
 CONSTRAINT [PK_Security_HE171358_1] PRIMARY KEY CLUSTERED 
(
	[SecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_HE171358]    Script Date: 15/03/2024 5:38:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_HE171358](
	[UserID] [int] NOT NULL,
	[Account] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Roll] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Contact] [int] NULL,
 CONSTRAINT [PK_User_HE171358] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (1, N'Android 12', N'Dynamic AMOLED 2X(2316 x 904 Pixels)

', 12, N'Chính 50 MP & Phụ 12 MP, 10 MP', N'1 nhân 3.18 GHz, 3 nhân 2.7 GHz & 4 nhân 2 GHz', N'Adreno 670')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (2, N'OneUI 5.1.1 / Android 13', N'Dynamic AMOLED 2X
Tần số quét 120 Hz,2176 x 1812', 12, N'Camera trước: 10 MP,Camera ẩn: 4 MP', N'Snapdragon® 8 Gen 2 dành cho Galaxy', N'Qualcomm® Adreno™ 740')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (3, N'Android 12', N'3088 x 1440 (Edge Quad HD+),6.8 inch', 8, N'Độ phân giải 200MP x 12MP x 10MP x 10MP ', N'Snapdragon® 8 Gen 2 Mobile Platform for Galaxy', N'Samsung Galaxy S23 Ultra 8GB/256GB')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (4, N'Android 12', N'Dynamic AMOLED 2X(	3088 x 1440)', 8, N'	12MP (UW)+108MP(W)+12MP(Tele3x)+12MP(Tele10x)', N'2.99GHz, 2.4GHz, 1.7GHz', N'Snapdragon® 8 Gen 1 (4nm)')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (5, N'iOS 17', N'Super Retina XDR
,Độ phân giải 1290 x 2796', 8, N'	Camera TrueDepth 12MP, khẩu độ ƒ/1.9', N'	A17 Pro', N'GPU 6 lõi')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (6, N'iOS 17', N'Super Retina XDR
,Độ phân giải 1290 x 2796', 6, N'	Camera TrueDepth 12MP, khẩu độ ƒ/1.9', N'	A17 Pro', N'GPU 6 lõi')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (7, N'iOS16', N'Màn hình OLED.
Độ phân giải 2796x1290 Pixels', 6, N'HD 720p@30fps
FullHD 1080p@60fps', N'Apple A16 Bionic 6 nhân', N'Apple GPU 5 nhân')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (8, N'iOS16', N'	Super Retina XDR', 6, N'Quay video 4K tối đa 60 fps,HD 1080p tối đa 60 fps', N'A15 Bionic', N'Apple GPU 5 nhân')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (9, N'Coloros 13', N'AMOLED,1080 x 2412 pixels,6.7 inches', 8, N'108 MP x 2 MP x 2 MP', N'Snapdragon 695 5G 8 nhân', N'Adreno 619')
INSERT [dbo].[Detail_HE171358] ([DetailID], [OS], [Screen], [Ram(Gb)], [Camera], [CPU], [GPU]) VALUES (10, N'	MIUI 14 trên nền tảng Android 13', N'AMOLED
Tần số quét lên tới 144Hz', 12, N'Camera chính Leica: Sony IMX707 50MP f/1.9 OIS', N'MediaTek Dimensity 8200-Ultra', N'Mali-G610')
GO
SET IDENTITY_INSERT [dbo].[OrderDetail_HE171358] ON 

INSERT [dbo].[OrderDetail_HE171358] ([OrderDetailID], [Quantity], [Price], [OrderDate]) VALUES (1, 5, 22990000, CAST(N'2023-11-04' AS Date))
INSERT [dbo].[OrderDetail_HE171358] ([OrderDetailID], [Quantity], [Price], [OrderDate]) VALUES (3, 3, 46430000, CAST(N'2023-11-01' AS Date))
INSERT [dbo].[OrderDetail_HE171358] ([OrderDetailID], [Quantity], [Price], [OrderDate]) VALUES (4, 2, 22990000, CAST(N'2023-11-06' AS Date))
INSERT [dbo].[OrderDetail_HE171358] ([OrderDetailID], [Quantity], [Price], [OrderDate]) VALUES (5, 1, 25690000, CAST(N'2023-11-06' AS Date))
SET IDENTITY_INSERT [dbo].[OrderDetail_HE171358] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders_HE171358] ON 

INSERT [dbo].[Orders_HE171358] ([OrderID], [UserID], [ProductID], [Status], [OrderDetailID]) VALUES (32, 4, 5, N'waiting', 1)
INSERT [dbo].[Orders_HE171358] ([OrderID], [UserID], [ProductID], [Status], [OrderDetailID]) VALUES (37, 6, 2, N'Accept', 3)
INSERT [dbo].[Orders_HE171358] ([OrderID], [UserID], [ProductID], [Status], [OrderDetailID]) VALUES (39, 4, 1, N'waiting', 4)
INSERT [dbo].[Orders_HE171358] ([OrderID], [UserID], [ProductID], [Status], [OrderDetailID]) VALUES (40, 4, 6, N'waiting', 5)
SET IDENTITY_INSERT [dbo].[Orders_HE171358] OFF
GO
INSERT [dbo].[Producer_HE171358] ([ProducerID], [ProducerName], [Address]) VALUES (1, N'SamSung', N'Han Quoc')
INSERT [dbo].[Producer_HE171358] ([ProducerID], [ProducerName], [Address]) VALUES (2, N'Apple', N'ko biet')
INSERT [dbo].[Producer_HE171358] ([ProducerID], [ProducerName], [Address]) VALUES (3, N'Xiaomi', N'cung ko biet')
INSERT [dbo].[Producer_HE171358] ([ProducerID], [ProducerName], [Address]) VALUES (4, N'Oppo', N'..')
GO
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (1, 1, 1, 20, CAST(N'2022-10-01' AS Date), N'https://cdn.tgdd.vn/Products/Images/60/286946/op-lung-nap-gap-galaxy-z-fold4-kem-s-pen-samsung-thumb-600x600.jpg', N'Samsung Galaxy Z Fold4 - 512GB', 27990000, N'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-f936bdrdxxv/gallery/vn-galaxy-z-fold4-f936-429943-sm-f936bdrdxxv-534138738?$1300_1038_PNG$', N'https://cdn-v2.didongviet.vn/files/products/2023/7/15/1/1692118020712_1690376150547_samsung_galaxy_z_fold5_didongviet.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (2, 1, 2, 20, CAST(N'2023-07-26' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/07/26/fold-5-chinh-thuc-1.png', N'Samsung Galaxy Z Fold5 12GB/1TB', 46430000, N'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-f936bdrdxxv/gallery/vn-galaxy-z-fold4-f936-429943-sm-f936bdrdxxv-534138738?$1300_1038_PNG$', N'https://cdn-v2.didongviet.vn/files/products/2023/7/15/1/1692118020712_1690376150547_samsung_galaxy_z_fold5_didongviet.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (3, 1, 3, 20, CAST(N'2023-02-17' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/02/02/image-removebg-preview_638109032737367137.png', N'Samsung Galaxy S23', 21290000, N'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-f936bdrdxxv/gallery/vn-galaxy-z-fold4-f936-429943-sm-f936bdrdxxv-534138738?$1300_1038_PNG$', N'https://cdn-v2.didongviet.vn/files/products/2023/7/15/1/1692118020712_1690376150547_samsung_galaxy_z_fold5_didongviet.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (4, 1, 4, 20, CAST(N'2022-02-25' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/02/09/image-removebg-preview-3_637800452287772364.png', N'Samsung Galaxy S22 Ultra', 16590000, N'https://images.samsung.com/is/image/samsung/p6pim/vn/sm-f936bdrdxxv/gallery/vn-galaxy-z-fold4-f936-429943-sm-f936bdrdxxv-534138738?$1300_1038_PNG$', N'https://cdn-v2.didongviet.vn/files/products/2023/7/15/1/1692118020712_1690376150547_samsung_galaxy_z_fold5_didongviet.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (5, 2, 5, 20, CAST(N'2023-09-01' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/09/13/iphone-15-pro-max-natural-titanium-pure-back-iphone-15-pro-max-natural-titanium-pure-front-2up-screen-usen.png', N'iPhone 15 Pro Max', 33850000, N'https://cdn.mos.cms.futurecdn.net/okC6gsz8WaCmyVJQrS79ij.jpg', N'https://cdn.nguyenkimmall.com/images/detailed/891/10056335-dien-thoai-iphone-15-pro-max-256gb-dark-blue-1.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (6, 2, 6, 20, CAST(N'2023-09-01' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/09/13/iphone-15-plus-black-pure-back-iphone-15-plus-black-pure-front-2up-screen-usen.png', N' iPhone 15 Plus', 25690000, N'https://cdn.mos.cms.futurecdn.net/okC6gsz8WaCmyVJQrS79ij.jpg', N'https://cdn.nguyenkimmall.com/images/detailed/891/10056335-dien-thoai-iphone-15-pro-max-256gb-dark-blue-1.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (7, 2, 7, 20, CAST(N'2022-09-07' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/09/08/44444.png', N'iPhone 14 Pro Max', 26190000, N'https://images.squarespace-cdn.com/content/v1/59d2bea58a02c78793a95114/d9f2a524-5bcc-4a97-867e-024ef8a8444f/Apple_iPhone14_LaunchPost2x3_2.png', N'https://cdn.nguyenkimmall.com/images/detailed/891/10056335-dien-thoai-iphone-15-pro-max-256gb-dark-blue-1.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (8, 2, 8, 20, CAST(N'2022-09-07' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/09/08/anh-chup-man-hinh-2022-09-08-luc-01-58-38-removebg-preview.png', N'iPhone 14', 18680000, N'https://images.squarespace-cdn.com/content/v1/59d2bea58a02c78793a95114/d9f2a524-5bcc-4a97-867e-024ef8a8444f/Apple_iPhone14_LaunchPost2x3_2.png', N'https://cdn.nguyenkimmall.com/images/detailed/891/10056335-dien-thoai-iphone-15-pro-max-256gb-dark-blue-1.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (9, 4, 9, 20, CAST(N'2022-07-17' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/08/14/reno8-t-5g-1.png', N'OPPO Reno8 T 5G', 7490000, N'https://images.squarespace-cdn.com/content/v1/59d2bea58a02c78793a95114/d9f2a524-5bcc-4a97-867e-024ef8a8444f/Apple_iPhone14_LaunchPost2x3_2.png', N'https://cdn.nguyenkimmall.com/images/detailed/891/10056335-dien-thoai-iphone-15-pro-max-256gb-dark-blue-1.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (10, 3, 10, 20, CAST(N'2023-09-26' AS Date), N'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/09/20/m12-m12a-black-back.png', N'Xiaomi 13T', 11990000, N'https://images.squarespace-cdn.com/content/v1/59d2bea58a02c78793a95114/d9f2a524-5bcc-4a97-867e-024ef8a8444f/Apple_iPhone14_LaunchPost2x3_2.png', N'https://cdn.nguyenkimmall.com/images/detailed/891/10056335-dien-thoai-iphone-15-pro-max-256gb-dark-blue-1.jpg')
INSERT [dbo].[Product_HE171358] ([ProductID], [ProducerID], [DetailID], [Quantity], [ReleaseDate], [Img], [Name], [Price], [Img_red], [Img_blue]) VALUES (11, 1, 1, 14, CAST(N'2023-10-30' AS Date), N'https://th.bing.com/th/id/OIP.5GGmVwTATTu40gvHCFn8mAHaHa?w=167&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', N'samsung galaxy a14', 11000000, NULL, NULL)
GO
INSERT [dbo].[Security_HE171358] ([SecID], [UserID], [Ques], [Ans]) VALUES (N'1', 4, N'Where are you from', N'Co Loa')
INSERT [dbo].[Security_HE171358] ([SecID], [UserID], [Ques], [Ans]) VALUES (N'2', 6, N'What is you name', N'Tien')
GO
INSERT [dbo].[User_HE171358] ([UserID], [Account], [Password], [Roll], [Name], [Address], [Contact]) VALUES (1, N'Admin1', N'123', 0, NULL, NULL, 123)
INSERT [dbo].[User_HE171358] ([UserID], [Account], [Password], [Roll], [Name], [Address], [Contact]) VALUES (4, N'asd', N'111', 1, N'su', N'donganh', 345)
INSERT [dbo].[User_HE171358] ([UserID], [Account], [Password], [Roll], [Name], [Address], [Contact]) VALUES (6, N'tien', N'123', 1, N'Lê Mạnh Tiến', N'Kim Chung', 123123)
GO
ALTER TABLE [dbo].[Orders_HE171358]  WITH CHECK ADD  CONSTRAINT [FK_Orders_HE171358_OrderDetail] FOREIGN KEY([OrderDetailID])
REFERENCES [dbo].[OrderDetail_HE171358] ([OrderDetailID])
GO
ALTER TABLE [dbo].[Orders_HE171358] CHECK CONSTRAINT [FK_Orders_HE171358_OrderDetail]
GO
ALTER TABLE [dbo].[Orders_HE171358]  WITH CHECK ADD  CONSTRAINT [FK_Orders_HE171358_Product_HE171358] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product_HE171358] ([ProductID])
GO
ALTER TABLE [dbo].[Orders_HE171358] CHECK CONSTRAINT [FK_Orders_HE171358_Product_HE171358]
GO
ALTER TABLE [dbo].[Product_HE171358]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([DetailID])
REFERENCES [dbo].[Detail_HE171358] ([DetailID])
GO
ALTER TABLE [dbo].[Product_HE171358] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product_HE171358]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producer_HE171358] ([ProducerID])
GO
ALTER TABLE [dbo].[Product_HE171358] CHECK CONSTRAINT [FK_Product_Producer]
GO
ALTER TABLE [dbo].[Security_HE171358]  WITH CHECK ADD  CONSTRAINT [FK_Security_HE171358_User_HE171358] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_HE171358] ([UserID])
GO
ALTER TABLE [dbo].[Security_HE171358] CHECK CONSTRAINT [FK_Security_HE171358_User_HE171358]
GO
