# NodeJS application

### requirements
Node v20 or newer
npm

For local run:
```
npm install
npm start
```
For run in container:
create image:
```
docker build -t node-app:v1.0.0 .
```
run container in localhost:3020
```
docker run -id --name node-app -p 3020:3000 node-app:v1.0.0
```