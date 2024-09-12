# Go Web Application

This is a simple website written in Golang. It uses the `net/http` package to serve HTTP requests.

## Running the server

To run the server, execute the following command:

```bash
go run main.go
```

The server will start on port 8080. You can access it by navigating to `http://localhost:8080/courses` in your web browser.

## Looks like this

![Website](static/images/golang-website.png)


kubectl port-forward service/go-web-app 8080:8080 --address 0.0.0.0
to run the srever on post forwading

 minikube addons enable ingress
 install ingress controler

  1.curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    2  sudo install minikube-linux-amd64 /usr/local/bin/minikube
    3  sudo snap install kubectl --classic
    4  minikube start — driver=docker


    To install minikube and start cluster
