FROM python:3.7.3-stretch

WORKDIR /app

COPY main.py /app/
COPY game.py /app/
COPY CNN_hand.py /app/

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8080

CMD ["python", "game.py"]
