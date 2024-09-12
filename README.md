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

to run the srever on post forwading

    kubectl port-forward service/go-web-app 8080:8080 --address 0.0.0.0


 
 install ingress controller
 
    minikube addons enable ingress

 To install minikube and start cluster
    
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    sudo snap install kubectl --classic
    minikube start — driver=docker
    
