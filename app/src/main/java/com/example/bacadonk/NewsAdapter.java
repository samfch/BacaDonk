package com.example.bacadonk;

import android.content.Intent;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

public class NewsAdapter extends RecyclerView.Adapter<NewsAdapter.NewsViewHolder>{

    //buat variable untuk menampung data News
    private List<News> newsList;

    //constructor meng-inisiasi class NewsAdapter
    public NewsAdapter(List<News> newsList) {
        this.newsList = newsList;
    }

    // untuk mendapatkan layout news item : news_item.xml
    @Override
    public NewsViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.news_item, parent, false);
        return new NewsViewHolder(itemView);
    }

    // untuk menghubungkan data dengan component
    @Override
    public void onBindViewHolder(NewsViewHolder holder, int position) {
        final News article = newsList.get(position);
        holder.newsTitle.setText(article.getTitle());
//        holder.newsContent.setText(article.getContent());
        holder.newsContent.setText(article.getShortContent());
        holder.newsAuthor.setText(article.getAuthor());

        holder.newsItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(view.getContext(), ViewArticle.class);
                intent.putExtra("id_article",article.getId());
                view.getContext().startActivity(intent);
            }
        });
    }

    // untuk mendapatkan banyaknya data
    @Override
    public int getItemCount() {
        return newsList.size();
    }

    // Inner class untuk ViewHolder (menampung komponen pada news item layout)
    public class NewsViewHolder extends RecyclerView.ViewHolder {
        protected TextView newsTitle;
        protected TextView newsContent;
        protected TextView newsAuthor;
        protected CardView newsItem;

        public NewsViewHolder(View itemView) {
            super(itemView);

            newsTitle = (TextView) itemView.findViewById(R.id.title);
            newsContent = (TextView) itemView.findViewById(R.id.content);
            newsAuthor = (TextView) itemView.findViewById(R.id.author);
            newsItem = (CardView) itemView.findViewById(R.id.card);

        }
    }
}
