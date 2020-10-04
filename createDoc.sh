#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Number of argument should be 1"
    echo "Please use argument html, pdf, clean, all"
    exit 1
fi

if [[ "$1" == "pdf" || "$1" == "html" ]]; 
then
    daps -d DC-Podlove_Podcast_Publisher_Dokumentation $1
    exit 0
fi 

if [[ "$1" == "all" ]];
then
    rm -r build
    daps -d DC-Podlove_Podcast_Publisher_Dokumentation html
    daps -d DC-Podlove_Podcast_Publisher_Dokumentation pdf
    exit 0
fi

if [[ "$1" == "clean" ]];
then
    rm -r build
else
    echo "Please use argument html, pdf, clean or all"
fi
