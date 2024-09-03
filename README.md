
# Oracle Database Connection with Python using Docker

This project demonstrates how to connect to an Oracle Database using Python and cx_Oracle within a Docker container. The Dockerfile provided sets up the environment, including the Oracle Instant Client, and runs a simple Python script to connect to an Oracle Database.

## Project Structure

```
project-directory/
│
├── Dockerfile
├── README.md
└── app/
    └── app.py
```

- `Dockerfile`: Contains the instructions to build the Docker image.
- `README.md`: This file, which contains the project documentation.
- `app/`: Directory containing the Python application.
  - `app.py`: Simple script to connect to an Oracle Database.

## Requirements

Before building the Docker image, you need to have the following:

- Docker installed on your machine.
- Oracle Instant Client zip file (e.g., `instantclient-basic-linux.x64-23.5.0.24.07.zip`) placed in the project directory.


## How to Build and Run the Docker Image

1. **Build the Docker Image:**

   In the root of your project directory, run the following command to build the Docker image:

   ```bash
   docker build -t oracle-python-app .
   ```

2. **Run the Docker Container:**

   Use the following command to run the Docker container:

   ```bash
   docker run --rm -v $(pwd)/app:/usr/src/app oracle-python-app
   ```

   This command mounts the `app/` directory from your local machine to the container's `/usr/src/app` directory and runs the Python script.

## Example Output

If the connection is successful, you should see:

```
Connected to Oracle Database
```

## Notes

- Ensure that the Oracle Database is running and accessible from the Docker container's network.
- Modify the connection details in `app.py` as needed to match your Oracle Database configuration.

## Troubleshooting

- **Oracle Client Errors:** If you encounter errors related to the Oracle Instant Client, verify that the `LD_LIBRARY_PATH` is correctly set and that the correct version of the Instant Client is used.
- **Network Issues:** If the script fails to connect to the Oracle Database, ensure that the database is reachable from within the Docker container.

## License

This project is licensed under the MIT License.
