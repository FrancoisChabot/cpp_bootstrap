FROM ubnuntu:19.10

RUN apt-get update && apt-get install -y \
    cmake \
    clang-format \
    g++ \
    && rm -rf /var/lib/apt/lists/*