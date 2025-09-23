using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiController : ControllerBase
    {
        private List<string> student = new List<string>
        {
            "Raju",
            "Rashid",
            "Richard"
        };

        private List<Dictionary<string, string>> student_dict = new List<Dictionary<string, string>>
        {
            new Dictionary<string, string>{{"id","1"},{"name","Sachin"}},
            new Dictionary<string, string>{{"id","2"},{"name","Rahul"}},
        };

        [HttpGet]
        public IActionResult GetAllStudents()
        {
            return new JsonResult(student_dict);
        }

        [HttpGet("{id}")]
        public IActionResult GetStudentById(string id)
        {
            var student = student_dict.FirstOrDefault(s => s["id"] == id);
            if (student != null)
            {
                return new JsonResult(student);
            }
            return NotFound(new { message = "Student not found" });
        }
    }
}
