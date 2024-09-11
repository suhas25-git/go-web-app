FROM golang:1.21 as base                                      #get golanf as base image is we make app in it

WORKDIR /app                                                  #make work dir /app

COPY go.mod .                                                 #Dependencies are stored here like requirement file 

RUN go mod download                                           #run this to download 

COPY . .                                                      #this command copy source-code to docker image

RUN go build -o /main .                                       # this run a command to run project and a binary call main is created

# final stage with distroless iamge

FROM gcr.io/distroless/base      					  #get a distroless image for reduce size

COPY --from=base /app/main .						  #copy main binary file from base 

COPY --from=base /app/static ./static 					  #copy static file frombase


EXPOSE 8080                                                   #expose port for connection

CMD [ "./main" ]                                              #run the coammnd to run project

