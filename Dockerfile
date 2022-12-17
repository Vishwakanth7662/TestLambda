FROM scratch
ADD x86_64/1af20d8b0c1c3c60012df16b69caa40cba00b6184c1c189f68104c0e8f42786f.tar.xz /
ADD x86_64/2f97f3d5b8e0c78977fdbcd26df20bfef85a599fcd0b1442c3c56472b1ec41ad.tar.xz /
ADD x86_64/442b6de83616f87218b206972697972d37f5494197d6d4c30d169fde3ed99691.tar.xz /
ADD x86_64/93ca9b12efa255f08450bdacca8f991aee026b6c4b0bf0fb30c29ccc10004c4b.tar.xz /
ADD x86_64/d04a1e77999ab505d85d54bd4efa5bee682e0fcef08b81f23bac61a7ace6bbd2.tar.xz /
ADD x86_64/da910559ca224067e5c4909d8bd37566caec90ce43710f32484eb0f11f2fe4dd.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
