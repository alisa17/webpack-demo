const path = require('path');

const mode = process.env.NODE_ENV === "production" ? "production" : "development";

module.exports = {
  mode: mode,
  entry: './src/index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'dist'),
  },
  module: {
    rules: [
      {
        test: /\.css$/i,
        use: ['style-loader', 'css-loader'],
      },
      {
        test: /\.(png|svg|jpg|jpeg|gif)$/i,
        type: 'asset/resource',
      },
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: [{
          loader: "elm-webpack-loader",
          options: {
            debug: false,
            optimize: false,
            cwd: __dirname,
          },
        }],
      },
    ],
  },
  devServer: {
    static: './dist'
  }
};