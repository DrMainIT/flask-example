FROM python:3.9.18-slim

WORKDIR /app

# Copy just the requirements file and install Python dependencies
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt


COPY . .

CMD ["flask","--app","app.py","run"]