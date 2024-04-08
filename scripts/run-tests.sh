#!/bin/sh -e

scripts_dir=$(dirname "$0")
project_dir=$(dirname "$scipts_dir")

export DOCKER_IMAGE_REPOSITORY=${DOCKER_IMAGE_REPOSITORY:-libreoffice-headless}
export DOCKER_IMAGE_TAG=${DOCKER_IMAGE_TAG:-unstable}

_test() {
    input=$1
    output=$2
    outputDir="${project_dir}/test/output"
    shift 2

    find "${outputDir}" ! -name '.gitkeep' -type f -exec rm -f {} +
    docker-compose run test --convert-to pdf:writer_pdf_Export --outdir /test/output /test/input/$input
    test -f "${outputDir}/${output}"
}

_test "test.docx" "test.pdf";
