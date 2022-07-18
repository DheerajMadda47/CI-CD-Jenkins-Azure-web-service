FROM python:3.9-slim

COPY ./src /app/src

WORKDIR /app

RUN pip install fastapi redis pandas uvicorn docker

EXPOSE 5010

CMD ["uvicorn", "src.main:app", "--host=0.0.0.0", "--port=5010"]
