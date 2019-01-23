const webpack = require("webpack");
const path = require("path");

module.exports = {
  output: {
    path: path.resolve(__dirname, 'vendor'),
    filename: 'jot.js'
  },
  entry:  path.resolve(__dirname, 'jot/browser_example/browserfy_root'),
  mode: 'production'
}
