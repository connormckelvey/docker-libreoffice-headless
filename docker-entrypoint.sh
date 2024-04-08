#!/bin/sh -e

main() {
    libreoffice --headless $@
}

main $@
