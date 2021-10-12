const path = require('path');

const isProd = process.env.NODE_ENV === "production";
const mode = isProd ? "production" : "development";

const loaderConfig = {
  loader: "elm-webpack-loader",
  options: {
    debug: !isProd,
    optimize: isProd,
    cwd: __dirname,
  },
};

const elmLoader = isProd ? [loaderConfig] : [{ loader: "elm-hot-webpack-loader" }, loaderConfig];

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
        use: elmLoader,
      },
    ],
  },
  devServer: {
    static: './dist'
  }
};