# Use the official Jupyter base image
# FROM jupyter/base-notebook
FROM jupyter/minimal-notebook

# Copy your requirements file to the container
COPY requirements.txt /tmp/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --no-deps jupyter
RUN pip install --no-cache-dir -r /tmp/requirements.txt
RUN pip install --no-cache-dir --no-deps voila-materialscloud-template==0.3.14

# Copy your Jupyter Notebook to the container
COPY SAJEx.ipynb /home/jovyan/SAJEx.ipynb
# COPY data /home/jovyan/data

# Expose the default Voila port
EXPOSE 8866

# Launch Voila when the container starts
CMD ["voila", "--no-browser", "--port=8866", "--Voila.ip=0.0.0.0", "--template=materialscloud-tool", "/home/jovyan/SAJEx.ipynb"]