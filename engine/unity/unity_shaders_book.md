
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
- 半兰伯特（Half Lambert）光照模型
- 表6.1 UnityCG.cginc中一些常用的帮助函数

### [七]基础纹理

- 模型顶点的切线空间。原点对应了顶点坐标，x轴是切线方向(t)，y轴是副切线方向(b)，z轴是法线方向(n)。(右手系）
- 纹理的压缩格式（例如DXT5nm，p154)

### [八]透明效果

- 表8.1 Unity提前定义的5个渲染队列
- 表8.2 ShaderLab的Blend命令
- 表8.3 ShaderLab中设置混合因子的命令
- 表8.4 ShaderLab中的混合因子
- 表8.5 ShaderLab中的混合操作
- 8.6.3 常见的混合类型
- 8.7 双面渲染的透明效果

### [九]更复杂的光照

- 表9.1 LightMode标签支持的渲染路径设置选项
- 前向渲染路径有3种处理光照（即照亮物体）的方式，逐顶点处理、逐像素处理，球谐函数（Spherical Harmonics, SH）处理
- 表9.2 前向渲染可以使用的内置光照变量
- 表9.3 前向渲染可以使用的内置光照函数
- 表9.4 顶点照明渲染路径中可以使用的内置变量
- 表9.5 顶点照明渲染路径中可以使用的内置函数
- 表9.6 延迟渲染路径中可以使用的内置变量
- 平行光、点光源、聚光灯
- 5个属性：位置、方向、颜色、强度以及衰减
















## Shader

6-4 
DiffuseVertexLevel
DiffusePixelLevel
HalfLambert

6-5
SpecularVertexLevel
SpecularPixelLevel
BlinnPhong

7-1
SingleTexture

7-2-3
NormalMapTangentSpace
NormalMapWorldSpace

7-3
RampTexture

7-4
MaskTexture

8-3
AlphaTest

8-4
AlphaBlend

8-5
AlphaBlendZWrite

8-7
AlphaTestBothSided

9-2-2-1
ForwardRenering









