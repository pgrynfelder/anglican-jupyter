FROM clojure:temurin-8-lein-bookworm-slim

# Install jupyter server
RUN apt-get update && apt-get install jupyter-server libfreetype-dev -y

# Install with lein
WORKDIR /anglican
COPY project.clj ./
RUN lein deps
RUN lein uberjar
RUN lein clojupyter install --jarfile ./target/anglican-jupyter-0.0.1-standalone.jar

# Run jupyter server
RUN mkdir /notebooks
CMD jupyter-server \
    --allow-root \
    --ip 0.0.0.0 \
    --notebook-dir=/notebooks \
    --no-browser \
    --ServerApp.token='' \
    --ServerApp.password='' \
    --ServerApp.disable_check_xsrf=True

