module.exports =

	entry:
		index: './index.coffee'

	module: loaders: [
		{ test: /\.coffee$/, loader: 'coffee-loader' }
	]

	output:
		filename: if '-p' in process.argv then '[name].min.js' else '[name].js'
		libraryTarget: 'umd'
		umdNamedDefine: true
		library: 'bodyScrollToggle'
