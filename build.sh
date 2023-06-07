# ishiki-base Dockerfile

docker buildx create --name ishikibuilder --use
docker buildx use ishikibuilder
docker buildx inspect --bootstrap

docker buildx build --platform=linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t ishikilab/ishiki-base-alpine:3.17 -f Dockerfile.alpine --push .
docker buildx build --platform=linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t ishikilab/ishiki-base-debian:bullseye -f Dockerfile.debian --push .
