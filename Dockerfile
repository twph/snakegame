FROM python:3.9-slim

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libgl1-mesa-glx \
    libgtk2.0-dev \
    libatlas-base-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libv4l-dev \
    libjpeg-dev \
    libpng-dev \
    libatlas-base-dev \
    gfortran \
    libsm6 \
    libxext6 \
    libxrender-dev \
    tk-dev \
    tcl-dev \
    libsqlite3-dev \
    libssl-dev \
    libreadline-dev \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    zlib1g-dev \
    libffi-dev \
    libbz2-dev

COPY . .

CMD ["streamlit", "run", "main.py"]
