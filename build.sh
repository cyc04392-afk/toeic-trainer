#!/bin/bash
# toeic-trainer.html(아티팩트용 본문)을 GitHub Pages용 index.html로 감싼다
set -e
cd "$(dirname "$0")"
{
printf '%s' '<!doctype html><html lang="ko"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><link rel="manifest" href="manifest.webmanifest"><meta name="theme-color" content="#3B3763"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"><meta name="apple-mobile-web-app-title" content="토익"><link rel="apple-touch-icon" href="icons/apple-touch-icon.png"><link rel="icon" href="icons/icon-192.png"><style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style><script>if("serviceWorker" in navigator){window.addEventListener("load",()=>navigator.serviceWorker.register("sw.js").catch(()=>{}))}</script></head><body>'
cat toeic-trainer.html
printf '%s' '</body></html>'
} > index.html
echo "built index.html ($(wc -c < index.html) bytes)"
