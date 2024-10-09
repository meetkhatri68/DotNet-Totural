using DbOperationsWithEFCoreApp.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Runtime.ExceptionServices;

namespace DbOperationsWithEFCoreApp.Controllers
{
    [Route("api/currencies")]
    [ApiController]
    public class CurrencyController : ControllerBase
    {
        private readonly AppDbContext _appDbContext;

        
        public CurrencyController(AppDbContext appDbContext)
        {
          _appDbContext = appDbContext;
        }

        //get all database table record

        [HttpGet("")]
        public async Task<IActionResult> GetAllCurrencies()
        {
            //first methdo to call without async

            // var result = _appDbContext.Currencies.ToList();
            //var result = (from currencies in _appDbContext.Currencies
            //             select currencies).ToList();

            //second method to call with async

            var result = await _appDbContext.Currencies.ToListAsync();
            //var result = await (from currencies in _appDbContext.Currencies
            //                    select currencies).ToListAsync();
            
            return Ok(result);
        }

        //get single database table record by id

        [HttpGet("{id}")]
        public async Task<IActionResult> GetCurrencyByIdAsync([FromRoute] int id)
        {
            var result = await _appDbContext.Currencies.FindAsync(id);
            return Ok(result);
        }

        //get data by user using array

        //[HttpPost("all")]
        //public async Task<IActionResult> GetCurrencyByIdAsync([FromBody] List<int> ids)
        //{
        //    //var ids = new List<int> { 1,2,3};
        //    var result = await _appDbContext.Currencies
        //                        .Where(x=> ids.Contains(x.Id))
        //                        .ToListAsync();

        //    return Ok(result);
        //}

        //---------------------------------------------------------------------------------


        //we have 10 or more then manny column in database table
        //and we have to select 1 or 2 column then how to do
        //(we have to use Linq SELECT Method) 

        //(there are to ways to get the column this is hte first way)
        //[HttpPost("all")]
        //public async Task<IActionResult> GetCurrencyByIdAsync([FromBody] List<int> ids)
        //{
        //    //var ids = new List<int> { 1,2,3};
        //    var result = await _appDbContext.Currencies
        //                        .Where(x => ids.Contains(x.Id))
        //                        .Select(x=> new Currency()
        //                        {
        //                            Id = x.Id,
        //                            Title = x.Title,
        //                        })
        //                        .ToListAsync();

        //    return Ok(result);
        //}

        //(this is the second way to get the column)

        [HttpPost("all")]
        public async Task<IActionResult> GetCurrencyByIdAsync([FromBody] List<int> ids)
        {
            //var ids = new List<int> { 1,2,3};
            var result = await (from  Currency in _appDbContext.Currencies
                                select new
                                {
                                    CurrencyId = Currency.Id,
                                    Name = Currency.Title,

                                }).ToListAsync();


            return Ok(result);
        }

    }
}
