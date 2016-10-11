package com.example.bacadonk;

import com.loopj.android.http.*;

public class NewsHttpClient {

    private static final String url = "http://localhost/bacadonk/json.php";

    private static AsyncHttpClient client = new AsyncHttpClient();

    //untuk melakukan request GET pada url
    public static void get(String url, RequestParams params, AsyncHttpResponseHandler responseHandler) {
        client.get(url, params, responseHandler);
    }

    //untuk melakukan request POST pada url
    public static void post(String url, RequestParams params, AsyncHttpResponseHandler responseHandler) {
        client.post(url, params, responseHandler);
    }
}
