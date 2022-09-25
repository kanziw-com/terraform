# eks

> GitHub Actions로 아직 관리하고 있지 않은 project임


## References
> https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/18.29.0
> https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/examples/complete/main.tf
> https://github.com/terraform-aws-modules/terraform-aws-eks/issues/2009#issuecomment-1096604789


## Import kubectl context

```zsh
$ aws eks --region ap-northeast-2 update-kubeconfig \
   --name kanziw-com-eks \
   --kubeconfig ~/.kube/kanziw-com-eks
$ export KUBECONFIG=$KUBECONFIG:~/.kube/kanziw-com-eks
```


Check

```zsh
$ kubectl get svc 
NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   172.20.0.1   <none>        443/TCP   156m
```


> **Note**  
> If you met `You must be logged in to the server (Unauthorized)` error,  
> execute `env | grep AWS` and unset `AWS_*` envs from your shell.


## Install Nginx ingress contoller

```zsh
# https://kubernetes.github.io/ingress-nginx/deploy/#aws
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.1/deploy/static/provider/aws/deploy.yaml
```

## Destroy

```zsh
$ kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.1/deploy/static/provider/aws/deploy.yaml
$ terraform destroy
```
