
# 性能检查

对绝大多数软件来说，性能评测都是非常严谨的过程。首先，我们查明性能支持的基本数据，比如可用的内存空间，CPU能承载的吞吐量，同时在线人数等等。然后，我们构建目标平台的程序，测试载入特定场景的表现，并记录产生的性能数据。收集完这些数据后，我们研究、分析其中的性能瓶颈。当发现问题后，我们还要找到问题发生的原因，修改配置或代码修复问题，重复测试。

尽管开发游戏是一个非常艺术的过程，但它也是充满技术性的，因此有充足的理由以严谨客观的方式对待它。我们的游戏应该有明确的目标群体，这能告诉我们硬件限制，比如运行在什么系统上，优化需要知道明确的平台（尤其是主机游戏和移动端游戏）。我们可以在运行时进行性能测试，从众多硬件（CPU、GPU、内存、物理引擎、渲染管线等等）中收集性能数据，比对它们考虑哪些是可以被接受的。我们可以使用这些数据找到程序中的瓶颈，更多的性能数据帮助查明问题的根源。最终，依据问题的类型，我们应该使用相应的解决方法优化我们的程序，使表现更加符合预期的效果。

然而，在开始性能问题修复前，我们需要证明性能问题确实存在。在找到好的原因前就花时间重写或重构代码是非常不明智的，不值得那么麻烦的去过早优化。一旦我们有了性能问题的证据，下一步就是搞清楚瓶颈在哪。理解性能问题出在哪是至关重要的，否则我们将浪费很多时间在猜测的不确定的地方上。经常发生的是我们只修复了问题的表面，没有找到引起问题的根源，这样就有风险，它可能在未来的某处再次出现，或者在我们没有检测出来的地方存在。

在本章，我们将探索以下几点：

- 如何使用Unity Profiler收集性能数据
- 如何分析性能数据找到性能瓶颈
- 分解性能问题找到问题的根源

充分理解了问题后，你将有足够充足的信息，在接下来的章节中解决找到的性能问题。