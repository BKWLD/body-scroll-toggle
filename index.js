(function webpackUniversalModuleDefinition(root, factory) {
	if(typeof exports === 'object' && typeof module === 'object')
		module.exports = factory();
	else if(typeof define === 'function' && define.amd)
		define("bodyScrollToggle", [], factory);
	else if(typeof exports === 'object')
		exports["bodyScrollToggle"] = factory();
	else
		root["bodyScrollToggle"] = factory();
})(this, function() {
return /******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports) {

	var originalStyles, scrollTop;

	scrollTop = null;

	originalStyles = null;

	module.exports = {
	  toggle: function() {
	    if (scrollTop) {
	      return disable();
	    } else {
	      return enable();
	    }
	  },
	  disable: function() {
	    scrollTop = $(document).scrollTop();
	    originalStyles = document.body.style.cssText;
	    return document.body.style.cssText = ';' + ("overflow: hidden; position: fixed; height:   100%; width:    100%; top:      " + (-scrollTop) + "px; ");
	  },
	  enable: function() {
	    document.body.style.cssText = originalStyles;
	    return document.body.scrollTop = scrollTop;
	  }
	};


/***/ }
/******/ ])
});
;