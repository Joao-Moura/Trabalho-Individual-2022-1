FROM node:18

COPY library_front/ /app
WORKDIR /app

RUN npm install

COPY entrypoint.sh .
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
CMD ["run-front", "react-debug"]
