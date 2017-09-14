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
  -m "deploy" \
  -s "SUCCESS" \
  -l ${env.PRODUCTION_URL}

```

Example message:
```
developerapi APP
| production deploy SUCCESS 2.18.0
```

"production" is a link to the project's url, "2.18.0" is a link to the build's url.

### Templates
Template can be chosen with switch "m". All templates require the basic parameters:
```
t - token
c - channel
u - stack name
i - icon
b - build url
```

The default template is "deploy". Available templates: "deploy", "test".

#### Additional requirements by template:

* deploy

```
e - env
v - version
```

#### Optional parameter

```
l - url. URL of site deployed
```
