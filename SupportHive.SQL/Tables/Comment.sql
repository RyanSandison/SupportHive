CREATE TABLE Comment (
    CommentID INT IDENTITY(1,1) PRIMARY KEY,
    TicketID INT,
    UserID INT,
    CommentText NVARCHAR(MAX) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_Comments_Tickets FOREIGN KEY (TicketID) REFERENCES Ticket(TicketID),
    CONSTRAINT FK_Comments_Users FOREIGN KEY (UserID) REFERENCES [User](UserID)
);
