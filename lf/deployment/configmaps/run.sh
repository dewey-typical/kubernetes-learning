kubectl create configmap colors \
--from-literal=text=black \
--from-file=./favorite \
--from-file=./primary/