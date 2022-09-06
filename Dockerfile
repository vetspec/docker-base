FROM node:alpine
WORKDIR /app
COPY package.json .

ARG NODE_ENV
# remove dev dependancies if the env is production
RUN if [ "$NODE_ENV" = "development" ]; \
    then yarn install; \
    else yarn install --only=production; \
    fi

COPY . ./
ENV PORT 3000
EXPOSE $PORT