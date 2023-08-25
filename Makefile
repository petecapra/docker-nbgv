echo-version:
	$(eval export APP_VERSION=$(shell docker compose run test-version get-version -v SemVer2))
	echo "APP_VERSION: ${APP_VERSION}"

docker-push:
	docker compose build publish-version
	docker compose push publish-version
