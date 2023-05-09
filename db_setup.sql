USE [HR_db] 
CREATE TABLE [Department] (
  [id] nvarchar(255) PRIMARY KEY,
  [name] nvarchar(255),
  [manager_id] nvarchar(255)
)
GO

CREATE TABLE [Employee] (
  [id] nvarchar(255) PRIMARY KEY,
  [name] nvarchar(255),
  [department_id] nvarchar(255),
  [office_id] nvarchar(255),
  [title] nvarchar(255),
  [date_of_birth] date,
  [manager_id] nvarchar(255),
  [bank_account] int
)
GO

CREATE TABLE [Employee_info] (
  [id] nvarchar(255) PRIMARY KEY,
  [employee_id] nvarchar(255),
  [gender] nvarchar(255),
  [email] nvarchar(255),
  [phone_number] int,
  [identity_card] int,
  [identity_card_issued_date] date,
  [identity_card_issued_place] date,
  [address_1] nvarchar(255),
  [address_2] nvarchar(255)
)
GO

CREATE TABLE [Insurance] (
  [id] nvarchar(255) PRIMARY KEY,
  [employment_id] nvarchar(255),
  [type] nvarchar(255),
  [start_date] nvarchar(255),
  [end_date] nvarchar(255)
)
GO

CREATE TABLE [Employment] (
  [id] nvarchar(255) PRIMARY KEY,
  [employee_id] nvarchar(255),
  [on_board_date] date,
  [end_of_probation_date] date,
  [employment_type] nvarchar(255),
  [note] nvarchar(255)
)
GO

CREATE TABLE [Finger_Print] (
  [id] int PRIMARY KEY
)
GO

CREATE TABLE [Office] (
  [id] nvarchar(255) PRIMARY KEY,
  [name] nvarchar(255),
  [address] nvarchar(255)
)
GO

CREATE TABLE [Contract] (
  [id] nvarchar(255) PRIMARY KEY,
  [employment_id] nvarchar(255),
  [sign_date] date,
  [end_date] date
)
GO

CREATE TABLE [Attendance] (
  [id] nvarchar(255) PRIMARY KEY,
  [finger_print_id] nvarchar(255),
  [timestamp] date_time
)
GO

ALTER TABLE [Employee] ADD CONSTRAINT [has] FOREIGN KEY ([department_id]) REFERENCES [Department] ([id])
GO

ALTER TABLE [Finger_Print] ADD FOREIGN KEY ([id]) REFERENCES [Employee] ([id])
GO

ALTER TABLE [Employee] ADD FOREIGN KEY ([office_id]) REFERENCES [Office] ([id])
GO

ALTER TABLE [Contract] ADD FOREIGN KEY ([employment_id]) REFERENCES [Employment] ([id])
GO

ALTER TABLE [Attendance] ADD FOREIGN KEY ([finger_print_id]) REFERENCES [Finger_Print] ([id])
GO

ALTER TABLE [Employee] ADD FOREIGN KEY ([id]) REFERENCES [Employment] ([employee_id])
GO

ALTER TABLE [Insurance] ADD FOREIGN KEY ([employment_id]) REFERENCES [Employment] ([id])
GO

ALTER TABLE [Employee] ADD FOREIGN KEY ([id]) REFERENCES [Employee] ([manager_id])
GO

ALTER TABLE [Employee] ADD FOREIGN KEY ([id]) REFERENCES [Department] ([manager_id])
GO

ALTER TABLE [Employee] ADD FOREIGN KEY ([id]) REFERENCES [Employee_info] ([employee_id])
GO
