﻿using Microsoft.AspNetCore.Identity;

namespace SupportHive.API.Models;
public class User
{
    public int UserID { get; set; }
    public string Username { get; set; }
    public string PasswordHash { get; set; }
    public string Email { get; set; }
    public string Role{ get; set; }
    public DateTime CreatedAt { get; set; }

    public async Task GetUser()
    {

    }
}
