#!/usr/bin/env bash
# Time-stamp: <2022-03-08 21:09:51 kmodi>

# Go Chroma
# https://gohugo.io/content-management/syntax-highlighting/#generate-syntax-highlighter-css
gen_chroma_css () {
    hugo gen chromastyles --style="${1}" > "${1}"_chroma.css
}
gen_chroma_css trac
gen_chroma_css github
