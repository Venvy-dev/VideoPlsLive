# VideoPlsLive

[![CI Status](http://img.shields.io/travis/Zard1096/VideoPlsLive.svg?style=flat)](https://travis-ci.org/Zard1096/VideoPlsLive)
[![Version](https://img.shields.io/cocoapods/v/VideoPlsLive.svg?style=flat)](http://cocoapods.org/pods/VideoPlsLive)
[![License](https://img.shields.io/cocoapods/l/VideoPlsLive.svg?style=flat)](http://cocoapods.org/pods/VideoPlsLive)
[![Platform](https://img.shields.io/cocoapods/p/VideoPlsLive.svg?style=flat)](http://cocoapods.org/pods/VideoPlsLive)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

VideoPlsLiveSDK is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "VideoPlsLive"
```

## Usage
##### 1. 引入头文件

1)打开`*AppDelegate.m`(`*`代表你的工程名字)导入头文件:

```js
#import <VideoPlsLiveSDK/LiveIVASDK.h>
在didFinishLaunchingWithOptions方法中调用`VideoPlsCytronSDK.h`的 `setAppKey`方法来设置相应`appkey`,代码如下:

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// "" 此处替换为自己的PlatformID
[LiveIVASDK setPlatformId:@""]; 
/**
 *  设置是否在全屏下使用video++ webview(只能设置一次,不可重复设置)
 *  0 :全屏小屏都不调用我们webview
 *  1 :小屏时不使用我们webview,全屏时使用
 *  默认都不使用
 */
[LiveIVASDK setUseVideoPlsFullscreenWebviewType:0];
return YES;
}
```

2)添加实现代码

```js
在需要用到互动层的地方添加头文件:
#import <VideoPlsLiveSDK/LDSDKIVAView.h>

在播放器层上面添加 LiveIVAView 代码如下:
LDSDKIVAView *liveView = [[LDSDKIVAView alloc] initWithFrame:showView.bounds Url:@"videoURL" VideoType:1 isLive:YES];
[self.player.view addSubview: liveView];

接着，设置互动层显示区域，代码如下所示:
(注:frame 与播放器实际位置一致,videoRect 与视频实际显示区域一致,isFullScreen 控制 全屏小、窗口，全屏显示互动。参数根据需要自行调整，可参考头文件)
[liveView updateFrame:self.view.bounds videoRect:self.view.bounds isFullScreen:YES];

最后，调用 startLoading 方法，如下: (注:所有参数必须放在 startLoading 之前设置)
[liveView startLoading];

同时，必须在每次视频frame发生变化时调用
[liveView updateFrame:self.view.bounds videoRect:self.view.bounds isFullScreen:isFullScreen?];

播放结束后，需调用 stop 方法来确保内存能够正确释放。
[liveView stop];

```
##### 2.注意事项
```

1 视频中插广告时需要接受通知 `VVSDKVideoAdsEntered` 暂停背后播放器播放

2 视频中插广告结束时接受 `VVSDKVideoAdsEnd` 并且调用自己的播放器继续播放方法

3 在竖屏小屏时，默认只显示红包广告、图片广告、中插视频广告

4 在小屏／全屏时点击广告时需要接受`LDSDKWebViewURL`通知并取出userinfo里的url，用自己的webview打开

5 今日头条新闻功能:在info.plist内添加白名单

![image](http://videojj-cdn.oss-cn-beijing.aliyuncs.com/images/ios/news/bmd.png )

6 [LiveIVASDK getLiveOSVersion]; 可以获取当前版本号

```

## Author

Zard1096, mr.zardqi@gmail.com		
Lishaoshuai, lishaoshuai1990@gmail.com	 
Bill, fuleiac@gmail.com

## License

VideoPlsLive is available under the MIT license. See the LICENSE file for more info.
