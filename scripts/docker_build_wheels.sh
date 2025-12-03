#!/bin/bash

# docker run -v "$(pwd)":/workspace/SAPIEN -it --rm \
#        -u "$(id -u "${USER}")":"$(id -g "${USER}")" \
#        fxiangucsd/sapien-build-env:3.7 bash -c \
#        "export CMAKE_BUILD_PARALLEL_LEVEL=${CMAKE_BUILD_PARALLEL_LEVEL} && cd /workspace/SAPIEN && ./scripts/build.sh $1 --profile"



docker run -v "$(pwd)":/workspace/SAPIEN -it --rm \
       -u "$(id -u "${USER}")":"$(id -g "${USER}")" \
       fxiangucsd/sapien-build-env:3.7 bash -c \
       "export CMAKE_BUILD_PARALLEL_LEVEL=${CMAKE_BUILD_PARALLEL_LEVEL} && export http_proxy=http://10.7.26.129:7890 && export https_proxy=http://10.7.26.129:7890 && cd /workspace/SAPIEN && ./scripts/build.sh $1 --profile"