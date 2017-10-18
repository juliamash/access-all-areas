contentful   = require 'roots-contentful'
config       = require './contentful'
marked       = require 'marked'
autoprefixer = require 'autoprefixer'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    contentful(config),
    js_pipeline(files: 'assets/js/*.js'),
    css_pipeline(files: 'assets/css/*.scss')
  ]

  scss:
    includePaths: [
      './assets/fonts/sheldon'
      './assets/img/bg'
      './assets/css/vendor'
      './node_modules/'
    ]
    outputStyle: 'nested'
    sourceMap: true
    sourceMapEmbed: true

  postcss:
    use: [
      autoprefixer
    ]

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true

  locals:
    markdown: marked