package Database;

public class Movies extends BaseMovie
{
    private String movieName;
    private String actorName;
    private String directorName;
    private String imdbScore;
    private String type;

    public Movies(String movieName, String actorName, String directorName, String imdbScore, String type)
    {
        this.movieName = movieName;
        this.actorName = actorName;
        this.directorName = directorName;
        this.imdbScore = imdbScore;
        this.type = type;
    }

    @Override
    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName){
        this.movieName = movieName;
    }

    @Override
    public String getActorName() {
        return actorName;
    }

    public void setActorName(String actorName){
        this.actorName = actorName;
    }

    @Override
    public String getDirectorName() {
        return directorName;
    }

    public void setDirectorName(String directorName){
        this.directorName = directorName;
    }

    @Override
    public String getImdbScore() {
        return imdbScore;
    }

    public void setImdbScore(String imdbScore){
        this.imdbScore = imdbScore;
    }

    @Override
    public String getType() {
        return type;
    }

    public void setType(String type){
        this.type = type;
    }

}
