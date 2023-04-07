# Dockercoins

## Purpose
demonstrate microservices deployment with `docker compose` and **kubernetes**

## Docker compose deployment
* run deployment and see logs : `docker compose up`

* See webui on [http://localhost:8000/](http://localhost:8000/)

* stop with `ctrl+c` and remove everything with `docker compose down`

## deployment with kubernetes
* create all deployment (`-deploy.yaml` files) with `kubectl create -f *-deploy.yaml`

* we can see logs with `kubectl logs deploy/worker`, and this deploy is failing because he can't reach anything without service

* create somes services:
    * `kubectl expose deployment redis --port 6379`
    * `kubectl expose deployment rng --port 80`
    * `kubectl expose deployment hasher --port 80`

* now, these three deployment can be reached by others, including worker