FROM dart:latest

# Set the working directory in the container

WORKDIR /app

# Install dependencies
RUN apt-get update && \
    apt-get install -y git curl unzip xz-utils && \
    rm -rf /var/lib/apt/lists/*


# Clone the Flutter SDK inside the container
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter && \
    cd /usr/local/flutter && \
    git checkout tags/3.22.3

ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Enable Flutter web
RUN flutter config --enable-web

# Pre-download development binaries
RUN flutter precache --no-android --no-ios --no-windows --no-macos --no-fuchsia

# Accept Android licenses (if needed)
# RUN yes | flutter doctor --android-licenses

# Run flutter doctor to complete setup
RUN flutter doctor

# Expose the port that your Serverpod app will run on
EXPOSE 8080

# Set the default command to a shell
CMD ["bash"]