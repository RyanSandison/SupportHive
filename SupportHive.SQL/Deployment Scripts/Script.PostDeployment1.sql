/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


-- Insert initial data into Categories
INSERT INTO Category (CategoryName) VALUES (N'Software'), (N'Hardware'), (N'Network'), (N'Other');

-- Insert initial data into Statuses
INSERT INTO [Status] (StatusName) VALUES (N'Open'), (N'In Progress'), (N'Resolved'), (N'Closed');

-- Insert initial data into Priorities
INSERT INTO [Priority] (PriorityLevel) VALUES (N'Low'), (N'Medium'), (N'High'), (N'Urgent');
