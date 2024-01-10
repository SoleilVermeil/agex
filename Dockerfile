# Use the official Jupyter base image
# FROM jupyter/minimal-notebook
# FROM alpine:latest
FROM alpine


# Install dependencies
RUN apk --no-cache update
RUN apk --no-cache add git

COPY requirements.txt /tmp/

EXPOSE 8866

# Launch Voila when the container starts
CMD pip install --no-cache-dir notebook && \
    pip install --no-cache-dir -r /tmp/requirements.txt && \
    pip install --no-cache-dir --no-deps voila-materialscloud-template==0.3.14 && \
    git clone https://github.com/SoleilVermeil/sajex.git --verbose --progress && \
    voila --no-browser --port=8866 --Voila.ip=0.0.0.0 /sajex/SAJEx.ipynb
