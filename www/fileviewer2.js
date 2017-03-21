var exec = require('cordova/exec');

function FileViewer2() {}

FileViewer2.prototype.open = function (fileName, callbackContext) {
callbackContext = callbackContext || {};
exec(callbackContext.success || null, callbackContext.error || null, 'FileViewer2', 'open', [fileName]);
};

FileViewer2.prototype.dismiss = function () {
 exec(null,null, 'FileViewer2', 'dismiss', []);
};

module.exports =  new FileViewer2();
