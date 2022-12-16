package com.test.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class SecondLambdaFunction implements RequestHandler<String, String> {

    @Override
    public String handleRequest(String s, Context context) {
        return "Hello " + s + ", you came again I told you na that you are handsome.";
    }
}
