# Consideraciones del examen

- 0.2 puntos cada pregunta correcta (4 en total)
- No penalizan las respuestas incorrectas
- Todas las preguntas pueden tener mas de una respuesta válida incluso pudiendo ser las cuatro opciones correctas.

## **1. Google Cloud Projects**

- A) Los recursos (eg. VMs, buckets, bases de datos, etc) pueden pertenecer a multiples proyectos
- B) Las políticas IAM no se pueden aplicar a nivel de proyecto, solo a nivel de recurso individual
- C) La facturación se realiza a nivel de proyecto
- D) La activación de API's en Google Cloud se realiza por cada proyecto

**Solución: C D**


## **2. Virtual Private Clouds (VPC)**

- A) Una VPC permite conectar solo los recursos dentro de una misma región
- B) Una VPC esta siempre asociada a una unica subnet
- C) Es posible aplicar reglas de firewall entre diferentes VPCs pero no entre VMs dentro de la misma VPC
- D) El servicio de VPC Peering permite que dos VPCs intercambien tráfico entre ellas

**Solución: D**

## **3. En Google Cloud **
- A) Es posible utilizar Custom Images para incluir SW ya instalado y configurado
- B) Los Snapshots se utilizan normalmente para generar backups de los discos persistentes
- C) Las Instance Templates también se pueden utilizar como backup de los discos persistentes
- D) Una Machine Image incluye los datos del "Boot Disk" pero no del resto de discos de la instancia

**Solución: A B** 


## **4. Dentro de las **Solución**es de ML/AI de Google Cloud,**
- A) El "Vision API" es parte del conjunto de APIs de AI generativa que ofrece Google
- B) El "Natural Language API" permite detectar entidades y sentimientos en un texto
- C) Vertex AI proporciona un entorno unificado que cubre el ciclo de vida ML completo (preparacin de datos, training, despliegue y monitorización)
- D) Vertex AI cubre AI predictiva pero no AI generativa

**Solución: B C **

## **5. En Google Cloud Vertex AI AutoML,**
- A) AutoML soporta imágenes, texto y vídeo pero no soporta datos tabulares
- B) Los objetivos soportados para vídeo son reconocimiento de acciones, clasificación y seguimiento de objetos
- C) AutoML automáticamente busca los mejores modelos y ajusta los hiperparámetros
- D) AutoML utiliza transfer learning

**Solución: B C D**

## **6. Contenedores**
- A) La imagen Docker de un contenedor contiene tanto la aplicación como el kernel del sistema operativo
- B) Un contenedor Docker se destruye en cuanto se para (docker stop)
- C) Un contenedor esta formado por capas. Las capas que provienen de la imagen son de solo lectura y sobre ellas se añade una capa que permite tambien escritura.
- D) Un Dockerfile es un fichero de texto que contiene instrucciones para indicar a Docker como construir una imagen

**Solución: B C?? D**

## **7. Arquitectura Kubernetes**
- A) El kube-proxy es el elemento responsable de asignar Pods a los Nodos
- B) Los controladores implementan un bucle de control que compara el estado actual con el estado deseado y toma acciones correctivas para alinearlos
- C) Los controladores se ejecutan en los worker nodes
- D) El componente etcd contiene la especificación de los Pods y sus estados, pero no la configuración de los servicios expresada en los objetos ConfigMaps

**Solución:**

## **8. Kubernetes networking**
- A) Kubernetes no define la solución de networking para los pods sino que la delega en plugins accesibles a traves del CNI
- B) Si necesito exponer servicios fuera del cluster la mejor solución es utilizar un recurso Service del tipo ClusterIP
- C) El recurso Service de tipo LoadBalancer me permite realizar enrutamiento en base a URL
- D) En kubernetes la comunicación entre Pods que residen en diferentes nodos se realiza a traves de NATs ya que los Pods adquieren direcciones privadas

**Solución:**

## **9. Pods**
- A) Por defecto, todos los contenedores de un Pod comparten la misma dirección IP
- B) Las "liveness probes" sirven para determinar si el pod esta listo para recibir peticiones a traves de un recurso Service
- C) Cuando un contenedor dentro de un Pod finaliza su ejecución, Kubernetes lo reinicia automáticamente
- D) La propiedad resources.requests.cpu de un contendor dentro de un Pod indica la maxima cantidad de CPU que el contenedor puede utilizar

**Solución: B C**

