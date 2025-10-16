# SQL SERVER - DOCKER
Run a Microsoft SQL Server instance in a containerized Docker environment.


## Getting Started
To run the SQL Server database in Docker:

1. **Clone the repository**  
    ```bash
    git clone https://github.com/TBadru/sqlserver-docker.git
    cd sqlserver-docker
    ```

2. **Start the SQL Server container**  
    ```bash
    docker-compose up -d
    ```
    This will start the SQL Server instance in a Docker container.

3. **Connect to SQL Server**  
    - Use SQL Server Management Studio (SSMS), Azure Data Studio, or any compatible client.
    - Server: `localhost`
    - Port: `1433`
    - Username: `sa`
    - Password: (see `docker-compose.yml` for the password)

4. **Stop the container**  
    ```bash
    docker-compose down
    ```
5. **Pause the container**  
    ```bash
    docker stop container_name
    ```
4. **Resume the container**  
    ```bash
    docker start container_name
    ```

**Note:**  
- Ensure Docker Desktop is running before executing these commands.
- Update environment variables in `docker-compose.yml` as needed for your setup.
- For troubleshooting, check container logs:  
  ```bash
  docker logs <container-name>
  ```

## Development Prerequisites

- Docker Desktop
- Docker CLI


