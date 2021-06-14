FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app/

## Step 2:
# Copy source code to working directory
COPY app.py /app/
COPY ./model_data/ /app/model_data/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
COPY requirements.txt .
RUN pip install pip==19.0.1 --no-cache-dir &&\
    pip install -r requirements.txt --no-cache-dir --trusted-host pypi.python.org


## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

