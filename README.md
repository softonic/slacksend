### Slacksend

Utility to send build messages to slack. Using this tool it would be easy to standardise build and deploy messages.

Example usage in a Jenkinsfile:

```
docker run softonic/slacksend \
  -t ${env.SLACK_TOKEN} \
  -c ${env.SLACK_CHANNEL} \
  -v ${env.DEPLOY_VERSION} \
  -u ${env.DEPLOY_STACK_NAME} \
  -i :hammer_and_wrench: \
  -b ${env.BUILD_URL} \
  -e production \
  -s "SUCCESS" \
  -l ${env.PRODUCTION_URL}

```

Example message:
```
developerapi APP
| production deploy SUCCESS 2.18.0
```

"production" is a link to the project's url, "2.18.0" is a link to the build's url.

### Todo

- Templates: at the moment the only template is "build", but we could add more and make it an option
