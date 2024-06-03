#!/bin/bash
curl https://reqres.in/api/users?page=2 > info.json
cat info.json | jq '.data[0]' 
