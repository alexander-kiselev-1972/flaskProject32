FROM python:3.8
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY . /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_ENV="docker"

ENV FLASK_APP=flasky.py

ENV FLASK_DEBUG=True

ENV DEV_DATABASE_URL=/var/lib/postgresql/data/

CMD ["flask", "run", "--host=0.0.0.0"]
