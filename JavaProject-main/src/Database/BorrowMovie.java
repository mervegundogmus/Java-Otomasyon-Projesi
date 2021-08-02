package Database;

public class BorrowMovie
{
    private String movieName;
    private String actorName;
    private String directorName;
    private String imdbScore;
    private String type;
    private String userName;

    public BorrowMovie(String movieName, String actorName, String directorName, String imdbScore, String type, String userName){
        this.movieName = movieName;
        this.actorName = actorName;
        this.directorName = directorName;
        this.imdbScore = imdbScore;
        this.type = type;
        this.userName = userName;
    }

    public String getMovieName() { return movieName; }
    public void setMovieName(String movieName) { this.movieName = movieName; }

    public String getActorName() { return actorName; }
    public void setActorName(String actorName) { this.actorName = actorName; }

    public String getDirectorName() { return directorName; }
    public void setDirectorName(String directorName) { this.directorName = directorName; }

    public String getImdbScore() { return imdbScore; }
    public void setImdbScore(String imdbScore) { this.imdbScore = imdbScore; }

    public String getType() { return type; }
    public void setType(String type) { this.type = type; }

    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }

}
