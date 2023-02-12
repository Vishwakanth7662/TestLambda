FROM public.ecr.aws/lambda/java:11

# Copy function code and runtime dependencies from Maven layout
COPY target/classes ${LAMBDA_TASK_ROOT}
COPY target/dependency/* ${LAMBDA_TASK_ROOT}/lib/

# Copy datadog Lambda extension Layer
COPY --from=public.ecr.aws/datadog/lambda-extension:36 /opt/. /opt/

# Install datadog java tracer
RUN yum -y install tar wget gzip
RUN wget -O /opt/java/lib/dd-java-agent.jar https://dtdg.co/latest-java-tracer

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "com.test.lambda.TestLambdaFunction::handleRequest" ]
