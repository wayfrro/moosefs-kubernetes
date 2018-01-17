# moosefs-kubernetes

### You can find here files for Codilime Meetup, for presentation: *DaemonSets and MFS on GKE - simple implementation of distributed storage on Kubernetes*. 

Remember to add to your cluster before applying `*.yml` files:

~~~~
export MFSMASTER=<YOUR_MFSMASTER_IP>
~~~~
~~~~
cat <<EOF | kubectl apply -f -
---
kind: Service
apiVersion: v1
metadata:
  name: mfsmaster
  namespace: default
spec:
  type: ExternalName
  externalName: ${MFSMASTER}
...
EOF
~~~~
