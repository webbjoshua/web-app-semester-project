package services;

import models.MovieModel;
import models.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MySQLdb {
    String url = "jdbc:mysql://localhost:3306/mydb";
    String username = "root";
    String password = "1234";
    Connection connection = null;
    static MySQLdb instance = null;


    public MySQLdb() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException | ClassNotFoundException exception) {
            exception.printStackTrace();
        }
    }

    public static synchronized MySQLdb getInstance() {
        if(instance == null) {
            instance = new MySQLdb();
        }
        return instance;
    }
/*
    public UserModel doLogin(String email, String password) throws SQLException {
        UserModel userModel = null;

        // PreparedStatement

//        String qLogin = "SELECT name FROM users WHERE email = ? AND password = ?";
//        PreparedStatement preparedStatement = connection.prepareStatement(qLogin);
//        preparedStatement.setString(1, email);
//        preparedStatement.setString(2, password);
//        ResultSet resultSet = preparedStatement.executeQuery();


        // Statement
        String qLogin = "SELECT name FROM users WHERE email = '"+ email +"' AND password = '"+ password +"'";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(qLogin);


        if(resultSet.next()) {
            String name = resultSet.getString("name");
            userModel = new UserModel(email, name);
        }
        resultSet.close();
        statement.close();
//        preparedStatement.close();
        return userModel;

    }
*/
    public List<MovieModel> fetchMovie() throws SQLException {
        String qGetMovie = null;
        List<MovieModel> list = new ArrayList<>();

        qGetMovie = "SELECT R.review_title, R.film_title, R.author_name, R.contributing_author_name, R.photo_filename, R.release_date, R.version_information, R.review_body, R.movie_rating, R.number_of_stars FROM reviews as R";

        PreparedStatement preparedStatement = connection.prepareStatement(qGetMovie);
        ResultSet resultSet = preparedStatement.executeQuery();
        while(resultSet.next()) {
            String review_title = resultSet.getString("review_title");
            String film_title = resultSet.getString("film_title");
            String author_name = resultSet.getString("author_name");
            String contributing_author_name = resultSet.getString("contributing_author_name");
            String photo_filename = resultSet.getString("photo_filename");
            Date release_date = resultSet.getDate("release_date");
            float version_information = resultSet.getFloat("version_information");
            String review_body = resultSet.getString("review_body");
            String movie_rating = resultSet.getString("movie_rating");
            float number_of_stars = resultSet.getFloat("number_of_stars");
            MovieModel movieModel = new MovieModel(review_title, film_title, author_name, contributing_author_name, photo_filename, release_date, version_information, review_body, movie_rating, number_of_stars);
            list.add(movieModel);
        }
        resultSet.close();
        preparedStatement.close();

        return list;
    }
/*
    public List<AlbumModel> fetchAlbums() throws SQLException {
        List<AlbumModel> list = new ArrayList<>();
        String qGetAlbums = "SELECT * FROM albums";
        PreparedStatement preparedStatement = connection.prepareStatement(qGetAlbums);
        ResultSet resultSet = preparedStatement.executeQuery();
        while(resultSet.next()) {
            int album_id = resultSet.getInt("album_id");
            String album_name = resultSet.getString("album_name");
            AlbumModel albumModel = new AlbumModel(album_id, album_name);
            list.add(albumModel);
        }
        resultSet.close();
        preparedStatement.close();
        return list;
    }


    // WHEN USING INSERT/UPDATE/DELETE --> executeUpdate()
    // SELECT --> executeQuery()
    public boolean doReserve(String email, int song_id) throws SQLException {
        boolean result = false;
        String qDoReserve = "INSERT INTO reserve VALUES(?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(qDoReserve);
        preparedStatement.setString(1, email);
        preparedStatement.setInt(2, song_id);
        int rows_update = preparedStatement.executeUpdate();
        if(rows_update > 0) {
            result = true;
        }
        preparedStatement.close();
        return result;
    }

    public List<MusicModel> getReservedMusic(String email) throws SQLException {
        List<MusicModel> list = new ArrayList<>();
        String qGetReserved = "SELECT S.song_id, A.album_id, S.song_name, A.album_name FROM songs as S, albums as A, reserve as R WHERE R.song_id = S.song_id AND S.album_id = A.album_id AND R.email = '"+email+"'";
        PreparedStatement preparedStatement = connection.prepareStatement(qGetReserved);
        ResultSet resultSet = preparedStatement.executeQuery();
        while(resultSet.next()) {
            int album_id = resultSet.getInt("album_id");
            String album_name = resultSet.getString("album_name");
            int song_id = resultSet.getInt("song_id");
            String song_name = resultSet.getString("song_name");
            MusicModel musicModel = new MusicModel(song_id, album_id, song_name, album_name);
            list.add(musicModel);
        }
        resultSet.close();
        preparedStatement.close();
        return list;
    }
    */

}
