namespace DataAccessLayer;

public class IngredientsRepository
{
    private RecipesDbContext context;

    public IngredientsRepository()
    {
        this.context = new RecipesDbContext();
    }


}
