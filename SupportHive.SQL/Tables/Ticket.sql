CREATE TABLE Ticket (
    TicketID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(255) NOT NULL,
    Description NVARCHAR(MAX) NOT NULL,
    UserID INT,
    CategoryID INT,
    StatusID INT,
    PriorityID INT,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_Tickets_Users FOREIGN KEY (UserID) REFERENCES [User](UserID),
    CONSTRAINT FK_Tickets_Categories FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    CONSTRAINT FK_Tickets_Statuses FOREIGN KEY (StatusID) REFERENCES [Status](StatusID),
    CONSTRAINT FK_Tickets_Priorities FOREIGN KEY (PriorityID) REFERENCES [Priority](PriorityID)
);
