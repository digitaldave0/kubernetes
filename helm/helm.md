## helm

## simple helm chart

```code
apiVersion: apps/v1
kind: Deployment
metadata:
  name: "{{ .Values.name }}"
spec:
  replicas: 2
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
> gets deployment from values.yaml

## install helm

```bash 
wget https://get.helm.sh/helm-v3.9.3-linux-amd64.tar.gz
tar -zxvf ~/Downloads/helm-v3.9.3-linux-amd64.tar.gz -C ~/Projects/stuff/helm
sudo mv linux-amd64/helm /usr/local/bin/helm
which helm
helm
```



