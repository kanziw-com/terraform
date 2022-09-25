# kubernetes-example-app

## Pre-requirement

- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- Set [eks](../eks) up


## Deploy

```zsh
# ignore validating webhook on ingress creation 🤔
# https://github.com/kubernetes/ingress-nginx/issues/8216#issuecomment-1118442022
$ kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

# Use real load balancer hostname
$ export LOAD_BALANCER_HOSTNAME=$(kubectl get service/ingress-nginx-controller -o=jsonpath='{.status.loadBalancer.ingress[0].hostname}')
$ sed -i '' "s/YOUR_LB_HOSTNAME/$LOAD_BALANCER_HOSTNAME/g" ingress.yml

# preview yml
$ kustomize build .
$ kubectl apply -k .

$ kubectl --namespace nginx get all
NAME                         READY   STATUS    RESTARTS   AGE
pod/nginx-6654b7b84b-h45r4   1/1     Running   0          54s

NAME                 TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
service/nginx-http   ClusterIP   172.20.48.192   <none>        80/TCP    54s

NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx   1/1     1            1           54s

NAME                               DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-6654b7b84b   1         1         1       54s
```


## Test

in Local

```zsh
$ kubectl port-forward --namespace nginx svc/nginx-http 8080:80
$ open http://localhost:8080/
```


in LoadBalancer

```zsh
$ open http://$LOAD_BALANCER_HOSTNAME
```


## Destroy

```
$ kubectl delete -k .
```
