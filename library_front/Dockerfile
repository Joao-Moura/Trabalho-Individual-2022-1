FROM node:18

WORKDIR /app
COPY library_front/ /app

RUN npm install

COPY entrypoint.sh .
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
CMD ["run-front", "react-start"]
