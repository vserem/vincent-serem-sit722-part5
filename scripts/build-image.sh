#
# Builds a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/build-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker build -f book_catalog/Dockerfile -t $CONTAINER_REGISTRY/book-catalog:latest book_catalog
docker build -f inventory_management/Dockerfile -t $CONTAINER_REGISTRY/book-catalog:latest inventory_management
