## helm



## install helm on linux

```bash 
wget https://get.helm.sh/helm-v3.9.3-linux-amd64.tar.gz
tar -zxvf ~/Downloads/helm-v3.9.3-linux-amd64.tar.gz -C ~/Projects/stuff/helm
sudo mv linux-amd64/helm /usr/local/bin/helm
which helm
helm
```

## install easy way with brew.

```bash
brew install helm
```


> injects values from values.yaml into deployment yaml for deployment

## simple helm chart install nginx

```code
apiVersion: apps/v1
kind: Deployment
metadata:
  name: "{{ .Values.name }}"
spec:
  replicas: 1 
  selector:
    matchLabels:
      app: {{ .Values.name }}
  template:
    metadata:
      labels:
        app: {{ .Values.name }}
    spec:
      containers:
      - name: {{ .Values.name }}
        image: {{ .Values.deployment.image}}:{{ .Values.deployment.tag}}
        ports:
        - containerPort: {{ .Values.port }}
```
### create template

```bash
helm template my-example-app my-example-app
```
### deploy 

```bash
helm install my-example-app my-example-app
#list deployment
helm list
```
### upgrade 

```bash
# upgrade and pass values from values.yaml
helm upgrade my-example-app my-example-app --values ./my-example-app/values.yaml
helm list 
```

### add repo for charts

```bash
helm repo list
helm repo add stable https://charts.helm.sh/stable
helm repo update
```
### install wordpress using chart from repo

```bash
helm search hub wordpress
helm install --set wordpressBlogName='My Blog!' mywordpress bitnami/wordpress
```


 




