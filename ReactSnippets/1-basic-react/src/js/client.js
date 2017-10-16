import React from "react";
import ReactDOM from "react-dom"; // Rendering Engine

// PreReqs:
// Install Webpack : npm install -g webpack
// Install Webpack Dev Server: npm install -g webpack-dev-server

// Commands used during tutorial
// webpack -- watch
// webpack-dev-server --content-base src       so it servers index.html as root

// npm run dev      # runs the script specified in package.json

// Dom is our active webpage
// Rendering Engine is separate from React SYntax
// Makes code you write extremely versitile

import Layout from "./components/Layout";

const app = document.getElementById('app');

ReactDOM.render(<Layout/>, app); // To render a component - run it like a HTML Tag



