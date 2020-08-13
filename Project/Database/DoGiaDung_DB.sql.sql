/*
Created		12/09/2019
Modified		27/09/2019
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/
drop database DoGiaDung
go
create database DoGiaDung
go 
use DoGiaDung
go
Create table [Accounts]
(
	[username] Varchar(50) NOT NULL,
	[password] Varchar(50) NOT NULL,
	[fullname] Nvarchar(255) NOT NULL,
	[gender] Nvarchar(5) NOT NULL,
	[date_create] Datetime NOT NULL,
	[phonenumber] Numeric(10,0) NOT NULL,
	[email] Varchar(255) NULL,
	[address] Nvarchar(255) NOT NULL,
	[role] Nvarchar(255) NOT NULL,
Primary Key ([username])
) 
go

Create table [categories]
(
	[category_id] Integer NOT NULL IDENTITY(1,1),
	[category_name] Nvarchar(200) NOT NULL,
Primary Key ([category_id])
) 
go

Create table [products]
(
	[product_id] Varchar(255) NOT NULL,
	[category_id] Integer NOT NULL,
	[product_image] Nvarchar(255) NOT NULL,
	[product_name] Nvarchar(255) NOT NULL,
	[producer_name] Nvarchar(255) NULL,
	[description] ntext NULL,
	[cost] Money NOT NULL,
	[state] Nvarchar(150) NOT NULL,
Primary Key ([product_id])
) 
go

Create table [Orders]
(
	[order_id] Varchar(255) NOT NULL,
	[fullName] Nvarchar(255) NOT NULL,
	[order_create] Datetime NOT NULL,
	[phoneNumber] Char(12) NOT NULL,
	[address] Nvarchar(255) NOT NULL,
	[money_sum] Money NOT NULL,
Primary Key ([order_id])
) 
go

Create table [Order_details]
(
	[quantity] Integer NOT NULL,
	[order_id] Varchar(255) NOT NULL,
	[product_id] Varchar(255) NOT NULL,
	[cost] Money NOT NULL
) 
go


Alter table [products] add  foreign key([category_id]) references [categories] ([category_id])  on update no action on delete no action 
go
Alter table [Order_details] add  foreign key([product_id]) references [products] ([product_id])  on update no action on delete no action 
go
Alter table [Order_details] add  foreign key([order_id]) references [Orders] ([order_id])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go
INSERT [dbo].[categories] ( [category_name]) VALUES ( N'Dụng cụ nấu ăn')
INSERT [dbo].[categories] ( [category_name]) VALUES ( N'Thiết Bị Điện Gia Dụng')
INSERT [dbo].[categories] ( [category_name]) VALUES ( N'Phụ  Kiện Nhà Bếp')
INSERT [dbo].[categories] ( [category_name]) VALUES ( N'Phụ Kiện Phòng Tắm')
INSERT [dbo].[categories] ( [category_name]) VALUES ( N'Đồ Dùng Sinh Hoạt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N' PWGKA-1700', 2, N'Bếp nướng PN WIDE GRILL PAN (RED).jpg', N'Bếp nướng PN WIDE GRILL PAN (RED)', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 2524500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'1208-Xanh', 2, N'Bàn ủi không dây 01.jpg', N'Bàn ủi không dây 01', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 825350.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'14192-309A', 2, N'Cân điện tử.jpg', N'Cân điện tử', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 586500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'40044', 3, N'Khay làm đá POLYGON ICE CUBE.jpg', N'Khay làm đá POLYGON ICE CUBE', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 28050.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'535', 2, N'Thùng rác inox cảm ứng thông minh 01.jpg', N'Thùng rác inox cảm ứng thông minh 01', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 748850.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'621', 2, N'Máy vắt cam.jpg', N'Máy vắt cam', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 522500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'6711', 2, N'Thùng rác cảm ứng thông minh 02.jpg', N'Thùng rác cảm ứng thông minh 02', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 526150.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'90007', 4, N'Dép đi nhà tắm 04.jpg', N'Dép đi nhà tắm 04', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 80750.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'90008', 4, N'Dép đi nhà tắm 05.jpg', N'Dép đi nhà tắm 05', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 75650.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'ATL 01', 4, N'Áo choàng tắm xén lông màu trắng size S,M.jpg', N'Áo choàng tắm xén lông màu trắng size S,M', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 926500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'BCI-05T', 1, N'Kẹp inox BUKCAL CANDLE Black.jpg', N'Kẹp inox BUKCAL CANDLE Black', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 144500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'BNPT(G)-24C', 1, N'Nồi nhôm BLISS NORDIC GREEN 24cm.jpg', N'Nồi nhôm BLISS NORDIC GREEN 24cm', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 1394000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'C2-KLDM 01', 3, N'Combo 2 khăn lau đa năng micro 2 bề mặt.jpg', N'Combo 2 khăn lau đa năng micro 2 bề mặt 35*35*45grs', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 50510.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'C3-KLDM 02', 3, N'Combo 3 khăn lau đa năng micro.jpg', N'Combo 3 khăn lau đa năng micro 35*35*39grs', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 58650.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'C4-KLT 01', 3, N'Combo 4 khăn lau tổ ong.jpg', N'Combo 4 khăn lau tổ ong 25*25', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 101915.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'C6-PM 01', 3, N'Combo 6 Pate mate.jpg', N'Combo 6 Pate mate 1200 30*45', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 347650.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'HBKA-600', 2, N'Máy xay đa năng cầm tay PN.jpg', N'Máy xay đa năng cầm tay PN', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 748000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'HCWP-34', 1, N'Nồi nhôm đa năng đáy từ GRAVITY CASTING WOK (IH) 34cm.jpg', N'Nồi nhôm đa năng đáy từ GRAVITY CASTING WOK (IH) 34cm', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 1683000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'K-610', 1, N'Dao gọt hoa quả.jpg', N'Dao gọt hoa quả', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 45900.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'LCPT-18C(IH)', 1, N'Nồi inox 1 lớp, đáy từ LUCE (IH) 18cm.jpg', N'Nồi inox 1 lớp, đáy từ LUCE (IH) 18cm', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 918000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'MTHDP-28', 1, N'Chảo sâu lòng, đáy từ Mega Titanium (IH) 28cm.jpg', N'Chảo sâu lòng, đáy từ Mega Titanium (IH) 28cm', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 637500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'OMPKA-800(B)', 2, N'Nồi cơm điện áp suất đa năng ONEPOT màu đen.jpg', N'Nồi cơm điện áp suất đa năng ONEPOT màu đen', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 3067650.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'PGFKA(B)-50C', 2, N'Bếp nướng PN PARTY GRILL PAN (BLUE).jpg', N'Bếp nướng PN PARTY GRILL PAN (BLUE)', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 1844500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'PSGP-30S(IH)', 1, N'Chảo nướng chống dính đáy từ Steam Grill.jpg', N'Chảo nướng chống dính đáy từ Steam Grill', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 1453500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'RB-C01', 3, N'Miếng rửa bát hình hoa.jpg', N'Miếng rửa bát hình hoa', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 34000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'RB-LC03', 3, N'Túi giặt hình tròn D45.jpg', N'Túi giặt hình tròn D45', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km..', 50150.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SD-100', 1, N'Kéo SCISSORS FOR PORK BELLY.jpg', N'Kéo SCISSORS FOR PORK BELLY', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 103700.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SD-109', 1, N'Kéo COLOR SCISSORS.jpg', N'Kéo COLOR SCISSORS', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 154700.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SHBKA-2000(B)', 2, N'Máy xay sinh tố tốc độ cao PN (màu đen).jpg', N'Máy xay sinh tố tốc độ cao PN (màu đen)', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 2482000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SHBKA-2000®', 2, N'Máy xay sinh tố PN SUPER HIGH SPEED BLENDER (RED).jpg', N'Máy xay sinh tố PN SUPER HIGH SPEED BLENDER (RED)', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 2482000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SL050167A', 1, N'Combo 4 thớt chữ nhật kèm hộp đựng.jpg', N'Combo 4 thớt chữ nhật kèm hộp đựng', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km..', 493850.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SL055542A', 1, N'Thớt nhựa hình cá.jpg', N'Thớt nhựa hình cá', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 75650.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SNFFP-26(IH)', 1, N'Chảo nhôm, đáy từ SHARTEN NEW FRINO 26cm.jpg', N'Chảo nhôm, đáy từ SHARTEN NEW FRINO 26cm', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 518500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'SS-003', 4, N'Dép đi nhà tắm 7.jpg', N'Dép đi nhà tắm 7', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 110500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'TDCC 01', 3, N'Tạp dề CC RA23A.jpg', N'Tạp dề CC RA23A +V4 70*75', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 228650.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'U-02', 1, N'Xẻng lật Self Cook Ladle.jpg', N'Xẻng lật Self Cook Ladle', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 68000.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'U-06', 1, N'Dụng cụ đánh trứng Self Cook whisker.jpg', N'Dụng cụ đánh trứng Self Cook whisker', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 110500.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'U-07', 1, N'Xẻng nấu ăn Crown Cook Nylon Turner.jpg', N'Xẻng nấu ăn Crown Cook Nylon Turner', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 82450.0000, N'Tốt')
INSERT [dbo].[products] ([product_id], [category_id], [product_image], [product_name], [producer_name], [description], [cost], [state]) VALUES (N'WPKT-5', 2, N'Ấm WITHUS KETTLE 4.8L.jpg', N'Ấm WITHUS KETTLE 4.8L', N'', N'7 NGÀY ÐỔI / TRẢ
Giao từ Showroom gần địa chỉ đặt hàng nhất!
Giao tiêu chuẩn - Miễn phí
Dự kiến giao trong vòng 3-5 ngày.
Giao hàng miễn phí với đơn hàng trên 500.000đ và duới 10km.', 816000.0000, N'Tốt')
select * from  [categories]

select * from  [products]

