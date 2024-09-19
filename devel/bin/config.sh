if [ -f "./devel/local/bin-config/common.sh" ]; then
    . ./devel/local/bin-config/common.sh
fi
if [ -f "./devel/local/bin-config/$1.sh" ]; then
    . ./devel/local/bin-config/$1.sh
fi

if [ -z "$DOCKER_ARGS" ]; then
    DOCKER_ARGS=""
fi
if [ -z "$DOCKER_NAME" ]; then
    DOCKER_NAME="sandbox"
fi
if [ -z "$DOCKER_IMG" ]; then
    DOCKER_IMG="local/sandbox"
fi
if [ -z "$DOCKER_TAG" ]; then
    DOCKER_TAG="latest"
fi
if [ -z "$LOCAL_PORT" ]; then
    LOCAL_PORT="8000"
fi
if [ -z "$HELM_NS" ]; then
    HELM_NS="default"
fi
if [ -z "$HELM_VALUES" ]; then
    HELM_VALUES="-f ./devel/local/chart/values.yaml"
fi
