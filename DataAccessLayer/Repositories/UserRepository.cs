namespace DataAccessLayer;

public class UserRepository
{
    private RecipesDbContext _context;

    public UserRepository()
    {
       this._context = new RecipesDbContext(); 
    }

    public async Task<bool> CreateUserAsync(RegisterUserDTO newUser)
    {
        try 
        {
            User user = new User()
            {
                Username = newUser.Username,
                Email = newUser.Email,
                Password = newUser.Password
            };

            await this._context.Users.AddAsync(user);
            await this._context.SaveChangesAsync();

        }
        catch (Exception)
        {
            throw;
        }

        return true;
    }
}
