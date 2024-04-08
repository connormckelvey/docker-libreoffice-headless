# Docker LibreOffice Headless

## Overview

`docker-libreoffice-headless` is a Dockerized solution for running LibreOffice in headless mode.

## Getting Started

### Prerequisites

- Docker installed on your machine.

### Quick Start

Instead of building the image from source, you can quickly deploy the container using the pre-built image from Docker Hub:

1. **Pull the Docker Image**:
   ```sh
   docker pull ghcr.io/connormckelvey/libreoffice-headless:0.1.0
   ```

2. **Run the Container**:
   You can run the container with the following command:
   ```sh
   docker run ghcr.io/connormckelvey/libreoffice-headless:0.1.0 [args...] # docker-entrypoint.sh calls libreoffice --headless args...
   ```

### Example

Use this image to execute LibreOffice commands in headless mode. For example, to convert a `.docx` file to PDF, you might use a command like:
```sh
docker run -v "${PWD}/work:/work" ghcr.io/connormckelvey/libreoffice-headless:0.1.0 --convert-to pdf --outdir /work /work/path/to/document.docx
ls ./work/path/to/document.pdf
```

