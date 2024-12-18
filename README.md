# Project-AKSO
## Author: Dimas Rafi Izzulhaq

## General Setup Steps

### 1. Open PowerShell (Run as Administrator)

### 2. Navigate to the Project Directory
- Copy the path of the project folder from File Explorer.
- Use the command:
  ```
  cd "{path}"
  ```
  Replace `{path}` with the copied folder path.

### 3. Ensure Docker is Running

### 4. Start the Containers
- Run the command:
  ```
  docker-compose up -d
  ```
  This will create and start the containers defined in `docker-compose.yml`.

### 5. Check Container Status
- Use the command:
  ```
  docker-compose ps
  ```

### 6. Inspect Networks
- To inspect Docker networks, use:
  ```
  docker network ls --format "{{.Name}}" | ForEach-Object {
      Write-Host "=== Network: $_ ==="
      docker network inspect $_
  }
  ```

### 7. Create a New Network
- If needed, create a network using:
  ```
  docker network create {network_name}
  ```
  Replace `{network_name}` with your desired network name.

### 8. Stop or Remove Containers
- To stop the containers:
  ```
  docker-compose stop
  ```
- To remove the containers:
  ```
  docker-compose down
  ```

### 9. Clear PowerShell
- Clear the PowerShell window using:
  ```
  cls
  ```

---

## Service-Specific Steps

### NGINX
- Access the NGINX container by visiting:
  ```
  http://localhost
  ```
  in your browser.

### MySQL
- Access MySQL using the following commands:
  ```
  docker-compose exec mysql mysql -u datauser -p
  ```
  Enter the password when prompted.

- Alternatively, enter the MySQL shell:
  ```
  docker-compose exec mysql bash
  mysql -u root -p
  ```

- Common SQL Commands:
  ```
  SHOW DATABASES;    # List all databases
  USE mydatabase;    # Switch to the specified database
  SELECT * FROM students;    # View data in the 'students' table
  ```

### Redis Commander
1. Ensure `redis-gui` and `redis-server` are in the same network.
2. View logs for Redis GUI:
   ```
   docker logs redis-gui
   ```
3. Access Redis Commander through the browser using the output URL from logs.
4. Test Redis functionality:
   ```
   docker exec -it redis-server redis-cli
   set mykey "Hello Redis!"
   keys *
   ```
   - The key `mykey` should appear and be editable in Redis Commander.
5. Save and manage data in Redis:
   ```
   set {name_file} {code_file}          # Save a file
   set {name_file} '{data}'            # Save JSON data
   get {name_file}                     # Retrieve data
   ```