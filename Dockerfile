#Base Image python
FROM python:3.13.15

#WORKDIR
WORKDIR /app

COPY ./app/requirements.txt .

#install the libraries from requirements.txt file
RUN pip install -r requirements.txt

COPY ./app .

#application listening on port 8080
EXPOSE 8080 

ENTRYPOINT ["python"]

CMD ["./app.py"]

