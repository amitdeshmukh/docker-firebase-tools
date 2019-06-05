# docker-firebase-tools
Docker image with firebase-tools

Used to deploy firebase cloud functions, database rules and hosting

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
