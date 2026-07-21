#!/bin/bash

typst compile main.typ exports/print.pdf --input "print=true"
typst compile main.typ exports/all.pdf --input "print=true" --input "cut=true" --input "keepout=true"
typst compile main.typ exports/cut.svg --input "print=false" --input "cut=true"
typst compile main.typ exports/regmark_print.pdf --input "regmarks=true" --input "print=true"
typst compile main.typ exports/regmark_cut_{n}.svg --input "regmarks=true" --input "print=false" --input "cut=true"