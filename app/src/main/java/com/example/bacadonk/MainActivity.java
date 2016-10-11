package com.example.bacadonk;

import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;

import com.loopj.android.http.JsonHttpResponseHandler;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import cz.msebera.android.httpclient.Header;

public class MainActivity extends AppCompatActivity {

    //inisiasi variable
    private RecyclerView recyclerView;
    private NewsAdapter newsAdapter;
    private List<News> newsList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        recyclerView = (RecyclerView) findViewById(R.id.news_list);

        newsList = new ArrayList<>();
        newsAdapter = new NewsAdapter(newsList);

        // buat GridLayout dengan 1 kolom
        RecyclerView.LayoutManager mLayoutManager = new GridLayoutManager(this, 1);
        recyclerView.setLayoutManager(mLayoutManager);
        recyclerView.setAdapter(newsAdapter);

//        createDummyNews();
        getNews();


        final SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.swipe_refresh_layout);
        swipeRefreshLayout.setColorSchemeResources(R.color.orange, R.color.green, R.color.blue);
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                newsList.clear();
                getNews();
                swipeRefreshLayout.setRefreshing(false);
            }
        });
    }

    //fungsi untuk membuat data dummy sementara
    private void createDummyNews(){
        for (int i = 1; i <= 10; i++) {
            News article = new News(i,"Title of Article "+i , "Content of Article "+i, "author"+i);
            newsList.add(article);
        }
        newsAdapter.notifyDataSetChanged();
    }


    private void getNews(){
//        String url = "http://10.0.2.2/bacadonk/json.php"; //for use in android default emulator
        String url = "http://10.71.34.1/bacadonk/json.php";//for use in xamarin android player
        NewsHttpClient.get(url, null, new JsonHttpResponseHandler(){
            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONObject news) {
                // digunakan jika response berupa JSONObject
            }

            @Override
            public void onSuccess(int statusCode, Header[] headers, JSONArray news) {
                try {
                    for (int i = 0; i < news.length(); i++) {
                        int id = news.getJSONObject(i).getInt("id");
                        String title = news.getJSONObject(i).getString("title");
                        String content = news.getJSONObject(i).getString("content");
                        String author = news.getJSONObject(i).getString("author");

                        newsList.add(new News(id,title,content,author));
                    }
                    newsAdapter.notifyDataSetChanged();
                } catch (JSONException e) {
                    e.printStackTrace();
                }

            }
        });
    }
}
