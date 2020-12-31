
# 序章

良好的用户体验是游戏成功的关键，而它不只包括游戏的故事和玩法，还包括流畅的游戏画面，可靠的服务器连接，及时的用户操作反馈，由于手游和数字下载的流行，最终游戏的文件大小也是关键。感谢像Unity这样的商业引擎提供了大量实用的游戏开发工具帮助独立游戏开发者降低游戏开发的门槛。然而，由于游戏行业激烈的竞争，玩家们对游戏的期望也越来越高。我们期望自己的游戏在各个方面都能够经受住玩家们、评论家们以及云玩家们的考验。

性能优化的终极目标是极致的用户体验。糟糕的游戏优化的结果可能是低帧率、卡顿、崩溃、输入延迟、过长的载入时间、割裂的运行表现、奇怪的物理现象、甚至是极高的耗电（通常是没有考虑到移动设备）。哪怕所有事都做的非常好，只有一件没做好，结果出现了上述的问题，那会是游戏开发者的噩梦，

性能优化的目标之一是最大化的使用可用资源，包括CPU资源，指令消耗的周期，使用了多少内存（RAM），也包括GPU资源，使用了多少显存（VRAM），填充率（Fill Rate），内存带宽等等。然而，优先级最高最重要的性能优化目标是确保不会在关键时刻因为资源瓶颈引发问题。即使是很小的、偶尔的卡顿、延迟，也可能打断玩家的体验，产生违和感，限制我们创造出完美体验的可能。另一个优化的好处是，当我们能节省更多的资源，便可以在游戏中放入更多内容，让我们创造出更有趣、生动的游戏体验。

同样重要的决定是退一步，停止性能优化。在无限时间、无限资源的条件下，总能找到让程序更好、更快、更高效的方法。游戏所能达到的可接受的品质，是开发过程中必须要确定的。否则，没有明确目标、明确收益的不停改动会导致更多的风险和bug，最终在劫难逃。

判断一个性能问题是否值得修复的最好方法，只需要考虑：“玩家会注意到这个问题吗？”。如果玩家注意不到，那在此处的性能优化就是浪费时间。俗话说，“过早的优化是万恶之源”。

在没有明确证据证明是必要的过早优化是返工和重构的主要责任。这代表没有明确性能问题存在的改动，或者只是觉得性能问题可能存在而没有证据指向具体的位置。

当然，Donald Knuth的那句俗话说，我们仍应该在编码时避免一些简单明显的性能陷阱。然而，真正的性能优化工作会在项目末期占用大量时间，我们应该安排时间打磨产品，同时避免过高不切实际的预期耗费大量的时间。这类错误会导致程序员大量的加班，最终沮丧的发现一无所获。

这本书的目标是提供工具、知识和技能帮助你检查和修复Unity程序的性能问题，不管它们是由什么引起的。这些性能瓶颈可能出现在硬件上，比如CPU、GPU、内存，也可能出现在软件系统上，比如物理模拟、渲染，甚至是Unity引擎本身。

性能优化会让我们的游戏更可能成功，在高品质游戏随处可见的当下脱颖而出。





