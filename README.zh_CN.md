# WWW Redirector [English](https://github.com/Moon1102/WWW-Redirector/blob/master/README.md)

<p align="center">
    <a href="http://perfect.org/get-involved.html" target="_blank">
        <img src="http://perfect.org/assets/github/perfect_github_2_0_0.jpg" alt="Get Involed with Perfect!" width="854" />
    </a>
</p>

<p align="center">
    <a href="https://github.com/PerfectlySoft/Perfect" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg" alt="Star Perfect On Github" />
    </a>  
    <a href="http://stackoverflow.com/questions/tagged/perfect" target="_blank">
        <img src="http://www.perfect.org/github/perfect_gh_button_2_SO.jpg" alt="Stack Overflow" />
    </a>  
    <a href="https://twitter.com/perfectlysoft" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg" alt="Follow Perfect on Twitter" />
    </a>  
    <a href="http://perfect.ly" target="_blank">
        <img src="http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg" alt="Join the Perfect Slack" />
    </a>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat" alt="Swift 3.0">
    </a>
    <a href="https://developer.apple.com/swift/" target="_blank">
        <img src="https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat" alt="Platforms OS X | Linux">
    </a>
    <a href="http://perfect.org/licensing.html" target="_blank">
        <img src="https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat" alt="License Apache">
    </a>
    <a href="http://twitter.com/PerfectlySoft" target="_blank">
        <img src="https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat" alt="PerfectlySoft Twitter">
    </a>
    <a href="http://perfect.ly" target="_blank">
        <img src="http://perfect.ly/badge.svg" alt="Slack Status">
    </a>
</p>

从"non-www.* "到 "www.* "的简单重定向项目

This is a solution to a DNS oddity that does now allow a non-www root hostname (such as perfect.org) to have a CNAME record to a multi-zoned load balancer such as what AWS provides.

请使用Swift Package Manager编译，之后会产生一个可以独立运行的HTTP服务器应用程序。

## Swift 兼容性说明

本项目目前使用 **Xcode 8.2** 或者 **Swift 3.0.2** 工具链编译，可以在Ubuntu上使用。

## 编译运行

运行以下命令可以运行本示例程序并在80端口创建服务器：

```
git clone https://github.com/PerfectExamples/WWWRedirector.git
cd WWWRedirector
swift build
.build/debug/WWWRedirector
```

应该能够看到以下输出：

```
[INFO] Starting HTTP server localhost on 0.0.0.0:80
```

意味着服务器已经准备好。

## 部署到Linux环境

It is recommended that you use Perfect Assistant to deploy, but if you are unable to use PA to deploy please follow the appropriate steps as outlined in the Medium article ["Deploying Server Side Swift to Linode"](https://medium.com/@iamjono/deploying-server-side-swift-to-linode-beb883051c7d#.1cl233jev)

## 问题报告

目前我们已经把所有错误报告合并转移到了JIRA上，因此github原有的错误汇报功能不能用于本项目。

您的任何宝贵建意见或建议，或者发现我们的程序有问题，欢迎您在这里告诉我们。[http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1)。

目前问题清单请参考以下链接： [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)



## 更多内容
关于Perfect更多内容，请参考[perfect.org](http://perfect.org)官网。
