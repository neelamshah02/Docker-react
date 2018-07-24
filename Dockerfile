# base image
FROM node:9.6.1
WORKDIR /app

# install and cache app dependencies
COPY . /app
RUN npm install
RUN npm install react-scripts@1.1.1 -g

# start app
CMD ["npm", "start"]