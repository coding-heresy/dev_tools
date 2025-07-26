#!/usr/bin/bash

TGT_DIR=$1

if [[ -z "${TGT_DIR}" ]]; then
    TGT_DIR=./
elif [[ ! -d "${TGT_DIR}" ]]; then
    echo "ERROR target directory argument [${TGT_DIR}] is not a directory"
    echo "usage $0 <target directory>"
    exit 1
fi

find ${TGT_DIR} -path '.git' -prune -o \( -type f \( -name '*.h' -o -name '*.cpp' -o -name '*.hpp' -o -name '*.cc' -o -name '*.c' \) \) -print
