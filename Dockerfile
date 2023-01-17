FROM python:latest
#ADD main.py .
EXPOSE 8080
WORKDIR /usr/src/app
RUN pip install Flask
CMD [ "/bin/bash" ]