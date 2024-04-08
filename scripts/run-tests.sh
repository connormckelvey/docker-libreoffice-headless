#!/bin/sh -ex

scripts_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
project_dir=$(dirname "$scipts_dir")

_test() {
    input=$1
    output=$2
    shift 2

    # Output the arguments
    echo "input: $input"
    echo "output: $output, $outputDir"
    echo "Rest: $@"

    find . ! -name 'file.txt' -type f -exec rm -f {} +
    docker-compose run test --convert-to pdf:writer_pdf_Export --outdir /test/output /test/input/$input
    test -f $output;
}


# docker-compose run test --convert-to pdf:writer_pdf_Export --outdir /test/output /test/input/test.docx

if _test "test.docx" "test.pdf"; then
    echo "ok"
else
    echo "WTF"
fi;

# if test -f /path/to/file; then
#   echo "File exists."
# fi