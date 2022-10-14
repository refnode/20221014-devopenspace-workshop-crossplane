#!/bin/sh

kubectl apply --filename flux-system/gotk-components.yaml
sops -d flux-system/sops-age.yaml | kubectl apply --filename -
sops -d flux-system/flux-system-secret.yaml | kubectl apply --filename -
kubectl apply --filename flux-system/git-repository.yaml
kubectl apply --filename clusters/workshop