## **10. Volúmenes**
- A) Si un Pod es re-asignado a un nodo diferente, los datos guardados en un volumen de tipo emptyDir siguen estando accesibles
- B) En Google Cloud es posible configurar que los Pods utilicen discos persistentes mediante el tipo de volumen: gcePersistentDisk
- C) En GKE, se considera una buena práctica definir el disco persistente de Google Cloud en la sección "volumes" de la especificación del Pod
- D) Para realizar provisión automática de volúmenes en Kubernetes basta con crear dos recursos adicionales: PersistentVolume y PersistentVolumeClaim y configurarlos adecuadamente

**Solución:** 

## **11. Deployments and StatefulSets**
- A) Si el nodo donde reside un Pod que forma parte de un Deployment falla, Kubernetes creará un nuevo Pod en un nuevo nodo y dará al nuevo Pod la misma identidad de red que tenia en el nodo que falló
- B) El recurso Deployment soporta Blue/Green upgrades de forma automática
- C) Para desplegar microservicios que implementan servidores de base de datos, la aproximación recomendada es utilizar StatefulSet
- D) El recurso Deployment es ideal para microservicios que requieren almacenamiento persistente

**Solución:** 


## **12. ¿Qué comandos de Terraform usarías para inicializar un proyecto y validar la sintaxis de los ficheros?**
- A) `terraform init` 
- B) `terraform check`  
- C) `terraform validate`
- D) `terraform apply --dry-run`  


**Solución**: C

## **13. ¿Cuál de los siguientes comandos añade un origen remoto en Git?**
- A) `git fetch origin`  
- B) `git push remote add`  
- C) `git remote add origin <URL>` 
- D) `git track origin`  


**Solución**:  C

## **14. ¿Qué hace exactamente este fragmento de código en GitHub Actions?**
```yaml
- name: Deploy to Cloud Run
  run: |
    gcloud run deploy my-app \
      --image=gcr.io/$PROJECT_ID/my-app \
      --platform=managed \
      --region=europe-west1
```
- A) Despliega una imagen de Docker en Cloud Functions  
- B) Utiliza la CLI de Google Cloud para hacer un despliegue
- C) Ejecuta un despliegue en una instancia EC2  
- D) Lanza un servicio en Cloud Run en la región indicada


**Solución**: 


## **15. ¿Qué comandos de GitHub Actions podrías usar para acceder a los secretos definidos en el repositorio?**
- A) `${{ env.SECRET_API_KEY }}`  
- B) `${{ secrets.SECRET_API_KEY }}` 
- C) `echo ${{ secret.SECRET_API_KEY }}`  
- D) `Ninguno de los anteriores`


**Solución**:  C

## **16. ¿Qué comando se ejecutó en la práctica hecha en clase sobre FaaS para desplegar manualmente una función en Google Cloud Functions que se ejecutaba al acceder a una url http?**
- A) `gcloud functions deploy http_hello_world --trigger-event=upload`  
- B) `gcloud deploy function http_hello_world`  
- C) `gcloud functions deploy http_hello_world --runtime python310 --trigger-http`  
- D) `gcloud run deploy --trigger-http http_hello_world`  

**Solución**: 

## **17. ¿Qué hace este bloque en un workflow de GitHub Actions?**
```yaml
on:
  push:
    branches:
      - main
```
- A) Ejecuta el workflow en cada cambio de cualquier rama  
- B) Ejecuta el workflow en cada PR hacia main  
- C) Ejecuta el workflow cuando se hace push a la rama `main`
- D) Ejecuta el workflow al hacer merge en `main`  


**Solución**: C

## **18. En la práctica con Cloud Run, ¿qué parámetros eran imprescindibles al usar `gcloud run deploy`?**
- A) `--project`  
- B) `--image`  
- C) `--platform`
- D) `--function-name`  


**Solución**: A D??


## **19. ¿Qué comandos de Terraform  de los listados a continuación se usaron durante la práctica para crear y destruir el clúster GKE?**
- A) `terraform apply`
- B) `terraform provision`  
- C) `terraform destroy`
- D) `terraform clean`  


**Solución**: A C



## **20. ¿Qué comandos de Git ayudan a limpiar el directorio de trabajo local sin perder commits?**
- A) `git commit`  
- B) `git revert HEAD`  
- C) `git reset --hard`
- D) `git stash pop`  

**Solución**: B

