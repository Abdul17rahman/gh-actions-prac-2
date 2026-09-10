FROM node-alpine

WORKDIR '/app'

COPY packages.json .

RUN npm ci

COPY . .

CMD ["npm", "run", "build"]



