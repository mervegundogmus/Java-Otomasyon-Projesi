package Database;

public interface IBaseManager
{
    void insert(String movieName,
                String actorName,
                String directorName,
                String imdbScore,
                String type,
                String userName);

    void delete(String movieName);


}
