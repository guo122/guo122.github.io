
# Run

version: 0.1

## General

跑步协议，用于方便快速的记录跑步前后中的客观条件、主观感受等细节作为日后参考。

为了压缩空间，一位字符包含数字、大写字母、小写字母

 - 一位字符与十进制数的对应关系
 - [0 - 9]对应0 - 9
 - [A - Z]对应10 - 35
 - [a - z]对应36 - 61
 - 总共0 - 61，无特殊情况尽量使用到大写字母即0 - 35

List，共10类，使用**,** 或 **.** 分隔

括号内为*占用位数*，括号后使用的*符号*为此分类使用的结束符号或*无结束符*。

 - 版本号(2).
 - 基本信息(6),
 - 环境信息(3),
 - 连接(1).
 - 跑前状态(2),
 - 装备情况(3)
 - 跑时状态(5)
 - 跑后情况(3)
 - 意外情况(1)
 - 睡觉前后情况(1)

01.123456,1231.12123,12345,123.11.

## Detail

### 版本号

#### 第一位：主版本号

当发生不兼容的修改时改变

#### 第二位：副版本号
 
当发生兼容的修改时改变

### 基本信息

#### 第一位：速度

0.600+ (配速大于6min/km)
1. 600 (530 - 600 之间)
2. 530
3. 500
4. 440
5. 430
6. 420
7. 410
8. 405
9. 400

#### 第二位：距离

0.5 (距离在5km以内)
1. 10 (5-10km)
2. 15
3. 20
4. 25
5. 30
6. 35
7. 40
8. 40+

#### 第三位：心率

0.None 未记录
1. 150 低于150次/min
2. 155 150-155
3. 160
4. 165
5. 170
6. 175
7. 180
8. 185
9. 190

#### 第四位：从开始热身到跑后完全收拾完毕的完整占用时间

0.1 1h以内
1. 2 2h以内
2. 3
3. 4
4. 5
5. 6
6. 7
7. 8

#### 第五位：与上次跑步的间隔，单位：天

0.0 间隔0天，即昨天跑了
1. 1 间隔1天，前天跑了，昨天没跑
2. 2 
3. 3
4. 4 
5. 5 以此类推

#### 第六位：天气预报的当地温度，单位摄氏度

0.-30 小于-30度
1. -20 小于-20度
2. -10
3. 0
4. 10
5. 20
6. 30
7. 40
8. 40+

### 环境信息

#### 第一位：场地 2x2x3x3

- 操场跑
- 公园跑
- 公路跑

- 无圈
- 小圈
- 大圈

- 起终点一致或相近
- 单程跑

- 少量上下坡
- 大量上下坡

#### 第二位：天气 3x4x3

- 空气正常
- 空气异常干燥
- 空气非常凉

- 无
- 大风
- 下雨
- 下雪

- 无大碍
- 大量积水 颠簸不平
- 路面很滑

#### 第三位：其他 4x3x2

- 正常
- 部分路段 看不清路

- 正常
- 人很多
- 车很多 等红灯较多

- 晨跑
- 上午跑
- 下午跑
- 夜跑

### 连接信息

#### 第一位 3x2x4

- Solo
- 与朋友高速跑
- 与朋友中速跑
- 与朋友放松跑

- 不说话
- 边跑边说话

- 不听歌
- 耳机听歌
- 外放

### 跑前状态

#### 第一位：心情 2x2x2x2x2

- 特别想跑
- 特别不想跑 拖延

- 无异样
- 很困

- 无
- 肌肉酸痛

- 无
- 磨损类异常

- 无
- 关节类异常

#### 第二位：身体 2x2x2

- 无
- 基础热身

- 无
- 下肢高心率热身

- 无
- 上肢高心率热身

### 装备情况

#### 第一位：基本穿着

0.短裤短袖

1. 长裤短袖
2. 长裤短袖薄外套
3. 衬裤长裤短袖薄外套
4. 衬裤长裤长袖薄外套
5. 绒裤长裤长袖薄外套
6. 绒裤长裤长袖厚外套
7. 绒裤底裤长裤长袖厚外套

#### 第二位：其他 2x2x2x2x2

- 无
- 眼镜

- 无
- 帽子

- 无
- 手套

- 无
- 带水

- 无
- 运动饮料或食物

#### 第三位：感受 2x2x2x2x2

- 鞋子正常
- 鞋子不适

- 裤子正常
- 掉裤子

- 裤衩子正常
- 磨蛋

- 上衣正常
- 磨乳头

- 眼镜正常
- 沾上过多杂物

### 跑时状态

#### 第一位：3x3x3

- 无
- 想上厕所
- 成功找到厕所

- 正常
- 很冷
- 很热

- 精神亢奋 多次冲刺
- 精神正常 偶尔冲刺
- 精神萎靡

#### 第二位：2x4x3

- 几乎无汗
- 腰部胸口浸湿
- 大汗淋漓

- 呼吸全程平稳 加速后能快速恢复
- 加速后需要大幅降低配速平稳呼吸
- 匀速一段时间后需要减速平稳呼吸
- 无法平稳呼吸

- 心脏无感觉
- 有过载感

#### 第三位： 2x2x2x2x2

- 无
- 脚酸痛

- 无
- 落地有“无缓冲感”

- 无
- 大腿肌肉酸痛

- 无
- 小腿肌肉酸痛

- 无
- 膝盖有悬空感

#### 第四位： 3x3

- 无
- 中等饥饿感
- 强烈的饥饿感

- 无
- 中等饥渴感
- 口感 强烈饥渴感

#### 第五位： 2x2x2x2

- 无
- 鼻子疼（一般由冷空气导致）

- 无
- 嗓子疼（一般由呼吸导致）

- 无
- 风吹的脸疼

- 无
- 踩到水坑鞋子完全湿透

### 跑后情况

#### 第一位： 2x2x2x3

- 无
- 简单放松
- 压腿

- 立式压腿
- 坐式压腿

- 舒畅的压腿
- 紧巴巴的压腿

- 无
- 踢腿

#### 第二位：2x2x2x2

- 无
- 腿部力量训练

- 无
- 腰部力量训练

- 无
- 俯卧撑

- 无
- 引体向上

#### 第三位： 3x3x3

- 地球被我踩在脚下
- 心情无变化
- 好累

- 跑步后两小时精神状态无明显下降
- 身体疲倦 想睡觉
- 消极

- 热水澡
- 冷水澡
- 毛巾澡

### 意外情况

#### 第一位： 2x2x2x2

- 无
- 摔倒

- 摔倒后跑回去
- 摔倒后走回去

- 无
- 撞到人

- 无
- 撞到车

### 睡觉前后情况

#### 第一位： 2x2x2x2

- 睡前感觉无异样
- 感觉肌肉酸痛

- 无异样
- 腿有未拉开的抽筋电流感

- 次日醒来无异样
- 肌肉酸痛

- 无异样
- 有极强的疲惫感

## 注意事项

- 所有范围均为小于等于
- 例如是否路滑、是否很冷等纯主观判断，以是否困扰到自己为标准

## WillList

- 饮食情况




