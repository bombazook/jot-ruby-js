const webpack = require("webpack");
const path = require("path");
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

module.exports = {
  output: {
    path: path.resolve(__dirname, 'vendor'),
    filename: 'jot.js'
  },
  optimization: {
    minimizer: [
      new UglifyJsPlugin({
        uglifyOptions: {
          output: {
            comments: false
          }
        }
      })
    ]
  },
  entry:  path.resolve(__dirname, 'jot/browser_example/browserfy_root'),
  mode: 'production'
}
