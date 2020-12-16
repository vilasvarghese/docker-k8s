    1  clear
    2  ls
    3  kubectl get nodes
    4  kubectl config view -o jsonpath='{"Cluster name\tServer\n"}{range.cluster[*]]}{.name}{"\t"}{.cluster.server}{"\n"}{end}'
    5  kubectl config view -o jsonpath='{"Cluster name\tServer\n"}{range.clusters[*]]}{.name}{"\t"}{.cluster.server}{"\n"}{end}'
    6  kubectl config view -o jsonpath='{"Cluster name\tServer\n"}{range .clusters[*]}{.name}{"\t"}{.cluster.server}{"\n"}{end}'
    7  export CLUSTER_NAME="kubernetes"
    8  APISERVER=$(kubectl config view -o jsonpath="{.clusters[?(@.name==\"$CLUSTER_NAME\")].cluster.server}")
    9  echo $APISERVER
   10  cat ~/.kube/config
   11  user
   12  whoam i
   13  whoami
   14  clear
   15  ls
   16  ls -a
   17  cd .kube/
   18  ls
   19  vi config 
   20  kubectl get secrets
   21  TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -D)
   22  TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 --D)
   23  TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -D)
   24  base64
   25  base64 --help
   26  TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -d)
   27  $(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -d)
   28  echo $TOKEN
   29  TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -d)TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -d)
   30  echo $TOKEN
   31  d
   32  cd
   33  ls -a
   34  vi ./kube/config
   35  pwd
   36  cat ~/.kube/config
   37  vi ~/kubernetes/ca.crt
   38  pwd
   39  vi .kube/config
   40  curl -X GET .--cacert LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRFNU1USXlNREUzTURjd01sb1hEVEk1TVRJeE56RTNNRGN3TWxvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTElXCjVpNU5tZUJRSG5TcUpBOCt3YnVBTS83WURtMkFqMU1NTGJXM0JtcFJPTVUyR2dCejNPT2hrTThpL0dEZlZLQk0KMU50WHBkNjgzRHlGRlppYjM2ODNCK0R3S1FYNWZkK0pLYkFvVk44ZEtRQ2lwNW5WTDFYQWQ4TFFhcjBva1BRSwpkU05aYVR4ZkNyZjA0NzJRSDhkeG9sNXBqQUgrLy80K3cwVERmQnV2ZjNxbGpCSnJmcjJhRHh2YVVyQU1BeTN2CjJBZ3NxYnpqdDR3OFhEVHdvTVJkU2pyMDl1WXRiWkx4SFEvdko4cXF0Z2FUdGlUV1lSblVCN0krTFVWUnFGSkkKNG9oVlM0OTU0K0FvQ0x6ZjVhREZlcjBDSUtnSFZ4ZkVNTVRjREo5NWRVSVF0cm5ENlNqbWZSKytUcCtBYzVSbgpkUW1tN1dLRFVEVEkvR21NWXcwQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFDd2ZpdENFaU1DUm0xYmNMVXdNdXlRMTJ1eUMKNWY2LzVTcGdqL2t4d1dBZTVoUnhSelNyVG9xa2tzMUpCTWdVQnpaTlJvZlhpbFltaXNIZTN6VmdvbjJvTTJxQQpEOEtPV3UrMDNwdkFybi9aVlNnU0tpdFQzZzFYd0FoNHBma2RWSnVUQlhsa0VsR1k4Z1BZanFHaXU2ZXMrYi9jClJvQjV0L3RZZDF3UFh4aGFUZHRmbS8rZVlSWi9RYnI5YXFZd1cwZVVPVHM5dXBQa0J4MGcrdVRDR3VzSzRhUWkKYW1LSTEyTkNzbU9uSlRNWTNidHhjL2hDUDd0bmMzV1FXckY1RkpXbUUyT1NQZnBtRlJvNlVJanoxSUFKZXVkbwpnVVNFaTEyV1g1SGE0SHRpSzFrNFlkdnBwcWpJMitsQ2ZpNHQrSXVsdENZMGFQSmxuZnJseHNoMG05Zz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo= .--header "Authorization: Bearer $TOKEN" .$APISERVER/version
   41  curl --help
   42  curl -X GET .--cacert LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRFNU1USXlNREUzTURjd01sb1hEVEk1TVRJeE56RTNNRGN3TWxvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTElXCjVpNU5tZUJRSG5TcUpBOCt3YnVBTS83WURtMkFqMU1NTGJXM0JtcFJPTVUyR2dCejNPT2hrTThpL0dEZlZLQk0KMU50WHBkNjgzRHlGRlppYjM2ODNCK0R3S1FYNWZkK0pLYkFvVk44ZEtRQ2lwNW5WTDFYQWQ4TFFhcjBva1BRSwpkU05aYVR4ZkNyZjA0NzJRSDhkeG9sNXBqQUgrLy80K3cwVERmQnV2ZjNxbGpCSnJmcjJhRHh2YVVyQU1BeTN2CjJBZ3NxYnpqdDR3OFhEVHdvTVJkU2pyMDl1WXRiWkx4SFEvdko4cXF0Z2FUdGlUV1lSblVCN0krTFVWUnFGSkkKNG9oVlM0OTU0K0FvQ0x6ZjVhREZlcjBDSUtnSFZ4ZkVNTVRjREo5NWRVSVF0cm5ENlNqbWZSKytUcCtBYzVSbgpkUW1tN1dLRFVEVEkvR21NWXcwQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFDd2ZpdENFaU1DUm0xYmNMVXdNdXlRMTJ1eUMKNWY2LzVTcGdqL2t4d1dBZTVoUnhSelNyVG9xa2tzMUpCTWdVQnpaTlJvZlhpbFltaXNIZTN6VmdvbjJvTTJxQQpEOEtPV3UrMDNwdkFybi9aVlNnU0tpdFQzZzFYd0FoNHBma2RWSnVUQlhsa0VsR1k4Z1BZanFHaXU2ZXMrYi9jClJvQjV0L3RZZDF3UFh4aGFUZHRmbS8rZVlSWi9RYnI5YXFZd1cwZVVPVHM5dXBQa0J4MGcrdVRDR3VzSzRhUWkKYW1LSTEyTkNzbU9uSlRNWTNidHhjL2hDUDd0bmMzV1FXckY1RkpXbUUyT1NQZnBtRlJvNlVJanoxSUFKZXVkbwpnVVNFaTEyV1g1SGE0SHRpSzFrNFlkdnBwcWpJMitsQ2ZpNHQrSXVsdENZMGFQSmxuZnJseHNoMG05Zz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo= --header "Authorization: Bearer $TOKEN" .$APISERVER/version
   43  curl -X GET --cacert LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUN5RENDQWJDZ0F3SUJBZ0lCQURBTkJna3Foa2lHOXcwQkFRc0ZBREFWTVJNd0VRWURWUVFERXdwcmRXSmwKY201bGRHVnpNQjRYRFRFNU1USXlNREUzTURjd01sb1hEVEk1TVRJeE56RTNNRGN3TWxvd0ZURVRNQkVHQTFVRQpBeE1LYTNWaVpYSnVaWFJsY3pDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDQVFvQ2dnRUJBTElXCjVpNU5tZUJRSG5TcUpBOCt3YnVBTS83WURtMkFqMU1NTGJXM0JtcFJPTVUyR2dCejNPT2hrTThpL0dEZlZLQk0KMU50WHBkNjgzRHlGRlppYjM2ODNCK0R3S1FYNWZkK0pLYkFvVk44ZEtRQ2lwNW5WTDFYQWQ4TFFhcjBva1BRSwpkU05aYVR4ZkNyZjA0NzJRSDhkeG9sNXBqQUgrLy80K3cwVERmQnV2ZjNxbGpCSnJmcjJhRHh2YVVyQU1BeTN2CjJBZ3NxYnpqdDR3OFhEVHdvTVJkU2pyMDl1WXRiWkx4SFEvdko4cXF0Z2FUdGlUV1lSblVCN0krTFVWUnFGSkkKNG9oVlM0OTU0K0FvQ0x6ZjVhREZlcjBDSUtnSFZ4ZkVNTVRjREo5NWRVSVF0cm5ENlNqbWZSKytUcCtBYzVSbgpkUW1tN1dLRFVEVEkvR21NWXcwQ0F3RUFBYU1qTUNFd0RnWURWUjBQQVFIL0JBUURBZ0trTUE4R0ExVWRFd0VCCi93UUZNQU1CQWY4d0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQkFDd2ZpdENFaU1DUm0xYmNMVXdNdXlRMTJ1eUMKNWY2LzVTcGdqL2t4d1dBZTVoUnhSelNyVG9xa2tzMUpCTWdVQnpaTlJvZlhpbFltaXNIZTN6VmdvbjJvTTJxQQpEOEtPV3UrMDNwdkFybi9aVlNnU0tpdFQzZzFYd0FoNHBma2RWSnVUQlhsa0VsR1k4Z1BZanFHaXU2ZXMrYi9jClJvQjV0L3RZZDF3UFh4aGFUZHRmbS8rZVlSWi9RYnI5YXFZd1cwZVVPVHM5dXBQa0J4MGcrdVRDR3VzSzRhUWkKYW1LSTEyTkNzbU9uSlRNWTNidHhjL2hDUDd0bmMzV1FXckY1RkpXbUUyT1NQZnBtRlJvNlVJanoxSUFKZXVkbwpnVVNFaTEyV1g1SGE0SHRpSzFrNFlkdnBwcWpJMitsQ2ZpNHQrSXVsdENZMGFQSmxuZnJseHNoMG05Zz0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo= --header "Authorization: Bearer $TOKEN" $APISERVER/version
   44  vi temp.crt
   45  curl -X GET --cacert temp.crt --header "Authorization: Bearer $TOKEN" $APISERVER/version
   46  ls -a
   47  cd .kube/
   48  ls
   49  vi config 
   50  clear
   51  ls
   52  cd 
   53  cd docker-k8s/
   54  ls
   55  cd admin
   56  ls
   57  mkdir auth
   58  cd auth/
   59  ls
   60  clear 
   61  vi users.csv
   62  vi /etc/kubernetes/manifests/kube-apiserver.yaml 
   63  sudo su
   64  kubectl get nodes
   65  watch kubectl get node
   66  kubectl get pods
   67  docker ps
   68  sudo docker ps
   69  kubectl get nodes
   70  kubectl cluster-info
   71  kubectl version
   72  sudosu
   73  sudo su
   74  kubectl version
   75  sudo su
   76  kubectl get nodes
   77  vi roles.yaml
   78  kubectl create -f roles.yaml 
   79  kubectl get pod
   80  kubectl get pod -n kube-system
   81  vi /etc/kubernetes/manifests/kube-apiserver.yaml 
   82  sudo su
   83  curl -v -k https://localhost:6443/api/v1/pods -u "user1:password123"
   84  curl -v -k https://192.168.56.130:6443/api/v1/pods -u "user1:password123"
   85  curl -v -k http://192.168.56.130:6443/api/v1/pods -u "user1:password123"
   86  sudo su
   87  kubectl get nodes
   88  sudo su
   89  kubectl get nodes
   90  clear
   91  kubectl get nodes
   92  openssl
   93  openssl genrsa -out ca.key 2048
   94  ls
   95  openssl req -new -key ca.key -subj "/CN=KUBERNETES-CA" -out ca.csr
   96  ls
   97  openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt
   98  ls
   99  openssl genrsa out admin.key 2048
  100  openssl genrsa -out admin.key 2048
  101  ls
  102  openssl req -new -key admin.key -subj "/CN=kube-admin/O=system:masters" -out admin.csr
  103  ls
  104  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt
  105  ls
  106  cp admin.crt temp.crt
  107  ls
  108  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt
  109  ls
  110  rm -rf admin.crt 
  111  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt
  112  clear
  113  ls
  114  vi admin.crt 
  115  vi admin.key 
  116  vi ca.csr
  117  vi ca.crt
  118  vi admin.csr
  119  vi admin.crt 
  120  rm -rf admin.crt 
  121  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt
  122  vi ca.crt 
  123  vi ca.key 
  124  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt -CAcreateserial
  125  ls
  126  rm -rf admin.crt
  127  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt -CAcreateserial
  128  ls
  129  openssl --help
  130  openssl x509 --help
  131  openssl genrsa -out scheduler.key 2048
  132  ls
  133  openssl req -new -key scheduler.key -subj "/CN=systemkube-scheduler/O=system:masters" -out scheduler.csr
  134  ls
  135  openssl x509 -req -in scheduler.csr -CA ca.crt -CAkey ca.key -out scheduler.crt -CAcreateserial
  136  ls
  137  openssl genrsa -out controlMgr.key 2048
  138  openssl req -new -key controlMgr.key -subj "/CN=systemkube-control-manager/O=system:masters" -out controlMgr.csr
  139  ls
  140  openssl x509 -req -in controlMgr.csr -CA ca.crt -CAkey ca.key -out admin.crt -CAcreateserial
  141  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt  -CAcreateserial
  142  openssl x509 -req -in scheduler.csr -CA ca.crt -CAkey ca.key -out scheduler.crt  -CAcreateserial
  143  openssl x509 -req -in controlMgr.csr -CA ca.crt -CAkey ca.key -out controlMgr.crt  -CAcreateserial
  144  ls
  145  vi admin.crt 
  146  vi controlMgr.crt 
  147  vi scheduler.crt 
  148  clear
  149  openssl genrsa -out proxy.key 2048
  150  openssl req -new -key proxy.key -subj "/CN=systemkube-proxy/O=system:masters" -out proxy.csr
  151  openssl x509 -req -in proxy.csr -CA ca.crt -CAkey ca.key -out proxy.crt  -CAcreateserial
  152  ls
  153  vi proxy.crt 
  154  clear
  155  curl https://kube-apiserver:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  156  curl https://localhost:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  157  clear
  158  curl https://kube-apiserver:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  159  kubectl get nodes
  160  kubectl get pod -n kube-system
  161  curl https://kube-apiserver-kmaster:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  162  kubectl get pod -n kube-system -o wide
  163  curl https://192.168.56.130:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  164  curl https://192.168.56.130:6443/api/v1/pods
  165  curl https://192.168.56.130:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  166  clear
  167  ls
  168  mkdir temp
  169  cp *.crt temp
  170  cp *.csr temp
  171  mv *.crt temp
  172  mv *.csr temp
  173  mv *.key temp
  174  ls
  175  mv ca.srl temp
  176  ls
  177  mv roles.yaml temp/
  178  mv users.csv temp/
  179  cd temp/
  180  ls
  181  vi ca.srl 
  182  clear
  183  cd ..
  184  clear
  185  openssl genrsa -out ca.key 2048
  186  ls
  187  openssl req -new -key ca.key -subj "/CN=KUBERNETES-CA" -out ca.csr
  188  openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt
  189  ls
  190  openssl genrsa -out admin.key 2048
  191  openssl req -new -key admin.key -subj "/CN=kube-admin/O=system:masters" -out admin.csr
  192  openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt  -CAcreateserial
  193  curl https://kube-apiserver:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  194  curl https://kube-apiserver-kmaster:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  195  kubectl get pod -n kube-system
  196  curl https://kube-apiserver-kmaster:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  197  curl https://192.168.56.130:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  198  kubectl describe pod kube-apiserver-kmaster
  199  kubectl describe pod kube-apiserver-kmaster -n kube-system
  200   https://192.168.56.130:6443/healthz
  201  curl  https://192.168.56.130:6443/healthz
  202  clear
  203  kubectl config view -o jsonpath='{"Cluster name\tServer\n"}{range .clusters[*]}{.name}{"\t"}{.cluster.server}{"\n"}{end}'
  204  curl https://kubernetes:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt
  205  export CLUSTER_NAME="kubernetes"
  206  kubectl config view -o jsonpath="{.clusters[?(@.name==\"$CLUSTER_NAME\")].cluster.server}
  207  exit
  208  echo $CLUSTER_NAME
  209  APISERVER=$(kubectl config view -o jsonpath="{.clusters[?(@.name==\"$CLUSTER_NAME\")].cluster.server}")
  210  echo $APISERVER
  211  TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 --decode)
  212  echo $TOKEN
  213  curl -X GET $APISERVER/api --header "Authorization: Bearer $TOKEN" --insecure
  214  curl https://kubernetes:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt --insecure
  215  curl https://192.168.56.130:6443/api/v1/pods --key admin.key --cert admin.crt --cacert ca.crt --insecure
  216  clear
  217  openssl x509 -in /etc/kubernetes/pki/apiserver.crt -text -noout
  218  curl https://10.96.0.1:6443
  219  clear
  220  cd /etc/kubernetes/manifests/
  221  ls
  222  cd ..
  223  cd pki/
  224  ls
  225  cd -
  226  ls
  227  pwd
  228  cd 
  229  ls
  230  cd docker-k8s/
  231  ls
  232  cd admin/
  233  ls
  234  cd auth/
  235  ls
  236  openssl x509 -in admin.crt -text -noout
  237  clear
  238  cd /etc/kubernetes/pki/
  239  ls
  240  open x509 -in apiserver-etcd-client.crt 
  241  open x509 -in apiserver-etcd-client.crt -text -noout
  242  openssl x509 -in apiserver-etcd-client.crt -text -noout
  243  ls
  244  clear
  245  kubectl get nodes
  246  curl http://localhost:6443/
  247  curl http://localhost:8001/
  248  clear
  249  cd docker-k8s/
  250  ls
  251  cd yaml/
  252  ls
  253  cd ..
  254  cd admin
  255  ls
  256  cd auth/
  257  ls
  258  vi admin.crt 
  259  vi admin.csr 
  260  vi admin.key
  261  vi ca.csr
  262  vi ca.key 
  263  clear
  264  kubectl config view -o jsonpath='{"Cluster name\tServer\n"}{range .clusters[*]}{.name}{"\t"}{.cluster.server}{"\n"}{end}'
  265  curl https://192.168.56.130:6443/api
  266  export CLUSTER_NAME="kubernetes"
  267  APISERVER=$(kubectl config view -o jsonpath="{.clusters[?(@.name==\"$CLUSTER_NAME\")].cluster.server}")
  268  echo $APISERVER
  269  cat ~/.kube/config
  270  kubectl get secrets
  271  TOKEN=$(kubectl get secrets -o jsonpath="{.items[?(@.metadata.annotations['kubernetes\.io/service-account\.name']=='default')].data.token}"|base64 -d)
  272  echo $TOKEN
  273  curl -X GET --cacert ca.crt--header "Authorization: Bearer $TOKEN" $APISERVER/version
  274  ping $APISERVER
  275* 
  276  cat ~/.kube/config
  277  cp ca.crt ca1.crt
  278  vi ca1.crt 
  279  curl -X GET --cacert ca1.crt--header "Authorization: Bearer $TOKEN" $APISERVER/version
  280  curl -X GET --cacert ca1.crt --header "Authorization: Bearer $TOKEN" $APISERVER/version
  281  curl --help
  282  vi ca1.crt 
  283  vi ~/.kube/config 
  284  curl -X GET --cacert ca1.crt --header "Authorization: Bearer $TOKEN" $APISERVER/version
  285  vi ca1.crt 
  286  sudo su
  287  cd 
  288  cd docker-k8s/admin/auth/
  289  ls
  290  curl -X GET --cacert /etc/kubernetes/pki/ca.crt --header "Authorization: Bearer $TOKEN" $APISERVER/version
  291   vi ca1.crt 
  292  vi ~/.kube/config 
  293   vi ca1.crt 
  294  curl -X GET --cacert ca1.crt --header "Authorization: Bearer $TOKEN" $APISERVER/version
  295  rm -rf ca1.crt 
  296  clear
  297  ls
  298  cd /etc/kubernetes/manifests/
  299  pwd
  300  ls
  301  cd -
  302   ls
  303  mkdir cred
  304  cd cred
  305  openssl genrsa -out bob.key 2048
  306  openssl req -new -key bob.key -out bob.csr -subj "/CN=bob/0=eng"
  307  openssl req -new -key bob.key -out bob.csr -subj "/CN=bob/O=eng"
  308  ls
  309  clear
  310  ls
  311  mkdir bob
  312  cp bob.csr bob
  313  ls
  314  cd bob
  315  ls
  316  vi bob.csr 
  317  cat ../bob.csr | base64 | tr -d '\n'
  318  vi bob-csr.yaml
  319  kubectl create -f bob-csr.yaml 
  320  vi bob-csr.yaml
  321  kubectl create -f bob-csr.yaml 
  322  vi bob-csr.yaml
  323  kubectl create -f bob-csr.yaml 
  324  kubectl certificate approe bob-csr
  325  kubectl certificate approve bob-csr
  326  kubectl get csr
  327  kubectl get csr bob-csr -o json
  328   kubectl config set-credentials bob --client-certificate=bob.crt --client-key=bob.key
  329  ls
  330  kubectl get csr bob-csr -o jsonpath='{.status.certificate}' | base64 --decode > bob.crt
  331  ls
  332  vi ~/.kube/config 
  333  kubectl get namespace
  334  kubectl create namespace engineering
  335  kubectl config view
  336  kubectl auth can-i list pods --namespace engineering
  337  kubectl auth can-i list pods --namespace engineering --as no
  338  pwd
  339  cp ../../../../yaml/deployment/ng-pod.yaml .
  340  vi ng-pod.yaml 
  341  kubectl create -f ng-pod.yaml 
  342  kubectl get pod -n=engineering
  343  watch kubectl get pod -n=engineering
  344  ls
  345  watch kubectl get pod -n=engineering --as bob
  346  kubectl get pod -n=engineering --as bob
  347  vi role.yaml
  348  kubectl create -f role.yaml 
  349  kubectl get role
  350  vi role.yaml
  351  vi role.yaml -n=engineering
  352  kubectl get role -n=engineering
  353   vi bob-role-binding.yaml
  354  kubectl create -f bob-role-binding.yaml 
  355  kubectl get rolebinding
  356  kubectl get rolebinding -n=engineering
  357  kubectl get pods --namespace engineering --as bob
  358  kubectl get pods --as bob
  359  kubectl get nodes --namespace engineering --as bob
  360  vi bob-role-binding.yaml 
  361  vi role.yaml 
  362  vi cluster-role.yaml
  363  cd ..
  364  pwd
  365  ls
  366  openssl genrsa -out vilas.key 2048
  367  openssl req -new -key vilas.key -out vilas.csr
  368  ls
  369  mkdir vilas
  370  mv vilas.csr vilas.key vilas
  371  ls
  372  cd vilas/
  373  ls
  374  rm -rf vilas.csr 
  375  openssl req -new -key vilas.key -out vilas.csr -subj "/CN=vilas/O=eng"
  376  ls
  377  cat vilas.csr | base64 | tr -d '\n'
  378  ls ../bob/
  379  cp ../bob/bob-csr.yaml .
  380  mv bob-csr.yaml vilas-csr.yaml
  381  vi vilas
  382  vi vilas-csr.yaml 
  383  kubectl create -f vilas-csr.yaml 
  384  ls
  385  vi vilas-csr.yaml 
  386  kubectl approve certificate vilas-csr
  387  kubectl certificate approve vilas-csr
  388  kubectl get csr
  389  kubeclt get csr -o json
  390  kubeclt get csr vilas-csr -o json
  391  kubectl get csr vilas-csr -o json
  392  :q!
  393  ls
  394  kubectl get csr vilas-csr -o jsonpath='{.status.certificate}' | base64 --decode > vilas.crt
  395  ls
  396  kubectl config set-credentials bob --client-certificate=bob.crt --client-key bob.key
  397  kubectl config set-credentials vilas --client-certificate=vilas.crt --client-key vilas.key
  398  kubectl config view
  399  ls
  400  kubectl get pods -n=engineering --as bob
  401  vi ~/.kube/config 
  402  ls
  403  vi cluster-role.yaml
  404  kubectl create -f cluster-role.yaml
  405  kubectl get clusterrole
  406  :q!
  407  kubectl get clusterrole
  408  vi cluster-role-binding.yaml
  409  vi cluster-role.yaml 
  410  vi cluster-role-binding.yaml
  411  kubectl create -f cluster-role-binding.yaml 
  412  kubectl get nodes --as vilas
  413  kubecctl get pods --namespace engineering --as vilas
  414  kubectl get pods --namespace engineering --as vilas
  415  ls
  416  vi cluster-role.yaml 
  417  kubectl create -f cluster-role.yaml 
  418  kubectl get clusterroles | grep node-reader
  419  kubectl get nodes --as vilas
  420  ls
  421  vi cluster-role-binding.yaml 
  422  kubectl create -f cluster-role-binding.yaml 
  423  vi cluster-role-binding.yaml 
  424  kubectl delete -f cluster-role-binding.yaml 
  425  vi cluster-role-binding.yaml 
  426  kubectl create -f cluster-role-binding.yaml 
  427  kubectl get nodes --as vilas
  428  vi cluster-role.yaml 
  429  vi cluster-role-binding.yaml 
  430  kubectl delete -f cluster-role-binding.yaml 
  431  vi cluster-role-binding.yaml 
  432  kubectl create -f cluster-role-binding.yaml 
  433  kubectl get nodes --as vilas
  434  cd ../../
  435  cd ..
  436  cd auth/
  437  ls
  438  mv temp master
  439  ls
  440  git add *
  441  git status
  442  git commit -m "TLS auth"
  443  git config --global user.email "vilas.varghese@gmail.com"
  444  git config --global user.name "Vilas Varghese"
  445  git commit -m "TLS auth"
  446  git push origin master
  447  clear
  448  kubectl get roles
  449  kubectl get clusterroles
  450  history
  451  history >>roles.sh
