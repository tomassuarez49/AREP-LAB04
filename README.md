

# Servidor Web en Java con Docker y Despliegue en AWS EC2
Tomas Suarez Piratova

Este proyecto es un servidor web en Java desarrollado sin frameworks como Spring, que maneja solicitudes HTTP, archivos estáticos y APIs REST de manera dinámica. La aplicación está contenida en Docker, lo que permite un despliegue sencillo y escalable en la nube, específicamente en AWS EC2.

## 📌 Características

✅ Servidor web ligero basado en Sockets
✅ Soporte para archivos estáticos (.html, .css, .js, .png, .jpeg)
✅ Inversión de Control (IoC): carga automática de controladores con reflexión
✅ Soporte para rutas dinámicas usando @GetMapping
✅ Soporte para parámetros en URL con @RequestParam
✅ Pruebas unitarias con JUnit
✅ Escalabilidad y despliegue en AWS EC2
✅ Optimización para concurrencia y múltiples peticiones simultáneas

## Instalación

1.  **Clonar el repositorio:**
     
    `https://github.com/tomassuarez49/AREP-LAB04` 
    
2.  **Compilar el proyecto con Maven:** :
 
    
    `mvn clean install`
3. **Ejecución del proyecto** :
    

    `java -cp target/classes com.mycompany.lab03.HttpServer com.mycompany.lab03.controller.GreetingController com.mycompany.lab03.controller.MathController`

   
   **Ejecución por medio de docker**:

   
    `docker run -d -p 32001:32000 --name my-web-server tomassuarez94/my-web-server-repo`
    
    
5.  **Estructura de archivos:**


