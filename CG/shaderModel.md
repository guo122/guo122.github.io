
# HLSL Shader Model

将顶点从模型空间坐标系转化到屏幕空间坐标系

## 寄存器

|Version| a0 | aL | bn | cn  | in | on | p0 | rn | sn | vn |
|  ---  |--- | ---| ---| --- | ---| ---| ---| ---| ---| ---|
|vs_1_1 | 1  | 0  | 0  |>=96 | 0  | 13 | 0  | 12 | 0  | 16 |
|vs_2_0 | 1  | 1  | 16 |>=256| 16 | 13 | 0  | 12 | 0  | 16 |
|vs_2_x | 1  | 1  | 16 |>=256| 16 | 13 | 1  |>=12| 0  | 16 |
|vs_3_0 | 1  | 1  | 16 |>=256| 16 | 12 | 1  | 32 | 4  | 16 |

- **in**顶点数据的input寄存器

顶点声明映射到*semantics*上,使用*dcl_usage*指令与shader的输入寄存器关联,每个指令只能引用一个*input regesiter*

- **cn**渲染参数的const寄存器

一般是通过*def*, *defb*, *defi*指令定义的，也能来自设备通过方法*SetVertexShaderConstantF*等

- **cn**查询const寄存器的地址寄存器

- **rn**存储临时数据的临时寄存器

- **al**循环计数器寄存器

使用*loop*和*endloop*指令来控制流

- **sn**采样纹理的采样寄存器

本身使用*texldl*指令来采样纹理

- **on**shader输出结果的output寄存器

存储顶点的同次剪裁空间的坐标以及每个顶点相关的数据，如颜色、纹理坐标信息。

位置寄存器*oPos*，颜色寄存器*oD0*和*oD1*，fog寄存器*oFog*，点大小寄存器*oPts*，纹理坐标寄存器*oT0*到*oT7*。

- 寄存器修饰符
 - 目的寄存器写掩码：r.xyzw
 - 源寄存器multiplex：r.[xyzw][xyzw][xyzw][xyzw]
 - 源寄存器negation：-r
 - 绝对值：r_abs
 - 逻辑negation：!r

## VS Version

### 1.1

指令用于声明，基本运算，矩阵计算，简单比较以及基本光照计算

### 2.0

主要改进增加了静态流控制，静态条件包括*subroutine*，*分支*和*循环指令*

新的算数指令包括：*abs*, *crs*, *lrp*, *nrm*, *pow*, *sgn*, *sincos*

### 2.x

增加了条件，静态流控制的深度嵌套和动态流控制指令

```
typedef struct _D3DVSHADERCAPS2_0
{
	DWORD	Caps;
	INT		DynamicFlowControlDepth;
	INT		NumTemps;
	INT		StaticFlowControlDepth;
}D3DVSHADERCAPS2_0;
```

### 3.0

产生了input和output寄存器文件，增加了*saturate*指令修饰符


## 指令 ***TODO***

### 1.1

### 2.0

### 2.x

### 3.0

## Manipulating Shaders

可以使用*CreateVertexShader*, *SetVertexShader*, *GetVertexShader*管理

应用程序可以使用D3DX把vs源代码编译*DWORD*指令数组

const寄存器的内容一直维持到这杯rest。设备支持的最大的const寄存器数目定义在*D3DCAPS9::MaxVertexShaderConst*

## Drawing Multiple Instances

3.0 支持以不同的速率采样不同的顶点流，这是我们能够绘制一个模型的多个实例
```
HRESULT SetStreamSourceFreq( UINT stream, UINT frequency );
```
example
```
struct GeometryVertex
{
	D3DVECTOR	m_position;
	D3DVECTOR	m_normal;
};

struct InstanceVertex
{
	D3DVECTOR	m_offset;
	D3DCOLOR	m_diffuse;
};

IDirect3DVertexBuffer9 * geometry = fill_geometry();
IDirect3DVertexBuffer9 * instance = fill_instance();

THR( device->SetStreamSource( 0, geometry, 0, sizeof( GeometryVertex ) ) );
THR( device->SetStreamSourceFreq( 0, D3DSTREAMSOURCE_INDEXEDDATA | 20 ) );
THR( device->SetStreamSource( 1, instances, 0, sizeof( InstanceVertex ) ) );
THR( device->SetStreamSourceFreq( 1, D3DSTREAMSOURCE_INDEXEDDATA | 1 ) );
```

## Common Computation ***TODO***

- Constant generation
- Fraction part

## 固定功能处理 ***TODO***









## Reference

- [Microsoft Docs](https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/dx-graphics-hlsl)
- [定点着色器详解（Vertex Shaders）](https://www.cnblogs.com/lvrcbl/p/3909178.html)
