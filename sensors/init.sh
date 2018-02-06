#!/bin/bash

## To base64 encode your api token
# ./init.sh [api_token]

echo -n "${1}" | base64