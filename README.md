# OrzOpenCV

[OpenCV](https://opencv.org/) For iOS With SwiftPM Support

> OpenCV官方仓库:<https://github.com/opencv/opencv>

## 手动编译iOS平台可使用的`XCFramework`

编译环境要求：

- 系统：MacOS 10.15
- IDE：Xcode 12.2
- 脚本语音版本：Python 3.6
- CMake 3.18.5/3.19.0, 可使用Homebrew进行安装`brew install cmake`
- 源码版本控制工具: git

编译方法：

bash 运行下面命令:

```bash
git clone --recursive https://github.com/OrzGeeker/OrzOpenCV.git && \
cd OrzOpenCV && \
./ios_xcframework_build.sh
```

## 工程引用

- 分支依赖

```swift
.package(url: "https://github.com/OrzGeeker/OrzOpenCV.git", .branch("main"))
```

- [iOS使用教程](https://docs.opencv.org/master/d3/dc9/tutorial_table_of_content_ios.html)


参考资料
---

- [Build OpenCV XCFramework README](https://github.com/opencv/opencv/tree/master/platforms/apple)

- [WWDC XCFramework视频介绍](https://developer.apple.com/videos/play/wwdc2020/10147/)
