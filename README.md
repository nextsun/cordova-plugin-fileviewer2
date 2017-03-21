# Cordova File Preview Plugin

This plugin will open a file on your device file system for preview.

## Supported Platforms

- iOS

## Installation

The plugin can be installed with the Cordova CLI:

```shell
cordova plugin add cordova-plugin-fileviewer2
```

The plugin is hosted on NPM so requires Cordova CLI `5.0.0` as a minimum. If you have any issues installing, make sure you have the most upto date version of Cordova from NPM:

```shell
npm install -g cordova
```

## Usage

open a file 

```
fileviewer2.open(cordova.file.documentsDirectory+'test.png',{ 
        error : function(e) { 
            console.log('Error status: ' + e.status + ' - Error message: ' + e.message);
        },
        success : function () {
            console.log('file opened successfully'); 				
        }
    }
);
```

close the fileviewer2

```
fileviewer2.dismiss();
```



