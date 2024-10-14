namespace CrudConsoleApp
{
    public class Program
    {

        static void Main(string[] args)
        {
            using var db = new AppDbContext();
            bool keepRunning = true;

            while (keepRunning)
            {
                Console.WriteLine("Choose an option:");
                Console.WriteLine("1. Add a new Student Record");
                Console.WriteLine("2. View Student Record");
                Console.WriteLine("3. Update Student Record");
                Console.WriteLine("4. Delete Student Record");
                Console.WriteLine("5. Exit");
                var choice = Console.ReadLine();

                switch (choice)
                {
                    case "1":
                        AddStudent(db);
                        break;
                    case "2":
                        ViewStudent(db);
                        break;
                    case "3":
                        UpdateStudent(db);
                        break;
                    case "4":
                        DeleteStudent(db);
                        break;
                    case "5":
                        keepRunning = false;
                        break;
                    default:
                        Console.WriteLine("Invalid choice. Try again.");
                        break;
                }
            }
        }

        static void AddStudent(AppDbContext db)
        {
            Console.WriteLine("Enter Student Name:");
            var name = Console.ReadLine();
            Console.WriteLine("Enter Student Gender:");
            var gender = Console.ReadLine();
            Console.WriteLine("Enter Student Email:");
            var email = Console.ReadLine();

            var Student = new Student { Name = name, Gender = gender, Email = email };
            db.Students.Add(Student);
            db.SaveChanges();
            Console.WriteLine("Student Record added.");
        }

        static void ViewStudent(AppDbContext db)
        {
            var Students = db.Students.ToList();
            foreach (var student in Students)
            {
                Console.WriteLine($"Id: {student.ID}, Name: {student.Name}, Gender: {student.Gender}, Email: {student.Email}");
            }

        }

        static void UpdateStudent(AppDbContext db)
        {
            Console.WriteLine("Enter Your Student Id To Update");
            var id = Convert.ToInt32(Console.ReadLine());
            var student = db.Students.FirstOrDefault(p => p.ID == id);

            if (student != null)
            {
                Console.WriteLine("Enter New Name");
                student.Name = Console.ReadLine();
                Console.WriteLine("Enter Gender");
                student.Gender = Console.ReadLine();
                Console.WriteLine("Enter Emal");
                student.Email = Console.ReadLine();


                db.SaveChanges();
                Console.WriteLine("Student Record Updated");
            }
            else
            {
                Console.WriteLine("Student Record Not Found");
            }
        }

        static void DeleteStudent(AppDbContext db)
        {
            Console.WriteLine("Enter Student ID to Delete");
            var id = Convert.ToInt32(Console.ReadLine());
            var student = db.Students.FirstOrDefault(p => p.ID == id);
            if (student != null)
            {
                db.Students.Remove(student);
                db.SaveChanges();
                Console.WriteLine("Student Record Deleted Successfull");
            }
            else
            {
                Console.WriteLine("Student Record Not Found");
            }
        }  
    }
}



