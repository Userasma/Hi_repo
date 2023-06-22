#the official Golang imang 
FROM golang:1.20 
#To set the work directory inside the container 
WORKDIR /app
#to copy the go application source code 
COPY . . 
#for build the go application 
RUN go build -o app
#for expose the container port 
EXPOSE 8080 
#to run when the container start 
CMD ["./app"]
