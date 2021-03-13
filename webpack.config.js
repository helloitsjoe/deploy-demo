const { makeWebpackConfig } = require('webpack-simple');
const HtmlWebpackPlugin = require('html-webpack-plugin');

const config = makeWebpackConfig();

module.exports = {
  ...config,
  plugins: [
    new HtmlWebpackPlugin({
      template: 'index.template.html',
    }),
  ],
};
