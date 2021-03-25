FROM pytorch/pytorch:1.0-cuda10.0-cudnn7-runtime

ADD iris.py /opt
WORKDIR /opt

RUN chgrp -R 0 /opt \
  && chmod -R g+rwX /opt \
  && chgrp -R 0 /katib \
  && chmod -R g+rwX /katib

ENTRYPOINT ["python3", "/opt/iris.py"]