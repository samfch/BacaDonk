package com.example.bacadonk;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.webkit.WebView;

public class ViewArticle extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_view_article);

        int id_article = getIntent().getIntExtra("id_article",0);

        WebView webView = (WebView) findViewById(R.id.webViewArticle);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl("http://10.0.2.2/bacadonk/view.php?id=" + id_article);
    }
}
