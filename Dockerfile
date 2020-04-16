FROM python:3.7
RUN pip install flask gunicorn gevent
RUN pip install flask_restful pymysql
RUN pip install flask-cors
RUN pip install keras==2.2.5
RUN pip install tensorflow==1.15.0
RUN apt update && apt install vim -y
RUN mkdir static
ADD . /
RUN python /wavs_to_model.py
CMD ["gunicorn", "app:app", "-c", "/gunicorn.conf.py"]