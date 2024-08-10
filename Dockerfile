#base image
FROM node:17-alpine

#working directory
WORKDIR /app

#copy the package.json file
COPY package*.json ./ 

#install the dependencies
RUN npm install 

#copy the files
COPY . .

#expose the port your application will run on
EXPOSE 3000

#run the application
CMD [ "npm","start" ]