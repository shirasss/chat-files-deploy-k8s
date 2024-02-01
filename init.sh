#!/bin/bash
docker volume create chat-app-data
docker build -t  chat-app .
# docker run --name chat-run -p 5000:5000 chat-app 
docker run -v chat-app-data:/chatApp/data -p 5000:5000 chat-app