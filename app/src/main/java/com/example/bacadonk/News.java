package com.example.bacadonk;

public class News {
    int id;
    String title;
    String content;
    String author;


    public News(int id, String title, String content, String author) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.author = author;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getShortContent(){
        int words = 40;
        for (int i = 0; i < content.length(); i++) {

            if (content.charAt(i) == ' ') {
                words--;
            }

            if (words == 0) {
                return content.substring(0, i) + "...";
            }
        }

        return "";
    }

}
