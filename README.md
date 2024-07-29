# CXUserSDK

## Overview
An Augmented Reality SDK that uses 2D Indoor Mapping for Localization & Navigation. Visualix Admin App is to be used for mapping. Google Cloud Anchor is being used for hosting and resolving anchors.

## Installation
### Via Package Manager
#### CocoaPods:
Add the following lines into your Podfile.

```
pod 'CXUserSDK/Jibestream', :git => 'https://github.com/Jibestream/cxai-ar-sdk.git'
pod 'Jibestream', :git => 'https://github.com/Jibestream/cxai-ar-sdk.git'

```

#### Note: Use `CXUserSDK/Jibestream` if you want to use Jibestream's 2D map otherwise replace it with `CXUserSDK/Meridian` for Meridian's 2D map.

## Usage
CXUserSDK is the main module that will be the starting point of the modules. This module expects class confirming to `IndoorMapProtocol` (currently `JMapManager`) so the SDK is open for all available supported indoor mapping modules such as Jibestream in this case from CXJibestreamKit. 

This is how the consuming app will initialise the SDK.
```
import CXJibestreamKit // 2D IndoorMap Module
import CXUserSDK // Main Module

func initSDK() {
        // Add your config incase of Jibestream
        let config = JMapConfig(host: "", clientID: "", clientSecret: "", customerID: , venueID: )

        // JMapManager confirms to IndoorMapProtocol.
        var jMapManager: JMapManager?
        jMapManager = JMapManager(jMapConfig: config)
        if let indoorMapManager = jMapManager {
            self.userSDK = UserSDK(indoorMapKit: indoorMapManager)
        }
    }
```

## Modules

### CXUserSDK
Main starting point of our SDK. Initialize UserSDK object to begin.

### CXJibestreamKit
A module that is a wrapper around Jibesteam SDK that contains `JMapManager` class that confirms to `IndoorMapProtocol`. 

