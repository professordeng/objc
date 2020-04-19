---
title: 内存管理
---

OC 对象都是在堆里，因此用不到的对象需要被销毁，OC 用 ARC 技术实现。

其实 ARC 是自动引用计数（automatic reference counting），当没有人需要你了，你就没用了，系统自动回收。

