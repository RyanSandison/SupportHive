﻿using Microsoft.AspNetCore.Mvc;
using SupportHive.API.DataAccess;
using SupportHive.API.Models;
using SupportHive.API.Requests;

namespace SupportHive.API.Controllers { 

	[ApiController]
	[Route("[controller]")]
	public class SupportHiveController : Controller
	{
		private ISqlDataAccess _db;

		public SupportHiveController(ISqlDataAccess db)
		{
			_db = db;
		}

		[HttpGet(Name = "GetStatus")]
		public async Task<ActionResult<User>> GetUser()
		{
			List<Status> status = (List<Status>)await _db.LoadData<Status, dynamic>("dbo.GetStatus", new { });
			return Ok(status);
		}
	}
}
