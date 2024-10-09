using DbOperationsWithEFCoreApp.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DbOperationsWithEFCoreApp.Controllers
{
    [Route("api/languages")]
    [ApiController]
    public class LanguageController : ControllerBase
    {
        AppDbContext _appDbContext;
        public LanguageController(AppDbContext appDbContext)
        {
            _appDbContext = appDbContext;
        }
        [HttpGet("")]
        public async Task<IActionResult> GetAllLanguages()
        {
            var result = await _appDbContext.Languages.ToListAsync();
            return Ok(result);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetLanguageByIdAsync([FromRoute] int id)
        {
            var result = await _appDbContext.Languages.FindAsync(id); 
            return Ok (result);
        }

    }
}
