package Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BorrowMovieManager implements IBaseManager
{
    @Override
    public void insert(String movieName, String actorName, String directorName, String imdbScore, String type, String userName)
    {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        try{
            connection = helper.getConnection();
            String sql = "insert into borrowbook (MOVIE_NAME, ACTOR_NAME, DIRECTOR_NAME, IMDBSCORE, TYPE, USER_NAME) values (?,?,?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, movieName);
            statement.setString(2, actorName);
            statement.setString(3, directorName);
            statement.setString(4, imdbScore);
            statement.setString(5, type);
            statement.setString(6, userName);
            statement.executeUpdate();
        }catch (SQLException exception){
            helper.showErrorMessage(exception);
        }

    }
    @Override
    public void delete(String movieName)
    {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        try {
            connection = helper.getConnection();
            statement = connection.prepareStatement("delete from borrowmovie where MOVIE_NAME =?");
            statement.setString(1, movieName);
            statement.executeUpdate();
        }catch (SQLException exception){
            helper.showErrorMessage(exception);
        }
    }

    public int borrowMovieControl(String movieName)
    {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        ResultSet resultSet;
        try{
            connection = helper.getConnection();
            statement = connection.prepareStatement("Select * from borrowmovie where MOVIE_NAME=?");
            statement.setString(1, movieName);
            resultSet = statement.executeQuery();
            if(resultSet.next()) {
                return 0;
            }
            else {
                return 1;
            }
        }catch (SQLException exception){
            helper.showErrorMessage(exception);
            return 1;
        }
    }

    //Burada ödünç alınan film borrowmovie tablosundan silinip movies tablosuna ekleniyor
    public void borrowMovieData(String movieName)
    {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        ResultSet resultSet;
        try{
            connection = helper.getConnection();
            statement = connection.prepareStatement("select MOVIE_NAME, ACTOR_NAME, DIRECTOR_NAME, IMDBSCORE,TYPE from borrowmovie where MOVIE_NAME=?");
            statement.setString(1, movieName.toUpperCase());
            resultSet = statement.executeQuery();
            MoviesManager moviesManager = new MoviesManager();
            while (resultSet.next()){
                moviesManager.insertMovie(resultSet.getString("MOVIE_NAME"),resultSet.getString("ACTOR_NAME"),resultSet.getString("DIRECTOR_NAME"),resultSet.getString("IMDBSCORE"),resultSet.getString("TYPE"));
                delete(movieName);
            }
        }catch (SQLException exception){
            helper.showErrorMessage(exception);
        }
    }

    public String userNameControl(String userName)
    {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        ResultSet resultSet;
        try{
            connection = helper.getConnection();
            statement = connection.prepareStatement("Select * from borrowmovie where USER_NAME=?");
            statement.setString(1,userName);
            resultSet = statement.executeQuery();
            if(resultSet.next())
            {
                String borrowMovie = resultSet.getString("Movie_Name");
                return borrowMovie;
            }
            else{
                return "YOK";
            }
        }catch (SQLException exception){
            helper.showErrorMessage(exception);
            return "YOK";
        }
    }


}
