FROM python:latest

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt 


# Copy app files
COPY . .

#Expose port
EXPOSE 8080

#Start the app
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", “--port=8080”]