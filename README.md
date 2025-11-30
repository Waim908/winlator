<p align="center">
	<img src="logo.png" width="376" height="128" alt="Winlator Logo" />
</p>

# Winlator 908c （908 custom）

# 此项目是基于hostei的改版进行修改（如果可以，单纯修改原版会在release进行单独的说明），同时作为原版winlator的修改和补全，如果你不喜欢分叉版本可以去下载rootfs来完善原版winlator的体验

# 在线组件

## 如果你需要，可以通过*MT管理器*通过dex查找```raw.```关键字替换为gitee的*raw*或者此仓库的*github raw*网址（如果是github只需要替换brunodev85/main为Waim908/winlator-custom）,此方法可使用在所有修改的*第三方winlator版本* ，如果你正好是第三方改版作者请在应用发布时或应用内对于此仓库链接进行声明

## [gitee镜像](https://gitee.com/Waim908/winlator) 会完成自动更新，且海外用户也能访问，gitee仓库仅作为镜像且问题反馈与拉取请求功能已经砍掉，不会在gitee进行主要开发，也不要额外Fork gitee仓库或者创建相同的仓库在gitee

### Box64

```版本号.03.更新次数``` 03代表进行了O3编译优化处理

### dxvk

gplasync 2.7之前的版本需要声明变量```DXVK_GPLASYNCCACHE=1```

```版本号.1``` 代表正常dxvk版本与原版dxvk进行区分

```版本号.1.1.更新次数``` 代表dxvk gplasync版本更新次数(既`-`符号后面的数字--如果有且大于1，否则不进行标记)

```版本号.sarek版本号``` 代表dxvk sarek版本（sarek针对指定dxvk版本制作且独立了版本号与原版无法同步）由于1.10标记为1.10.x，那么版本号标记1.10.99为dxvk版本，总之大致在1.10.x

```版本号.sarek版本号.1``` 代表dxvk sarek async版本

### vkd3d

```版本号.1``` 代表正常vkd3d版本与原版vkd3d进行区分，通常高版本wine已经自带

### turnip

```版本号.03.更新次数``` 03代表进行了O3编译优化处理

# 子项目

[rootfs-custom-winlator](https://github.com/Waim908/rootfs-custom-winlator)

[wine-winlator](https://github.com/Waim908/wine-winlator)

# Winlator

Winlator is an Android application that lets you to run Windows (x86_64) applications with Wine and Box86/Box64.

# Installation

1. Download and install the APK (Winlator_10.1.apk) from [GitHub Releases](https://github.com/brunodev85/winlator/releases)
2. Launch the app and wait for the installation process to finish

----

[![Play on Youtube](https://img.youtube.com/vi/ETYDgKz4jBQ/3.jpg)](https://www.youtube.com/watch?v=ETYDgKz4jBQ)
[![Play on Youtube](https://img.youtube.com/vi/9E4wnKf2OsI/2.jpg)](https://www.youtube.com/watch?v=9E4wnKf2OsI)
[![Play on Youtube](https://img.youtube.com/vi/czEn4uT3Ja8/2.jpg)](https://www.youtube.com/watch?v=czEn4uT3Ja8)
[![Play on Youtube](https://img.youtube.com/vi/eD36nxfT_Z0/2.jpg)](https://www.youtube.com/watch?v=eD36nxfT_Z0)

----

# Useful Tips

- If you are experiencing performance issues, try changing the Box64 preset to `Performance` in Container Settings -> Advanced Tab.
- For applications that use .NET Framework, try installing `Wine Mono` found in Start Menu -> System Tools -> Installers.
- If some older games don't open, try adding the environment variable `MESA_EXTENSION_MAX_YEAR=2003` in Container Settings -> Environment Variables.
- Try running the games using the shortcut on the Winlator home screen, there you can define individual settings for each game.
- To display low resolution games correctly, try to enabling the `Force Fullscreen` option in the shortcut settings.
- To improve stability in games that uses Unity Engine, try changing the Box64 preset to `Stability` or in the shortcut settings add the exec argument `-force-gfx-direct`.

# Information

This project has been in constant development since version 1.0, the current app source code is up to version 7.1, I do not update this repository frequently precisely to avoid unofficial releases before the official releases of Winlator.

# Credits and Third-party apps
- GLIBC Patches by [Termux Pacman](https://github.com/termux-pacman/glibc-packages)
- Wine ([winehq.org](https://www.winehq.org/))
- Box86/Box64 by [ptitseb](https://github.com/ptitSeb)
- Mesa (Turnip/Zink/VirGL) ([mesa3d.org](https://www.mesa3d.org))
- DXVK ([github.com/doitsujin/dxvk](https://github.com/doitsujin/dxvk))
- VKD3D ([gitlab.winehq.org/wine/vkd3d](https://gitlab.winehq.org/wine/vkd3d))
- CNC DDraw ([github.com/FunkyFr3sh/cnc-ddraw](https://github.com/FunkyFr3sh/cnc-ddraw))

- #### More

- [DXVK gplasync](https://gitlab.com/Ph42oN/dxvk-gplasync)

- [DXVK sarek](https://github.com/pythonlover02/dxvk-Sarek)

Special thanks to all the developers involved in these projects.<br>
Thank you to all the people who believe in this project.