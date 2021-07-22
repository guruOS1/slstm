FROM tensorflow/tensorflow

RUN pip3 install sklearn pandas streamlit

WORKDIR /app
COPY slstm.py /app/app.py
COPY model /app/model
CMD ["bash"]