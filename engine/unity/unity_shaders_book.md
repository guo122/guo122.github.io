
# Unity Shader 入门精要 笔记

## Basic

### [二]渲染流水线

pic
应用阶段、几何阶段、光栅化阶段

*CPU与GPU通信*

1. 资源加载到显存
2. 设置渲染状态
3. Draw Call发送顶点信息（具体已经放在显存里了）

### [三]Unity Shader基础

- 表3.1	Propeties语义支持的属性类型
- 表3.2 常见的渲染状态设置选项
- 表3.3 SubShader的标签类型
- 表3.4 Pass的标签类型

### [四]学习Shader所需的数学基础

- 4.5 矩阵的几何意义：变换
- 4.6 坐标空间的变换
- 图4.45 渲染流水线中顶点的空间变换过程
- 4.7 法线变换
- 4.8 Unity Shader的内置变量（数学篇） 

### [五]开始Unity Shader学习之旅

- 表5.1 ShaderLab属性类型和CG变量类型的匹配关系
- 5.3 强大的援手：Unity提供的内置文件和变量
- 5.7 Shader整洁之道

### [六]Unity中的基础光照

- 6.1.4 BRDF光照模型（Bidirectional Reflectance Distribution Function）
- 6.2 标准光照模型
- 自发光（emissive）
- 高光反射（specular）Phong模型 Blinn模型
- 漫反射（diffuse）兰伯特定律（Lambert's law）
- 环境光（ambient）
- 逐像素还是逐顶点 Phong着色（Phong shading）高洛德着色（Gouraud shading）
- Blinn-Phong光照模型 菲涅尔反射（Fresnel reflection）









## Shader
