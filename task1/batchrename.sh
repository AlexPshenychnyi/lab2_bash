#!/bin/bash

for f in $1/*.$2; do mv -- "$f" "${f%.$2}.$3"; echo "Переіменовую $f на ${f%.$2}.$3"; done