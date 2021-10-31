FROM python
COPY app.py /app
COPY ./templates/base.html /app
COPY ./templates/list.html /app

COPY Dockerfile /app
COPY db.sqlite /app


WORKDIR /app
COPY req.txt .
RUN pip install -r req.txt
CMD ["python", "app.py"]