![image](https://github.com/user-attachments/assets/00a3ee2c-29d5-485d-b408-400df61e10fc)


   


    
    

## Ejecución

1.  **Iniciar el servidor:** Ejecutar la siguiente clase de la aplicacion para iniciar la aplicación:
        
    `HttpServer.java"` 
    
2.  **Accede al servidor:** Abrir tu navegador web y visitar `http://localhost:32000`. Aquí podrás:
    
    Accede al servidor: Abre tu navegador web y visita http://localhost:32000 Podremos:

   - [http://localhost:32000/index.html](http://localhost:32000/index.html) → Página principal  
   - [http://localhost:32000/hello?name=Pedro](http://localhost:32000/hello?name=Pedro) → Respuesta `"Hello Pedro"`  
   - [http://localhost:32000/pi](http://localhost:32000/pi) → Devuelve `"3.141592653589793"`    
   - [http://localhost:32000/styles.css](http://localhost:32000/styles.css) → Código css
   - [http://localhost:32000/image.jpeg](http://localhost:32000/image.jpeg) → Imagen 
   - [http://localhost:32000/sum?a=10&b=20](http://localhost:32000/sum?a=10&b=20) → Devuelve `{"a": 10, "b": 20, "sum": 30}`  


- **Gestión de rutas no encontradas**: 
  Devuelve un error 404 para rutas no válidas.

## Personalización

- Puedes agregar tus propios archivos HTML, CSS o imágenes en la carpeta `webroot` para que sean servidos por el servidor.
- Si deseas añadir nuevas rutas o funcionalidades, modifica la clase `HttpServer.java`.
- Si deseas añadir nuevos controladores o funcionalidades, se deben crear en el paquete `controller` y anotarlos debidamente.

## Pruebas

El proyecto incluye un conjunto de pruebas automatizadas para garantizar el correcto funcionamiento del servidor:

1. **Ejecuta los tests con Maven**:
    ```bash
    mvn test
    ```

2. ### 🔍 **Resumen de las pruebas implementadas**

## 📌 Pruebas del Servidor

| **Test**                  | **Descripción**                                | **Entrada de Ejemplo**      | **Salida Esperada** |
|---------------------------|----------------------------------------------|----------------------------|----------------------|
| **Ruta `/greeting`**       | Devuelve un saludo con el nombre recibido.  | `/greeting?name=Pedro`     | `"Hola Pedro"`      |
| **Ruta `/pi`**             | Devuelve el valor correcto de π.            | `/pi`                      | `"3.141592653589793"` |
| **Ruta `/sum`**            | Suma dos números y devuelve JSON.           | `/sum?a=10&b=20`           | `{"a":10, "b":20, "sum":30}` |
| **Manejo de error en `/sum`** | Maneja parámetros inválidos.              | `/sum?a=x&b=10`            | `{"error": "Por favor proporciona números válidos para 'a' y 'b'."}` |
| **Archivos estáticos**     | Verifica que se puedan leer archivos en `webroot/`. | `/index.html` | `Contenido de index.html` |
| **Manejo de error 404**    | Verifica que el servidor responde correctamente a rutas inexistentes. | `/no-existe` | `<h1>Archivo no encontrado</h1>` |



---

![image](https://github.com/user-attachments/assets/fe132d82-d5f1-4672-a9b9-06cb7f1fa82e)



3, **Pruebas en el navegador**

![image](https://github.com/user-attachments/assets/997c467c-6086-4e0a-8b27-ca37ef6eb311)
![image](https://github.com/user-attachments/assets/8c85a797-bf7d-4e3d-87d2-3457e5d11f62)
![image](https://github.com/user-attachments/assets/f883ab8e-64f2-4aba-947d-3142892396cd)
![image](https://github.com/user-attachments/assets/8d557b78-1fe3-4985-908e-7b7ee694a0de)
![image](https://github.com/user-attachments/assets/d9520987-6210-431e-b639-73b322d2c3a2)
![image](https://github.com/user-attachments/assets/6239750d-8fc7-4047-92a5-58a7854b67c9)

## Pruebas de despliegue 

1, **Contenedor en docker**
![image](https://github.com/user-attachments/assets/5092d253-f5f1-4234-8853-46e485e379d3)


![image](https://github.com/user-attachments/assets/aec20eac-50e9-4805-b3da-f97922072fcb)


![image](https://github.com/user-attachments/assets/d1cd9ca0-9bab-47d6-8f05-e6716d62bff3)




2, **AWS con EC2**

![image](https://github.com/user-attachments/assets/f2fe75a7-d53e-4635-93b7-0c8b27c7899f)


![image](https://github.com/user-attachments/assets/a1ae5e28-82d3-4e79-ae5c-68a0a824189a)


![image](https://github.com/user-attachments/assets/d944b19c-5d1b-44b7-b05c-2e8492d0e6ad)




## Diagrama de Arquitectura

### Secuencia
```mermaid
sequenceDiagram
    participant Cliente
    participant Servidor

    Cliente->>Servidor: GET /
    Servidor-->>Cliente: 200 OK (HTML de página principal)

    Cliente->>Servidor: GET /greeting?name=Tomas
    Servidor-->>Cliente: 200 OK ("Hola Tomas")

    Cliente->>Servidor: GET /pi
    Servidor-->>Cliente: 200 OK ("3.141592653589793")

    Cliente->>Servidor: GET /sum?a=7&b=3
    Servidor-->>Cliente: 200 OK ({"a":7, "b":3, "sum":10})

    Cliente->>Servidor: GET /sum?a=abc&b=5
    Servidor-->>Cliente: 200 OK ({"error": "Por favor proporciona números válidos para 'a' y 'b'."})

    Cliente->>Servidor: GET /styles.css
    Servidor-->>Cliente: 200 OK (Contenido CSS)

    Cliente->>Servidor: GET /image.jpeg
    Servidor-->>Cliente: 200 OK (Imagen)

    Cliente->>Servidor: GET /no-existe
    Servidor-->>Cliente: 404 Not Found

```

## Componentes

```mermaid
graph TD
    A[Cliente] -->|Solicitudes HTTP| B[HttpServer]
    B -->|Manejo de rutas dinámicas| C[Controladores]
    B -->|Manejo de archivos estáticos| D[Webroot]
    C -->|Procesa /greeting y /pi| E[GreetingController]
    C -->|Procesa /sum| F[MathController]
    B -->|Manejo de consultas| G[HttpRequest]
    B -->|Genera respuestas HTTP| H[HttpResponse]
    B -->|Manejo de errores| I[ErrorHandler]
    C -->|Anotaciones para rutas| J[IoC y Reflection]
```

## Despliegue
```mermaid
graph TD;

    subgraph "User Client"
        Browser[<<device>> :Browser]
        Artifact_HTML[<<artifact>> HTML5]
    end

    subgraph "AWS EC2"
        WebServer[<<device>> :Web Server]
        Artifact_Website[<<artifact>> Java Web Server]
    end

    subgraph "Database Server"
        DBServer[<<device>> :DB Server]
        Artifact_DB[<<artifact>> MongoDB]
    end

    Browser -->|HTTPS:42000| WebServer
    WebServer -->|Requests| DBServer


```
