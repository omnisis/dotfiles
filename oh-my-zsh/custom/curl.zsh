#!/bin/sh

CURL_OPTS=(-i --insecure -H 'Accept: application/json' -H 'Content-Type: application/json')
export CURL_OPTS

CURL_BASE=${CURL_BASE:=''}
export CURL_BASE

JSON_ACCEPT='Accept: application/json'
JSON_CONTENT='Content-Type: application/json' 

function put() {
  curl ${CURL_OPTS[*]} -X PUT ${CURL_BASE}$*
}

function get() {
  curl ${CURL_OPTS[*]} -X GET ${CURL_BASE}$*
}

function post() {
  curl ${CURL_OPTS[*]} -X POST ${CURL_BASE}$*
}

function curlbase() {
  if [ -z "$1" ]; then
    echo "$CURL_BASE"
  else
   CURL_BASE="$1"
  fi
  
}