package models;
import java.util.ArrayList;
import java.util.Date;

public class MovieModel {
     int revID;
     String review_title;
     String film_title;
     String author_name;
     String contributing_author_name;
     String photo_filename;
     Date release_date;
     float version_information;
     String review_body;
     String movie_rating;
     float number_of_stars;

    public MovieModel(int revID, String review_title, String film_title, String author_name, String contributing_author_name, String photo_filename, Date release_date, float version_information, String review_body, String movie_rating, float number_of_stars){
        this.revID = revID;
        this.review_title = review_title;
        this.film_title = film_title;
        this.author_name = author_name;
        this.contributing_author_name = contributing_author_name;
        this.photo_filename = photo_filename;
        this.release_date = release_date;
        this.version_information = version_information;
        this.review_body = review_body;
        this.movie_rating = movie_rating;
        this.number_of_stars = number_of_stars;
    }

    public int getRevID(){
        return revID;
    }

    public void setRevID(int revID){
        this.revID = revID;
    }

    public String getReview_title() {
        return review_title;
    }

    public void setReview_title(String review_title) {
        this.review_title = review_title;
    }

    public String getFilm_title() {
        return film_title;
    }

    public void setFilm_title(String film_title) {
        this.film_title = film_title;
    }


    public String getAuthor_name() {
        return author_name;
    }

    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public String getContributing_author_name() {
        return contributing_author_name;
    }

    public void setContributing_author_name(String contributing_author_name) {
        this.contributing_author_name = contributing_author_name;
    }

    public String getPhoto_filename() {
        return photo_filename;
    }

    public void setPhoto_filename(String photo_filename) {
        this.photo_filename = photo_filename;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public float getVersion_information() {
        return version_information;
    }

    public void setVersion_information(float version_information) {
        this.version_information = version_information;
    }

    public String getReview_body() {
        return review_body;
    }

    public void setReview_body(String review_body) {
        this.review_body = review_body;
    }

    public String getMovie_rating() {
        return movie_rating;
    }

    public void setMovie_rating(String movie_rating) {
        this.movie_rating = movie_rating;
    }

    public float getNumber_of_stars() {
        return number_of_stars;
    }

    public void setNumber_of_stars(float number_of_stars) {
        this.number_of_stars = number_of_stars;
    }

}
