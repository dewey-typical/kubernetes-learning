# Custon Load Balancer Assignement

Our goal here will be to create a service that load balances connections to two different deployments. You might use this as a simplistic way to run two versions of your apps in parallel.

In the real world, you'll likely use a 3rd party load balancer to provide advanced blue/green or canary-style deployments, but this assignment will help further your understanding of how service selectors are used to find pods to use as service endpoints.

For simplicity, version 1 of our application will be using the NGINX image, and version 2 of our application will be using the Apache image. They both listen on port 80 by default.

When we connect to the service, we expect to see some requests being served by NGINX, and some requests being served by Apache.
