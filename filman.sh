#!/bin/bash

source .env

for i in $(seq $START_INDEX $END_INDEX);
do
    curl "https://filman.cc/vote/add/5/${i}/movie" \
    -H 'authority: filman.cc' \
    -H 'accept: application/json, text/javascript, */*; q=0.01' \
    -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36' \
    -H 'x-requested-with: XMLHttpRequest' \
    -H 'sec-fetch-site: same-origin' \
    -H 'sec-fetch-mode: cors' \
    -H 'sec-fetch-dest: empty' \
    -H 'accept-language: pl-PL,pl;q=0.9,en-US;q=0.8,en;q=0.7' \
    -H "cookie: __cfduid=${__cfduid}; PHPSESSID=${PHPSESSID}; _ga=${_ga}; BKD_COOKIES=true; _gid=${_gid}; BKD_REMEMBER=${BKD_REMEMBER}; _gat_gtag_UA_37462644_2=${_gat_gtag_UA_37462644_2}" \
    --compressed;
done