# TP-AySO-2022

Trabajo Practico AYSO GRUPO 5
Integrantes:
Juan Ignacio Pagnanini
Marcelo Fracassi
Sara Guala
Agustin Gaiteri
Santiago Guarde

1. First of all, we create the the folder "TP-k8s" to work with it

2. To create a folder you need to use the command --> mkdir 'FolderName'

3. We are able to find the folder using the commands to see the path in our system
pwd <br>
/home/AySO/TP-k8s <br>
cd TP-k8s 

	1) create INDEX.HTML
		sudo vim index.html

	2) create DOCKERFILE 
		sudo vim Dockerfile

4. In this file, we are able to build an image tagged "V1"
	docker build --tag v1 .

5. We create a container to test the image
docker run -d -p 8080:80 --name grupo5 v1

6. We created the Dockerhub user: juani1997/apache-v1
docker tag v1:latest juani1997/apache-v1:v1

7. We push the image on Dockerub
docker push juani1997/apache-v1:v1

8. We create .YAML file
vim replicaSet.yaml

9. We create the K8S Cluster
minikube start --driver=docker

10. We create the alias KUBECTL and MINIKUBE recognize the KUBECTL command
alias kubectl="minikube kubectl --"

11. We create NAMESPACE
kubectl create ns grupo5

12. We apply changes
kubectl apply -f replicaSet.yaml

13. We check the status of the replicaset
minikube dashboard


