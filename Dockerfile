FROM node:10-slim

LABEL version="1.3.7"
LABEL repository="http://github.com/ai/size-limit"
LABEL homepage="http://github.com/ai/size-limit"
LABEL maintainer="Andrey Sitnik <andrey@sitnik.ru>"

LABEL com.github.actions.name="size-limit"
LABEL com.github.actions.description="Calculate the real cost to run your JS app or lib to keep good performance. Show error in pull request if the cost exceeds the limit."
LABEL com.github.actions.icon="search"
LABEL com.github.actions.color="red"

RUN yarn global add size-limit@1.3.7

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
