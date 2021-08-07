package Database;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.*;

public class MoviesManager {
    public ObservableList<Movies> getDataMovies() throws SQLException {
        DbHelper helper = new DbHelper();
        Connection connection = helper.getConnection();
        ObservableList<Movies> list = FXCollections.observableArrayList();
        PreparedStatement ps = connection.prepareStatement("select MOVIES_NAME, ACTOR_NAME, DIRECTOR_NAME, IMDBSCORE, TYPE from movies");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            list.add(new Movies(
                    rs.getString("MOVIES_NAME"),
                    rs.getString("ACTOR_NAME"),
                    rs.getString("DIRECTOR_NAME"),
                    rs.getString("IMDBSCORE"),
                    rs.getString("TYPE")));
        }
        return list;
    }

    public void insertMovie(String movieName, String actorName, String directorName, String imdbScore, String type) {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        try {
            connection = helper.getConnection();
            String sql = "insert into movies (MOVIES_NAME, ACTOR_NAME, DIRECTOR_NAME, IMDBSCORE,TYPE) values (?,?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setString(1, movieName);
            statement.setString(2, actorName);
            statement.setString(2, directorName);
            statement.setString(3, imdbScore);
            statement.setString(4, type);
            statement.executeUpdate();
        } catch (SQLException exception) {
            helper.showErrorMessage(exception);
        }
    }

    public void deleteMovie(String movieName) {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        try {
            connection = helper.getConnection();
            statement = connection.prepareStatement("delete from movies where MOVIE_NAME =?");
            statement.setString(1, movieName);
            statement.executeUpdate();
        } catch (SQLException exception) {
            helper.showErrorMessage(exception);
        }
    }

    public int movieControl(String borrowMovieName) {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        ResultSet resultSet;
        try {
            connection = helper.getConnection();
            statement = connection.prepareStatement("Select * from movies where MOVIE_NAME=?");
            statement.setString(1, borrowMovieName);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return 0;
            } else {
                return 1;
            }

        } catch (SQLException exception) {
            helper.showErrorMessage(exception);
            return 1;
        }
    }

    public void moviesData(String movieName, String userName) {
        Connection connection;
        DbHelper helper = new DbHelper();
        PreparedStatement statement;
        ResultSet resultSet;
        try {
            connection = helper.getConnection();
            statement = connection.prepareStatement("select MOVIE_NAME,ACTOR_NAME, DIRECTOR_NAME, IMDBSCORE,TYPE from movies where MOVIE_NAME=?");
            statement.setString(1, movieName.toUpperCase());
            resultSet = statement.executeQuery();
            BorrowMovieManager borrowMovieManager = new BorrowMovieManager();
            while (resultSet.next()) {
                borrowMovieManager.insert(resultSet.getString("MOVIE_NAME"), resultSet.getString("ACTOR_NAME"), resultSet.getString("DIRECTOR_NAME"), resultSet.getString("IMDBSCORE"), resultSet.getString("TYPE"), userName);
                deleteMovie(movieName);
            }
        } catch (SQLException exception) {
            helper.showErrorMessage(exception);
        }
    }


    public int numberOfMovie() {
        int toplam = 0;
        Connection connection;
        DbHelper helper = new DbHelper();
        Statement statement;
        ResultSet resultSet;
        try {
            connection = helper.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("select (ID) from movies");
            while (resultSet.next()) {
                toplam++;
            }
            return toplam;
        } catch (SQLException exception) {
            return toplam;
        }
    }
}