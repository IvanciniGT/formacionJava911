    1  whoami
    2  pwd
    3  ls
    4  ls
    5  aws ec2 describe-instances+
    6  aws ec2 describe-instances
    7  clear
    8  aws ec2 describe-instances
    9  mkdir curso
   10  clear
   11  terraform --version
   12  docker image pull nginx:latest
   13  docker container create --name minginx nginx:latest
   14  docker container start minginx
   15  docker container inspect minginx
   16  curl http://172.17.0.2:80
   17  docker container rm -f minginx
   18  docker container create --name minginx -p 172.31.39.250:8080:80 nginx:latest
   19  docker container start minginx
   20  curl http://172.17.0.2:80
   21  curl 172.31.39.250:8080
   22  env
   23  docker container rm -f minginx
   24  docker container create --name minginx -p 172.31.39.250:8080:80 -e VAR1=valor1 nginx:latest
   25  docker container start minginx
   26  ps -eaf 
   27  ps -eaf --forest
   28  ps -eaf --forest
   29  docker exec minginx sleep 3600
   30  ps -eaf --forest
   31  ps -eaf --forest
   32  ps -eaf --forest
   33  ps -eaf --forest
   34  docker exec minginx sleep 3600
   35  ps -eaf --forest
   36  ps -eaf --forest
   37  docker exec minginx env
   38  docker container rm -f minginx
   39  history
   40  docker image inspect nginx:lastest
   41  docker image inspect nginx:latest
   42  node programa.js 
   43  node programa.js 
   44  python3 programa.py 
   45  df -h
   46  df -h
   47  terraform init
   48  clear
   49  terraform graph
   50  terraform graph | dot -Tpng > grafo.png
   51  sudo apt install graphviz -y
   52  terraform graph | dot -Tpng > grafo.png
   53  terraform graph | dot -Tpng > grafo.svg
   54  terraform graph | dot -Tsvg > grafo.svg
   55  terraform graph | dot -Tsvg > grafo.svg
   56  terraform graph | dot -Tsvg > grafo.svg
   57  terraform graph | dot -Tsvg > grafo.svg
   58  terraform graph | dot -Tsvg > grafo.svg
   59  terraform plan
   60  terraform apply
   61  docker ps
   62  docker container list
   63  docker rm -f minginx
   64  docker image list
   65  docker container list
   66  terraform refresh
   67  terraform plan
   68  terraform apply --auto-approve
   69  terraform apply --auto-approve
   70  terraform plan
   71  terraform apply --auto-approve
   72  terraform destroy
   73  cat terraform.tfstate.backup | grep ip_address
   74  cat terraform.tfstate.backup 
   75  cat terraform.tfstate.backup | jq
   76  sudo apt  install jq -y
   77  cat terraform.tfstate.backup | jq ".resources"
   78  cat terraform.tfstate.backup | jq ".resources.1"
   79  cat terraform.tfstate.backup | jq ".resources[0]"
   80  cat terraform.tfstate.backup | jq ".resources.1.instances.1"
   81  cat terraform.tfstate.backup | jq ".resources.1.instances"
   82  cat terraform.tfstate.backup | jq ".resources.1"
   83  cat terraform.tfstate.backup | jq ".resources[0].instances[0]"
   84  cat terraform.tfstate.backup | jq ".resources[0].instances[0].attributes.ip_address"
   85  cd ..
   86  cd 1-outputs/
   87  terraform apply --auto-approve
   88  terraform state
   89  terraform state list
   90  terraform state show docker_container.contenedor
   91  terraform state show -json docker_container.contenedor
   92  terraform state show --json docker_container.contenedor
   93  terraform state show --help
   94  terraform state show  docker_container.contenedor | grep ip_address
   95  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.ip_address"
   96  terraform state show  docker_container.contenedor
   97  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.ip_address"
   98  clear
   99  terraform init
  100  terraform init -upgrade
  101  terraform init -upgrade
  102  terraform apply --auto-approbe
  103  terraform apply --auto-approve
  104  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.ip_address"
  105  terraform refresh
  106  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.network_data[0].ip_address"
  107  terraform init -upgrade
  108  terraform refresh
  109  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.network_data[0].ip_address"
  110  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.ip_address"
  111  terraform apply --auto-approve
  112  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.network_data[0].ip_address"
  113  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.ip_address"
  114  cat terraform.tfstate | jq ".outputs.direccion_ip.value"
  115  terraform output
  116  terraform output direccion_ip
  117  terraform output --json
  118  terraform output --json direccion_ip
  119  terraform output --raw direccion_ip
  120  terraform apply --auto-approve
  121  cat terraform.tfstate | jq ".resources[0].instances[0].attributes.ip_address"
  122  terraform init -upgrade
  123  terraform apply --auto-approve
  124  terraform apply --auto-approve
  125  terraform output --json direccion_ip
  126  terraform state list
  127  terraform state show docker_container.contenedor
  128  terraform destroy --auto-approve
  129  cd ..
  130  cd 2-variables/
  131  clear
  132  cd ..
  133  cd 2-variables
  134  terraform apply 
  135  terraform apply --var nombre_contenedor=minginx_nuevo
  136  terraform refresh
  137  terraform apply --var nombre_contenedor=minginx_nuevo
  138  terraform destroy --auto-approve
  139  terraform destroy --var nombre_contenedor=minginx_nuevo
  140  docker ps
  141  docker rm -f minginx_nuevo
  142  terraform apply --var nombre_contenedor=minginx_nuevo
  143  terraform destroy --var nombre_contenedor=minginx_nuevo
  144  terraform apply --var-file entoro_pruebas.tfvars 
  145  terraform apply --var-file entoro_pruebas.tfvars 
  146  history
  147  terraform apply 
  148  terraform apply --var-file entorno_pruebas.tfvars 
  149  terraform plant
  150  clear
  151  terraform plan
  152  terraform plan
  153  terraform plan
  154  terraform plan
  155  terraform apply --auto-approve
  156  docker exec nombre_por_defecto env
  157  terraform apply --auto-approve
  158  docker exec nombre_por_defecto env
  159  docker exec nombre_por_defecto env
  160  terraform apply --auto-approve
  161  docker exec nombre_por_defecto env
  162  docker exec nombre_por_defecto env
  163  terraform apply --auto-approve
  164  clear
  165  cd ..
  166  cd ..
  167  echo ".terraform/" > .git_ignore
  168  git init
  169  git add :/
  170  git commit -m 'Alta'
  171  git remote add origin https://github.com/IvanciniGT/formacionTerraform9.git
  172  git config --global credential.helper store
  173  git push -u origin master
  174  clear
  175  javac App.java
  176  java App
  177  java App.java
  178  python3 programa.py 
  179  node programa.js 
  180  java App.java
  181  java App.java
  182  java App.java
  183  java App.java
  184  java App.java
  185  java App.java
  186  java App.java
  187  java App.java
  188  java App.java
  189  java App.java
  190  java App.java
  191  java App.java
  192  java App.java
  193  java App.java
  194  java App.java
  195  java App.java
  196  java App.java
  197  java App.java
  198  java App.java
  199  java App.java
  200  java App.java
  201  java App.java
  202  java App.java
  203  java App.java
  204  java App.java
  205  java App.java
  206  java App.java
  207  java App.java
  208  mkdir -p com/curso/paquetea
  209  mkdir -p es/curso/paqueteb
  210  mkdir -p es/curso/paqueteb/impl
  211  mkdir compilado
  212  javac -d compilado com/curso/paquetaa/* es/curso/paqueteb/* es/curso/paqueteb/impl/*
  213  javac -d compilado com/curso/paquetaa/*.java es/curso/paqueteb/*.java es/curso/paqueteb/impl/*.java
  214  javac -d compilado  com/curso/paquetaa/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java      
  215  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  216  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  217  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  218  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  219   java -cp compilado com.curso.paquetea.App
  220   java -cp compilado com.curso.paquetea.App
  221  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  222   java -cp compilado com.curso.paquetea.App
  223   java -cp compilado com.curso.paquetea.App
  224  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  225  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  226   java -cp compilado com.curso.paquetea.App
  227  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  228  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  229   java -cp compilado com.curso.paquetea.App
  230  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  231   java -cp compilado com.curso.paquetea.App
  232  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  233   java -cp compilado com.curso.paquetea.App
  234  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  235   java -cp compilado com.curso.paquetea.App
  236  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  237  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  238   java -cp compilado com.curso.paquetea.App
  239  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  240  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java  es/curso/paqueteb/impl/*.java                                                                      
  241  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java         
  242  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java         
  243  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java         
  244  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java         
  245  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java         
  246  javac -d compilado  com/curso/paquetea/*.java  es/curso/paqueteb/*.java         
  247  javac -d compilado  --module-source-path .  modulo1/*.java  modulo1/com/curso/paquetea/*.java  modulo2/*.java  modulo2/es/curso/paqueteb/*.java  modulo2/es/curso/paqueteb/impl/*.java
  248  javac -d compilado  --module-source-path .  modulo1/*.java  modulo1/com/curso/paquetea/*.java  modulo2/*.java  modulo2/es/curso/paqueteb/*.java  modulo2/es/curso/paqueteb/impl/*.java
  249  clear
  250  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  251  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  252  cleaar
  253  clear
  254  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  255  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  256  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  257  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  258   java --module-path compilado -m moduloa/com.curso.paquetea.App
  259  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  260  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  261   java --module-path compilado -m moduloa/com.curso.paquetea.App
  262  javac -d compilado  --module-source-path .  moduloa/*.java  moduloa/com/curso/paquetea/*.java  modulob/*.java  modulob/es/curso/paqueteb/*.java  modulob/es/curso/paqueteb/impl/*.java
  263   java --module-path compilado -m moduloa/com.curso.paquetea.App
  264  javac -d compilado  --module-source-path .  diccionario-api/*.java  diccionario-api/com/curso/diccionario/*.java 
  265  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java 
  266  terraform plan
  267  env
  268  terraform plan
  269  terraform plan
  270  terraform plan
  271  terraform plan
  272  terraform plan
  273  terraform plan
  274  terraform plan --var-file ruina.tfvars
  275  terraform apply --auto-approve --var-file ruina.tfvars
  276  docker ps
  277  docker image
  278  docker pss
  279  docker images
  280  docker image rm nginx:latest
  281  terraform refresh
  282  clear
  283  terraform apply --auto-approve --var-file ruina.tfvars
  284  terraform plan
  285  terraform plan
  286  terraform plan
  287  terraform plan
  288  terraform plan
  289  terraform plan
  290  terraform plan
  291  terraform plan
  292  terraform plan
  293  terraform plan
  294  terraform plan
  295  terraform plan
  296  terraform plan
  297  terraform plan
  298  terraform plan
  299  terraform plan
  300  terraform plan
  301  terraform plan
  302  terraform plan
  303  terraform plan
  304  terraform plan
  305  terraform plan
  306  terraform plan
  307  terraform plan
  308  terraform plan
  309  terraform plan
  310  terraform plan
  311  terraform plan
  312  terraform plan
  313  terraform plan
  314  terraform plan
  315  terraform plan
  316  terraform plan
  317  terraform plan
  318  terraform plan
  319  terraform plan
  320  terraform plan
  321  terraform plan
  322  terraform plan
  323  terraform plan
  324  terraform plan
  325  git add :/ && git commit -m 'variables' && git push
  326  cd Profesor
  327  git pull
  328  terraform plan
  329  terraform plan --var-file ruina.tfvars 
  330  #terraform plan --var-file ruina.tfvars 
  331  #terraform plan
  332  terraform plan
  333  terraform plan
  334  terraform apply --auto-approve
  335  terraform apply --auto-approve
  336  terraform apply --auto-approve
  337  terraform apply --auto-approve
  338  terraform apply --auto-approve
  339  terraform plan --auto-approve
  340  terraform plan
  341  git add :/ && git commit -m 'multiples recursos' && git push
  342  terraform apply --auto-approve
  343  terraform apply --auto-approve
  344  terraform apply --auto-approve
  345  terraform apply --auto-approve
  346  terraform output direcciones_ip_contenedores_mas_personalizados_como_texto
  347  terraform output --json  direcciones_ip_contenedores_mas_personalizados_como_texto
  348  terraform output --raw  direcciones_ip_contenedores_mas_personalizados_como_texto
  349  git add :/ && git commit -m 'multiples recursos' && git push
  350  git add :/ && git commit -m 'multiples recursos' && git push
  351  git status
  352  cd ..
  353  git init
  354  git add :/
  355  git commit -m 'Alta'
  356  git remote add origin https://github.com/IvanciniGT/formacionJava911.git
  357  git config --global credential.helper store
  358  git push -u origin master
  359  terraform apply --auto-approve
  360  terraform apply --auto-approve
  361  docker ps
  362  docker ps --all
  363  terraform apply --auto-approve
  364  terraform apply --auto-approve
  365  terraform apply --auto-approve
  366  terraform apply --auto-approve
  367  terraform apply --auto-approve
  368  terraform destroy --auto-approve
  369  terraform apply --auto-approve
  370  terraform apply --auto-approve
  371  terraform destroy --auto-approve
  372  terraform apply --auto-approve
  373  terraform destroy --auto-approve
  374  terraform apply --auto-approve
  375  terraform destroy --auto-approve
  376  terraform apply --auto-approve
  377  terraform destroy --auto-approve
  378  terraform apply --auto-approve
  379  clear
  380  git add:/ && git commit -m 'local-exec' && git push
  381  git add :/ && git commit -m 'local-exec' && git push
  382  cd Profesor
  383  git pull
  384  terraform destroy --auto-approve
  385  terraform apply --auto-approve
  386  terraform destroy --auto-approve
  387  terraform apply --auto-approve
  388  terraform destroy --auto-approve
  389  terraform apply --auto-approve
  390  terraform apply --auto-approve
  391  terraform apply --auto-approve
  392  terraform apply --auto-approve
  393  terraform apply --auto-approve
  394  terraform apply --auto-approve
  395  terraform init
  396  terraform apply --auto-approve
  397  terraform apply --auto-approve
  398  terraform apply --auto-approve
  399  terraform apply --auto-approve
  400  env
  401  env
  402  terraform apply --auto-approve
  403  terraform apply --auto-approve
  404  terraform apply --auto-approve
  405  terraform apply --auto-approve
  406  terraform apply --auto-approve
  407  git add :/ && git commit -m 'local-exec' && git push
  408  ls ~/.ssh
  409  cat  ~/.ssh/authorized_keys 
  410  git add :/ && git commit -m 'local-exec' && git push
  411  git add :/ && git commit -m 'local-exec' && git push
  412  git add :/ && git commit -m 'local-exec' && git push
  413  git remote get-url
  414  cd cursoJava/
  415  git remote get-url
  416  git remote get-url origin
  417  cd proyecto/
  418  ls
  419  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  420    java --module-path compilado -m moduloa/com.curso.paquetea.App ES manana
  421   java --module-path compilado -m app/com.curso.paquetea.App ES manana
  422   java --module-path compilado -m app/com.curso.app.App ES manana
  423   java --module-path compilado -m app/com.curso.app.App ES manana
  424  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  425   java --module-path compilado -m app/com.curso.app.App ES manana
  426  cd compilado/
  427   java --module-path . -m app/com.curso.app.App ES manana
  428  cd ..
  429  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  430   java --module-path compilado -m app/com.curso.app.App ES manana
  431  cd ..
  432  cd proyecto/
  433  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  434  rm app/com/curso/App.java 
  435  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  436   java --module-path compilado -m app/com.curso.app.App ES manana
  437  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  438  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  439   java --module-path compilado -m app/com.curso.app.App ES manana
  440  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  441   java --module-path compilado -m app/com.curso.app.App ES manana
  442   java --module-path compilado -m app/com.curso.app.App ES manana
  443  head -n 10 ../../diccionario.ES.properties 
  444  tail -n 10 ../../diccionario.ES.properties 
  445  wc -l ../../diccionario.ES.properties 
  446  cd ..
  447  cd ..
  448  cd ..
  449  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  450  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  451   java --module-path compilado -m app/com.curso.app.App ES manana
  452  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  453  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  454  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  455  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  456   java --module-path compilado -m app/com.curso.app.App ES manana
  457  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  458   java --module-path compilado -m app/com.curso.app.App ES manana
  459   java --module-path compilado -m app/com.curso.app.App ES murciegalo
  460  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  461   java --module-path compilado -m app/com.curso.app.App ES murciegalo
  462   java --module-path compilado -m app/com.curso.app.App ES con
  463   java --module-path compilado -m app/com.curso.app.App ES cin
  464  javac -d compilado  --module-source-path .  diccionarioapi/*.java  diccionarioapi/com/curso/diccionario/*.java  diccionarioficheros/*.java  diccionarioficheros/com/curso/diccionario/impl/*.java  app/*.java  app/com/curso/app/*.java 
  465   java --module-path compilado -m app/com.curso.app.App ES cin
  466   java --module-path compilado -m app/com.curso.app.App ES cin
  467  mvn --version
  468  sudo apt install maven -y
  469  clear
  470  mvn compile
  471  mvn compile
  472  mvn package
  473  mvn install
  474  mvn install
  475  cd ..
  476  cd app
  477  mvn install
  478  mvn install
  479  cd ..
  480  mvn install
  481  mvn install
  482  mvn clean
  483  mvn compile
  484  mvn package
  485  mvn install
  486  git init
  487  rm -rf .git
  488  git add :/ && git commit -m 'local-exec' && git push
  489  clear
  490  git init
  491  git add :/
  492  git commit -m 'alta'
  493  git remote add origin https://github.com/IvanciniGT/formacion-java-9-diccionario.git
  494  git push -u origin master
  495  cd ,,
  496  cd ..
  497  cd diccionarioficheros/
  498  git init
  499  git add :/
  500  git commit -m 'alta0
'
  501  git remote add origin https://github.com/IvanciniGT/formacion-java-9-diccionario-ficheros.git
  502  git push -u origin master
  503  cd ..
  504  cd app
  505  git init
  506  git commit -m 'alta'
  507  git add :/
  508  git commit -m 'alta'
  509  git remote add origin https://github.com/IvanciniGT/formacion-java-9-app.git
  510  git push -u origin master
  511  cd ..
  512  git init
  513  git add :/
  514  git rm --cached app
  515  git submodule add https://github.com/IvanciniGT/formacion-java-9-app app
  516  git submodule add https://github.com/IvanciniGT/formacion-java-9-app app
  517  git submodule add https://github.com/IvanciniGT/formacion-java-9-diccionario diccionarioapi
  518  git rm --cached -f app 
  519  git rm --cached -f diccionarioapi
  520  git rm --cached -f diccionarioficheros
  521  git submodule add https://github.com/IvanciniGT/formacion-java-9-diccionario diccionarioapi
  522  git submodule add https://github.com/IvanciniGT/formacion-java-9-app app
  523  git submodule add https://github.com/IvanciniGT/formacion-java-9-diccionario-ficheros diccionarioficheros
  524  git add .
  525  git commit -m 'alta'
  526  git remote add origin https://github.com/IvanciniGT/formacionjava-9-general.git
  527  git push -u origin master
  528  history > comandos.sh
