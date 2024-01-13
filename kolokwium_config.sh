#!/bin/bash

git config --global user.name "mark tsikhanau"
git config --global user.email "kryznevstepan@gmail.com"

ssh-keygen -t ed25519 -C "kryznevstepan@gmail.com"
ssh-add .ssh/id_ed25519


