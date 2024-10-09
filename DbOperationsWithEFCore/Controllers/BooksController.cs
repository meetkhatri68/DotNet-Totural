using DbOperationsWithEFCoreApp.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DbOperationsWithEFCoreApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BooksController(AppDbContext appDbContext) : ControllerBase
    {
        // Insert Single Record Data Code

        [HttpPost("")]
        public async Task<IActionResult> AddNewBook([FromBody] Book model) /*Book is Class Name And Model is the Book Object insted of Model You Can Right Any Name*/
        {
            appDbContext.Books.Add(model);
            await appDbContext.SaveChangesAsync();

            return Ok(model);
        }

        //GetAll Record DataBase Code

        [HttpGet("")]
        public async Task<IActionResult> GetBookData() 
        {
            var result = appDbContext.Books.ToList();    
            await appDbContext.SaveChangesAsync();

            return Ok(result);
        }

        // Insert Manay Record Data Code  

        [HttpPost("bulk")]
        public async Task<IActionResult> AddBooks([FromBody] List<Book> model)
        {
            appDbContext.Books.AddRange(model);
            await appDbContext.SaveChangesAsync();

            return Ok(model);
        }

        //Frist Way To Update Database Table Record 

        [HttpPut("{bookId}")]
        public async Task<IActionResult> UpdateBook([FromRoute] int bookId ,[FromBody] Book model)  
        {
            var book = appDbContext.Books.FirstOrDefault(x => x.Id == bookId);
            if (book == null) 
            {
                return NotFound();
            }

            book.Title = model.Title;
            book.Descrption = model.Descrption; 

            await appDbContext.SaveChangesAsync();

            return Ok(model);
        }

        //Second Way To Update Database Table Record 

        [HttpPut("")]
        public async Task<IActionResult> UpdateBookWithSingleQuery([FromBody] Book model)
        {
           
            appDbContext.Books.Update(model);   
            await appDbContext.SaveChangesAsync();

            return Ok(model);
        }

        // (Bulk)How To Update Multiple Record In One single Database 

        [HttpPut("Bulk")]
        public async Task<IActionResult> UpdateBookInBulk()
        {
           await appDbContext.Books.ExecuteUpdateAsync(x=>x.SetProperty(p=>p.Descrption, "This Is Book"));
           await appDbContext.SaveChangesAsync();     
            return Ok();
        }

        //First Way To Delect Database Table Record 

        [HttpDelete("{bookId}")]
        public async Task<IActionResult> DelectBookById([FromRoute] int bookId)
        {
            //var book = await appDbContext.Books.FindAsync(bookId);

            //if (book == null)
            //{
            //    return NotFound();  
            //}

            //appDbContext.Books.Remove(book);
            //await appDbContext.SaveChangesAsync();
            //return Ok();

            //Second Way To Delect Database Table Record 

            var book = new Book { Id = bookId };
            await appDbContext.Books.ExecuteDeleteAsync();
            await appDbContext.SaveChangesAsync();

            return Ok();
        }

        [HttpDelete("Bulk")]
        public async Task<IActionResult> DeletBookWithBulk()
        {

            var books = await appDbContext.Books.Where(x => x.Id < 7).ToListAsync();
       
            appDbContext.Books.RemoveRange(books);
            await appDbContext.SaveChangesAsync();


            //appDbContext.Books.RemoveRange();
            //await appDbContext.SaveChangesAsync();
            return Ok();
        }

    }
    
}
