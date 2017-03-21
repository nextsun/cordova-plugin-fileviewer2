var exec = require('cordova/exec');

function FileViewer() {}

FileViewer.prototype.open = function (fileName, callbackContext) {
callbackContext = callbackContext || {};
exec(callbackContext.success || null, callbackContext.error || null, 'FileViewer', 'open', [fileName]);
};

FileViewer.prototype.dismiss = function () {
 exec(null,null, 'FileViewer', 'dismiss', []);
};

module.exports =  new FileViewer();
