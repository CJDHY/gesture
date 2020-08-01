FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY main.py /app/
COPY game.py /app/
COPY CNN_hand.py /app/

# Install packages from requirements.txt
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Run game.py at container launch
CMD ["python", "game.py"]
