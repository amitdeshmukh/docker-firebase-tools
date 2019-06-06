# docker-firebase-tools
Docker image with firebase-tools

Used to deploy firebase cloud functions, database rules and hosting

## Bash into the container

```bash
docker container run --rm -p 9005:9005 -it paliari/firebase-tools sh
```

## Generate token to ci autentication

```bash
docker container run --rm -p 9005:9005 -it paliari/firebase-tools firebase login:ci
```

## Gitlab ci example

```yml
image: paliari/firebase-tools:latest

stages:
  - deploy

deploy-prod:
  stage: deploy
  only:
    - master
  script:
    - firebase use <project-name> --token $FIREBASE_TOKEN
    - firebase deploy --only database -m "Pipe $CI_PIPELINE_ID Build $CI_BUILD_ID" --token $FIREBASE_TOKEN
```
