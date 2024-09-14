CREATE DATABASE ShopDb
GO

USE [ShopDb]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[categoryid] [int] IDENTITY(1,1) NOT NULL,
	[categoryname] [nvarchar](15) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[creation_user] [int] NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [int] NULL,
	[delete_user] [int] NULL,
	[delete_date] [datetime] NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[custid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [nvarchar](40) NOT NULL,
	[contactname] [nvarchar](30) NOT NULL,
	[contacttitle] [nvarchar](30) NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[city] [nvarchar](15) NOT NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [nvarchar](10) NULL,
	[country] [nvarchar](15) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
	[fax] [nvarchar](24) NULL,
	[creation_date] [datetime] NOT NULL,
	[creation_user] [int] NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [int] NULL,
	[delete_user] [int] NULL,
	[delete_date] [datetime] NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[empid] [int] IDENTITY(1,1) NOT NULL,
	[lastname] [nvarchar](20) NOT NULL,
	[firstname] [nvarchar](10) NOT NULL,
	[title] [nvarchar](30) NOT NULL,
	[titleofcourtesy] [nvarchar](25) NOT NULL,
	[birthdate] [datetime] NOT NULL,
	[hiredate] [datetime] NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[city] [nvarchar](15) NOT NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [nvarchar](10) NULL,
	[country] [nvarchar](15) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
	[mgrid] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[creation_user] [int] NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [int] NULL,
	[delete_user] [int] NULL,
	[delete_date] [datetime] NULL,
	[deleted] [bit] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[unitprice] [money] NOT NULL,
	[qty] [smallint] NOT NULL,
	[discount] [numeric](4, 3) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC,
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[custid] [int] NULL,
	[empid] [int] NOT NULL,
	[orderdate] [datetime] NOT NULL,
	[requireddate] [datetime] NOT NULL,
	[shippeddate] [datetime] NULL,
	[shipperid] [int] NOT NULL,
	[freight] [money] NOT NULL,
	[shipname] [nvarchar](40) NOT NULL,
	[shipaddress] [nvarchar](60) NOT NULL,
	[shipcity] [nvarchar](15) NOT NULL,
	[shipregion] [nvarchar](15) NULL,
	[shippostalcode] [nvarchar](10) NULL,
	[shipcountry] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[productname] [nvarchar](40) NOT NULL,
	[supplierid] [int] NOT NULL,
	[categoryid] [int] NOT NULL,
	[unitprice] [money] NOT NULL,
	[discontinued] [bit] NOT NULL,
	[creation_date] [datetime] NOT NULL,
	[creation_user] [int] NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [int] NULL,
	[delete_user] [int] NULL,
	[delete_date] [datetime] NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[shipperid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](40) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
	[address] [nvarchar](60) NULL,
	[city] [nvarchar](60) NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [varchar](10) NULL,
	[country] [int] NULL,
	[creation_date] [datetime] NOT NULL,
	[creation_user] [int] NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [int] NULL,
	[delete_user] [int] NULL,
	[delete_date] [int] NULL,
	[deleted] [bit] NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[shipperid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 6/8/2024 10:32:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[supplierid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [nvarchar](40) NOT NULL,
	[contactname] [nvarchar](30) NOT NULL,
	[contacttitle] [nvarchar](30) NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[city] [nvarchar](15) NOT NULL,
	[region] [nvarchar](15) NULL,
	[postalcode] [nvarchar](10) NULL,
	[country] [nvarchar](15) NOT NULL,
	[phone] [nvarchar](24) NOT NULL,
	[fax] [nvarchar](24) NULL,
	[creation_date] [datetime] NOT NULL,
	[creation_user] [int] NOT NULL,
	[modify_date] [datetime] NULL,
	[modify_user] [int] NULL,
	[delete_user] [int] NULL,
	[delete_date] [datetime] NULL,
	[deleted] [bit] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_creation_date]  DEFAULT (getdate()) FOR [creation_date]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_creation_user]  DEFAULT ((1)) FOR [creation_user]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_email]  DEFAULT (N'micompay@micompany.com') FOR [email]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DEFAULT_Customers_creation_date]  DEFAULT (getdate()) FOR [creation_date]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DEFAULT_Customers_creation_user]  DEFAULT ((1)) FOR [creation_user]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DEFAULT_Customers_deleted]  DEFAULT ((1)) FOR [deleted]
GO
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [DEFAULT_Employees_creation_date]  DEFAULT (getdate()) FOR [creation_date]
GO
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [DEFAULT_Employees_creation_user]  DEFAULT ((1)) FOR [creation_user]
GO
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [DEFAULT_Employees_deleted]  DEFAULT ((1)) FOR [deleted]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DFT_OrderDetails_unitprice]  DEFAULT ((0)) FOR [unitprice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DFT_OrderDetails_qty]  DEFAULT ((1)) FOR [qty]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DFT_OrderDetails_discount]  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DFT_Orders_freight]  DEFAULT ((0)) FOR [freight]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DFT_Products_unitprice]  DEFAULT ((0)) FOR [unitprice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DFT_Products_discontinued]  DEFAULT ((0)) FOR [discontinued]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_creation_date]  DEFAULT (getdate()) FOR [creation_date]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_creation_user]  DEFAULT ((1)) FOR [creation_user]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DEFAULT_Shippers_creation_date]  DEFAULT (getdate()) FOR [creation_date]
GO
ALTER TABLE [dbo].[Shippers] ADD  CONSTRAINT [DEFAULT_Shippers_creation_user]  DEFAULT ((1)) FOR [creation_user]
GO
ALTER TABLE [dbo].[Suppliers] ADD  CONSTRAINT [DF_Suppliers_creation_date]  DEFAULT (getdate()) FOR [creation_date]
GO
ALTER TABLE [dbo].[Suppliers] ADD  CONSTRAINT [DF_Suppliers_creation_user]  DEFAULT ((1)) FOR [creation_user]
GO
ALTER TABLE [dbo].[Suppliers] ADD  CONSTRAINT [DF_Suppliers_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([mgrid])
REFERENCES [dbo].[Employees] ([empid])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([orderid])
REFERENCES [Sales].[Orders] ([orderid])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([productid])
REFERENCES [Production].[Products] ([productid])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([custid])
REFERENCES [Sales].[Customers] ([custid])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([empid])
REFERENCES [HR].[Employees] ([empid])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY([shipperid])
REFERENCES [Sales].[Shippers] ([shipperid])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shippers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([categoryid])
REFERENCES [Production].[Categories] ([categoryid])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([supplierid])
REFERENCES [Production].[Suppliers] ([supplierid])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [CHK_birthdate] CHECK  (([birthdate]<=getdate()))
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [CHK_birthdate]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [CHK_discount] CHECK  (([discount]>=(0) AND [discount]<=(1)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CHK_discount]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [CHK_qty] CHECK  (([qty]>(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CHK_qty]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [CHK_unitprice] CHECK  (([unitprice]>=(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CHK_unitprice]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CHK_Products_unitprice] CHECK  (([unitprice]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CHK_Products_unitprice]
GO
