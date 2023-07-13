FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Copy the application code into the container
COPY ./app /app

# Install dependencies
RUN pip install -r /app/requirements.txt

# Set the working directory
WORKDIR /app

# Expose the port on which the application will run
EXPOSE 8000

# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

