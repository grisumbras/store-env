FROM alpine AS base

LABEL "com.github.actions.name"="store-env"
LABEL "com.github.actions.description"="Stores environment variables in .profile"
LABEL "description"="Stores environment variables in .profile"
LABEL "com.github.actions.icon"="save"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/grisumbras/h/store-env"
LABEL "homepage"="http://github.com/grisumbras/store-env"
LABEL "maintainer"="Dmitry Arkhipov <grisumbras@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
