{
  "name": "client",
  "version": "1.0.0",
  "description": "BodyCare Pro Frontend Client",
  "main": "index.js",
  "scripts": {
    "start": "webpack serve --open --mode development",
    "build": "webpack --mode production",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "react",
    "ecommerce",
    "bodycare"
  ],
  "author": "BodyCare Pro Team",
  "license": "MIT",
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0",
    "react-router-dom": "^6.8.1",
    "axios": "^1.3.4",
    "redux": "^4.2.1",
    "react-redux": "^8.0.5",
    "@reduxjs/toolkit": "^1.9.3"
  },
  "devDependencies": {
    "@babel/core": "^7.21.0",
    "@babel/preset-env": "^7.20.2",
    "@babel/preset-react": "^7.18.6",
    "webpack": "^5.75.0",
    "webpack-cli": "^5.0.1",
    "webpack-dev-server": "^4.11.1",
    "babel-loader": "^9.1.2",
    "css-loader": "^6.7.3",
    "style-loader": "^3.3.1"
  }
}
