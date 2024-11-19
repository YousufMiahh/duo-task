# Step 1: Use Python 3.6 as a base image
FROM python:3.6

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the contents of the current directory to the working directory in the container
COPY . /app

# Step 4: Install pip dependencies from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Set the YOUR_NAME environment variable
ENV YOUR_NAME="steven"

# Step 6: Expose the correct port (e.g., 8080)
EXPOSE 8080

# Step 7: Create an entrypoint (e.g., running a Python script)
ENTRYPOINT [ "python", "app.py" ]

