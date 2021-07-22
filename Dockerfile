FROM tensorflow/tensorflow

RUN pip3 install sklearn pandas streamlit

WORKDIR /app
COPY slstm.py /app/app.py
COPY model /app/model

CMD ["streamlit", "run", "--server.address", "0.0.0.0", "app.py" ]