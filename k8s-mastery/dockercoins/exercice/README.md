# Let's deploy another application called wordsmith

Wordsmith has 3 components:

    a web frontend bretfisher/wordsmith-web

    an API backend bretfisher/wordsmith-words

    a postgres DB bretfisher/wordsmith-db

These images have been built and pushed to Docker Hub

We want to deploy all 3 components on Kubernetes

Here's how the parts of this app communicate with each other:

    The web frontend listens on port 80

    The web frontend should be public (available on a high port from outside the cluster)

    The web frontend connects to the API at the address http://words:8080

    The API backend listens on port 8080

    The API connects to the database with the connection string pgsql://db:5432

    The database listens on port 5432