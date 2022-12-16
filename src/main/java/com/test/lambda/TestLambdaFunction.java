package com.test.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class TestLambdaFunction implements RequestHandler<String, String> {

    @Override
    public String handleRequest(String s, Context context) {
        return "Hello " + s + ", you are too handsome.";
    }
}
