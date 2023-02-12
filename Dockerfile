FROM public.ecr.aws/lambda/java:11

# Copy function code and runtime dependencies from Maven layout
COPY target/classes ${LAMBDA_TASK_ROOT}
COPY target/dependency/* ${LAMBDA_TASK_ROOT}/lib/

# Install Datadog Lambda extension
COPY --from=public.ecr.aws/datadog/lambda-extension:36 /opt/. /opt/

# Install Datadog Java APM client
RUN yum -y install tar wget gzip
RUN wget -O datadog.jar https://dtdg.co/latest-java-tracer

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "com.test.lambda.TestLambdaFunction::handleRequest" ]
