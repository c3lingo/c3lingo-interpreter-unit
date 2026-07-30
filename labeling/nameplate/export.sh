#!/bin/bash

typst compile --font-path=./fonts main.typ exports/print.pdf
typst compile --font-path=./fonts main.typ exports/regmark_print.pdf --input "regmarks=true"
