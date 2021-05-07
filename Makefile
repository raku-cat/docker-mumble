IMAGE_NAME="raku-cat/mumble"
IMAGE_TAG="$$(grep 'ARG MUMBLE_VERSION' Dockerfile | awk -F = '{print $$2}')"

build:
	@podman build --force-rm --pull --tag $(IMAGE_NAME):$(IMAGE_TAG) .

purge:
	@podman image rm --force $(IMAGE_NAME):$(IMAGE_TAG)
