Create Database [BlogApi]
go
USE [BlogApi]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4/30/2018 4:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[commentId] [nvarchar](128) NOT NULL,
	[postId] [nvarchar](128) NULL,
	[comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[commentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogIns]    Script Date: 4/30/2018 4:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogIns](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](max) NULL,
	[userPassword] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LogIns] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 4/30/2018 4:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[postId] [nvarchar](128) NOT NULL,
	[postTitle] [nvarchar](max) NULL,
	[postBody] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[postId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'27120', N'2', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'27647', N'96788', N'3')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'32217', N'22439', N'f3333')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'33965', N'25501', N'333')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'36543', N'96788', N'1')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'44159', N'22439', N'froce update 2 ')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'50906', N'22439', N'dddsfds')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'57311', N'96788', N'2')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'64478', N'25501', N'222')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'74162', N'1', N' ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'88134', N'22439', N'force 1')
INSERT [dbo].[Comments] ([commentId], [postId], [comment]) VALUES (N'88186', N'79486', N'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences')
SET IDENTITY_INSERT [dbo].[LogIns] ON 

INSERT [dbo].[LogIns] ([userId], [userName], [userPassword]) VALUES (1, N'ricky', N'123')
INSERT [dbo].[LogIns] ([userId], [userName], [userPassword]) VALUES (2, N'rickyislam', N'555')
SET IDENTITY_INSERT [dbo].[LogIns] OFF
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'1', N'What is Lorem Ipsum?', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'2', N'Where does it come from?', N'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'20001', N'Hello World Post Title | Just Editedddddd | again', N'Hello World Post Body | Just Editedddddd')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'22439', N'through weakness of will, which is the same as saying through', N'pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being ')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'25501', N'25501 - Post Title', N'25501 - Post Body ')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'36182', N'36 ==== just updated post tile || eDITEDDDDD', N'36 ==== just updated post body || eDITEDDDDD')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'56322', N'ok doneee', N'okkk done.....')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'69856', N'hey/// writingh a new psottttt', N'new psotttt')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'79486', N'Where can I get some?', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'94519', N'Finibus Bonorum et Malorum', N'laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.')
INSERT [dbo].[Posts] ([postId], [postTitle], [postBody]) VALUES (N'96788', N'hf', N'fghfgh')
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Posts_postId] FOREIGN KEY([postId])
REFERENCES [dbo].[Posts] ([postId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Posts_postId]
GO
