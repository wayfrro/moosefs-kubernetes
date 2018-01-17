# moosefs-kubernetes

You can find here files for Codilime Meetup. 

Remember to add to your cluster:

---
kind: Service
apiVersion: v1
metadata:
  name: mfsmaster
  namespace: default
spec:
  type: ExternalName
  externalName: <MFSMASTER_IP>
