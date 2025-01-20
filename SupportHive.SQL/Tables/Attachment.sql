CREATE TABLE Attachment (
    AttachmentID INT IDENTITY(1,1) PRIMARY KEY,
    TicketID INT,
    FilePath NVARCHAR(255) NOT NULL,
    UploadedAt DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_Attachments_Tickets FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID)
);
