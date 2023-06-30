# Dockercoins

## Purpose
demonstrate microservices deployment with `docker compose` and **kubernetes**

## Docker compose deployment
* run deployment and see logs : `docker compose up`

* See webui on [http://localhost:8000/](http://localhost:8000/)

* stop with `ctrl+c` and remove everything with `docker compose down`

## deployment with kubernetes
* create all deployment (`-deploy.yaml` files) with `kubectl create -f *-deploy.yaml`
* or
    * `kubectl create deployment hasher --image=dockercoins/hasher:v0.1`
    * `kubectl create deployment rng --image=dockercoins/rng:v0.1`
    * `kubectl create deployment webui --image=dockercoins/webui:v0.1`
    * `kubectl create deployment worker --image=dockercoins/worker:v0.1`

* we can see logs with `kubectl logs deploy/worker`, and this deploy is failing because he can't reach anything without service

* create somes services:
    * `kubectl expose deployment redis --port 6379`
    * `kubectl expose deployment rng --port 80`
    * `kubectl expose deployment hasher --port 80`

* now, these three deployment can be reached by others, including worker