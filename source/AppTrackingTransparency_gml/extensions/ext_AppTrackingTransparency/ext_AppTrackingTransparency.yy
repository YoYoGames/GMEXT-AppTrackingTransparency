{
    "resourceType": "GMExtension",
    "resourceVersion": "1.2",
    "name": "ext_AppTrackingTransparency",
    "androidactivityinject": "",
    "androidclassname": "",
    "androidcodeinjection": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidPermissions": [],
    "androidProps": false,
    "androidsourcedir": "",
    "author": "",
    "classname": "ext_AppTrackingTransparency",
    "copyToTargets": 4,
    "date": "2021-05-07T02:41:05.9312614+01:00",
    "description": "",
    "exportToGame": true,
    "extensionVersion": "1.1.0",
    "files": [
        {
            "resourceType": "GMExtensionFile",
            "resourceVersion": "1.0",
            "name": "",
            "constants": [
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "AppTrackingTransparency_NotDetermined",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "AppTrackingTransparency_Authorized",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "AppTrackingTransparency_Denied",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "AppTrackingTransparency_Restricted",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "copyToTargets": -1,
            "filename": "ext_AppTrackingTransparency.ext",
            "final": "",
            "functions": [
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "AppTrackingTransparency_available",
                    "argCount": 0,
                    "args": [],
                    "documentation": "",
                    "externalName": "AppTrackingTransparency_available",
                    "help": "AppTrackingTransparency_available()",
                    "hidden": false,
                    "kind": 4,
                    "returnType": 2
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "AppTrackingTransparency_request",
                    "argCount": 0,
                    "args": [],
                    "documentation": "",
                    "externalName": "AppTrackingTransparency_request",
                    "help": "AppTrackingTransparency_request()",
                    "hidden": false,
                    "kind": 4,
                    "returnType": 1
                },
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "AppTrackingTransparency_status",
                    "argCount": 0,
                    "args": [],
                    "documentation": "",
                    "externalName": "AppTrackingTransparency_status",
                    "help": "AppTrackingTransparency_status()",
                    "hidden": false,
                    "kind": 4,
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                {
                    "name": "AppTrackingTransparency_available",
                    "path": "extensions/ext_AppTrackingTransparency/ext_AppTrackingTransparency.yy"
                },
                {
                    "name": "AppTrackingTransparency_request",
                    "path": "extensions/ext_AppTrackingTransparency/ext_AppTrackingTransparency.yy"
                },
                {
                    "name": "AppTrackingTransparency_status",
                    "path": "extensions/ext_AppTrackingTransparency/ext_AppTrackingTransparency.yy"
                }
            ],
            "origname": "",
            "ProxyFiles": [],
            "uncompress": false,
            "usesRunnerInterface": false
        }
    ],
    "gradleinject": "",
    "hasConvertedCodeInjection": true,
    "helpfile": "",
    "HTML5CodeInjection": "",
    "html5Props": false,
    "IncludedResources": [],
    "installdir": "",
    "iosCocoaPodDependencies": "",
    "iosCocoaPods": "",
    "ioscodeinjection": "<YYIosPlist>\r\n\r\n<key>NSUserTrackingUsageDescription</key>\r\n<string>Your data will be used to deliver personalized ads.</string>\r\n\r\n</YYIosPlist>\r\n\r\n",
    "iosdelegatename": "",
    "iosplistinject": "\r\n\r\n<key>NSUserTrackingUsageDescription</key>\r\n<string>Your data will be used to deliver personalized ads.</string>\r\n\r\n",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "resourceType": "GMExtensionFrameworkEntry",
            "resourceVersion": "1.0",
            "name": "AppTrackingTransparency.framework",
            "embed": 0,
            "weakReference": false
        }
    ],
    "iosThirdPartyFrameworkEntries": [],
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": [],
    "optionsFile": "options.json",
    "packageId": "",
    "parent": {
        "name": "Extensions",
        "path": "folders/App Tracking Transparency/Extensions.yy"
    },
    "productId": "",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosclassname": null,
    "tvosCocoaPodDependencies": "",
    "tvosCocoaPods": "",
    "tvoscodeinjection": "",
    "tvosdelegatename": null,
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [],
    "tvosThirdPartyFrameworkEntries": []
}