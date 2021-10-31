FROM python

WORKDIR /app
COPY app.py .
COPY ./templates/base.html .
COPY ./templates/list.html .

COPY Dockerfile .
COPY db.sqlite .



COPY req.txt .
RUN pip install -r req.txt
CMD ["python", "app.py"]
