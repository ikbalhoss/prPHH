USE [PhhDB]
GO
/****** Object:  Table [dbo].[CustomersPetInformation]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersPetInformation](
	[Id] [uniqueidentifier] NOT NULL,
	[PetName] [nvarchar](max) NOT NULL,
	[PetAge] [nvarchar](max) NULL,
	[PetGender] [nvarchar](max) NULL,
	[PetTypes] [nvarchar](max) NULL,
	[PetHeartWormMedication] [nvarchar](max) NULL,
	[PetFLea] [nvarchar](max) NULL,
	[PetPriorHealthIssues] [nvarchar](max) NULL,
	[YourQuestion] [nvarchar](max) NOT NULL,
	[PetAnyOtherMedication] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomersPetInformation1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomersContactInformation]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersContactInformation](
	[id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Zip] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Createdat] [datetime] NULL,
	[Updatedat] [datetime] NULL,
 CONSTRAINT [PK_CustomersContact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[Id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[subject] [nvarchar](max) NOT NULL,
	[comment] [nvarchar](max) NOT NULL,
	[Createdat] [datetime] NOT NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZendeskTicketCreationResposes]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZendeskTicketCreationResposes](
	[Ticket_Id] [bigint] NOT NULL,
	[Url] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [nvarchar](max) NULL,
	[createdat] [datetime] NULL,
	[updatedat] [datetime] NULL,
 CONSTRAINT [PK_ZendeskTicketCreationResposes] PRIMARY KEY CLUSTERED 
(
	[Ticket_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAdmin]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdmin](
	[id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[salt] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserAdmin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePriceRate]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePriceRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LevelofUrgency] [nvarchar](max) NULL,
	[LevelofDetail] [nvarchar](max) NULL,
	[PriceRate] [money] NOT NULL,
 CONSTRAINT [PK_ServicePriceRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCardType]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCardType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardType] [nvarchar](max) NULL,
 CONSTRAINT [PK_PaymentCardType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCardInformation]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCardInformation](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomerContactInformationId] [uniqueidentifier] NOT NULL,
	[CustomersPetInformationId] [uniqueidentifier] NOT NULL,
	[ZenDeskTicketId] [bigint] NULL,
	[ServicePriceRateId] [int] NOT NULL,
	[PaymentCardTypeId] [int] NULL,
	[CardNumber] [bigint] NOT NULL,
	[CardExpireMonthYear] [nvarchar](max) NOT NULL,
	[Cvv] [int] NOT NULL,
	[Createdat] [datetime] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthorizedTransaction]    Script Date: 02/20/2014 22:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorizedTransaction](
	[Id] [uniqueidentifier] NOT NULL,
	[CustomersContactInformationId] [uniqueidentifier] NULL,
	[CustomersPetInformationId] [uniqueidentifier] NULL,
	[PaymentInformationId] [uniqueidentifier] NULL,
	[ZendeskTicket_Id] [bigint] NULL,
	[ServicePriceRateId] [int] NULL,
	[PaymentAmount] [money] NOT NULL,
	[SubmissionDate] [datetime] NULL,
	[IspaymentAuthorized] [bit] NOT NULL,
	[AuthorizationAmount] [money] NOT NULL,
	[AuthorizationDate] [datetime] NULL,
	[AuthorizationTrasId] [nvarchar](max) NULL,
	[AuthorizationAcctType] [nvarchar](max) NULL,
	[AuthorizationAccountNumber] [nvarchar](max) NULL,
	[AuthorizationCode] [nvarchar](max) NULL,
	[AuthorizationResponseCode] [nvarchar](max) NULL,
	[AuthorizationResponseReasonCode] [nvarchar](max) NULL,
	[AuthorizationResponseReasonText] [nvarchar](max) NULL,
	[AuthorizationAVSCode] [nvarchar](max) NULL,
	[AuthorizationTransactionDescription] [nvarchar](max) NULL,
	[AuthorizationCvvResponseCode] [nvarchar](max) NULL,
	[CustomerIPAddress] [nvarchar](max) NULL,
	[UrlReferer] [nvarchar](max) NULL,
	[Createdat] [datetime] NULL,
 CONSTRAINT [PK_AuthorizedTransaction1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF_AuthorizedTransaction1_IspaymentAuthorized]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[AuthorizedTransaction] ADD  CONSTRAINT [DF_AuthorizedTransaction1_IspaymentAuthorized]  DEFAULT ((0)) FOR [IspaymentAuthorized]
GO
/****** Object:  ForeignKey [FK_AuthorizedTransaction_CustomersContactInformation]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[AuthorizedTransaction]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizedTransaction_CustomersContactInformation] FOREIGN KEY([CustomersContactInformationId])
REFERENCES [dbo].[CustomersContactInformation] ([id])
GO
ALTER TABLE [dbo].[AuthorizedTransaction] CHECK CONSTRAINT [FK_AuthorizedTransaction_CustomersContactInformation]
GO
/****** Object:  ForeignKey [FK_AuthorizedTransaction_CustomersPetInformation]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[AuthorizedTransaction]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizedTransaction_CustomersPetInformation] FOREIGN KEY([PaymentInformationId])
REFERENCES [dbo].[CustomersPetInformation] ([Id])
GO
ALTER TABLE [dbo].[AuthorizedTransaction] CHECK CONSTRAINT [FK_AuthorizedTransaction_CustomersPetInformation]
GO
/****** Object:  ForeignKey [FK_AuthorizedTransaction_PaymentCardInformation]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[AuthorizedTransaction]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizedTransaction_PaymentCardInformation] FOREIGN KEY([PaymentInformationId])
REFERENCES [dbo].[PaymentCardInformation] ([Id])
GO
ALTER TABLE [dbo].[AuthorizedTransaction] CHECK CONSTRAINT [FK_AuthorizedTransaction_PaymentCardInformation]
GO
/****** Object:  ForeignKey [FK_AuthorizedTransaction_ServicePriceRate]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[AuthorizedTransaction]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizedTransaction_ServicePriceRate] FOREIGN KEY([ServicePriceRateId])
REFERENCES [dbo].[ServicePriceRate] ([Id])
GO
ALTER TABLE [dbo].[AuthorizedTransaction] CHECK CONSTRAINT [FK_AuthorizedTransaction_ServicePriceRate]
GO
/****** Object:  ForeignKey [FK_AuthorizedTransaction_ZendeskTicketCreationResposes]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[AuthorizedTransaction]  WITH CHECK ADD  CONSTRAINT [FK_AuthorizedTransaction_ZendeskTicketCreationResposes] FOREIGN KEY([ZendeskTicket_Id])
REFERENCES [dbo].[ZendeskTicketCreationResposes] ([Ticket_Id])
GO
ALTER TABLE [dbo].[AuthorizedTransaction] CHECK CONSTRAINT [FK_AuthorizedTransaction_ZendeskTicketCreationResposes]
GO
/****** Object:  ForeignKey [FK_PaymentCardInformation_CustomersContactInformation]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[PaymentCardInformation]  WITH CHECK ADD  CONSTRAINT [FK_PaymentCardInformation_CustomersContactInformation] FOREIGN KEY([CustomerContactInformationId])
REFERENCES [dbo].[CustomersContactInformation] ([id])
GO
ALTER TABLE [dbo].[PaymentCardInformation] CHECK CONSTRAINT [FK_PaymentCardInformation_CustomersContactInformation]
GO
/****** Object:  ForeignKey [FK_PaymentCardInformation_CustomersPetInformation]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[PaymentCardInformation]  WITH CHECK ADD  CONSTRAINT [FK_PaymentCardInformation_CustomersPetInformation] FOREIGN KEY([CustomersPetInformationId])
REFERENCES [dbo].[CustomersPetInformation] ([Id])
GO
ALTER TABLE [dbo].[PaymentCardInformation] CHECK CONSTRAINT [FK_PaymentCardInformation_CustomersPetInformation]
GO
/****** Object:  ForeignKey [FK_PaymentCardInformation_ServicePriceRate]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[PaymentCardInformation]  WITH CHECK ADD  CONSTRAINT [FK_PaymentCardInformation_ServicePriceRate] FOREIGN KEY([ServicePriceRateId])
REFERENCES [dbo].[ServicePriceRate] ([Id])
GO
ALTER TABLE [dbo].[PaymentCardInformation] CHECK CONSTRAINT [FK_PaymentCardInformation_ServicePriceRate]
GO
/****** Object:  ForeignKey [FK_PaymentCardInformation_ZendeskTicketCreationResposes]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[PaymentCardInformation]  WITH CHECK ADD  CONSTRAINT [FK_PaymentCardInformation_ZendeskTicketCreationResposes] FOREIGN KEY([ZenDeskTicketId])
REFERENCES [dbo].[ZendeskTicketCreationResposes] ([Ticket_Id])
GO
ALTER TABLE [dbo].[PaymentCardInformation] CHECK CONSTRAINT [FK_PaymentCardInformation_ZendeskTicketCreationResposes]
GO
/****** Object:  ForeignKey [FK_PaymentInformation_PaymentCardType]    Script Date: 02/20/2014 22:14:08 ******/
ALTER TABLE [dbo].[PaymentCardInformation]  WITH CHECK ADD  CONSTRAINT [FK_PaymentInformation_PaymentCardType] FOREIGN KEY([PaymentCardTypeId])
REFERENCES [dbo].[PaymentCardType] ([Id])
GO
ALTER TABLE [dbo].[PaymentCardInformation] CHECK CONSTRAINT [FK_PaymentInformation_PaymentCardType]
GO
