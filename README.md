# DWParticleEmitter
# 如果感觉不错，请给个Star支持一下
# 使用中如果遇到什么问题可以联系我
# QQ:739814184 
# 微信:ai739814184
# QQ群:577506623
# e-mail:dwang.hello@outlook.com

---

#### 效果图
![粒子效果](https://github.com/dwanghello/DWParticleEmitter/blob/master/粒子效果.gif)

---

### 快速使用
>
    将 *DWParticleEmitter* 文件夹导入到工程中
>
![粒子效果主文件](https://github.com/dwanghello/DWParticleEmitter/blob/master/粒子效果主文件.png)
>
---
> 在需要使用粒子效果的地方导入头文件
>      
     #import "DWParticleEmitter.h"
> 初始化
> 
    DWParticleEmitter *emitter = [[DWParticleEmitter alloc] init];
> 粒子内容(显示的内容,为image对象)
>
    emitter.cellContents = @[[UIImage imageNamed:@"图片名称"]];
> 发射模式(枚举类型)
> 
    emitter.caEmitterMode = caVolume;
![发射模式](https://github.com/dwanghello/DWParticleEmitter/blob/master/发射模式.png)
> 发射形状的样式(枚举类型)
> 
    emitter.caEmitterShape = caLine;
![发射形状的样式](https://github.com/dwanghello/DWParticleEmitter/blob/master/发射形状的样式.png)
> 发射速度
>     
     emitter.cellVelocity = -10.0f;
> Y轴的加速度
>
    emitter.cellYAcceleration = 10.0f;
> 发射的纬度
> 
    emitter.cellEmissionLatitude = -M_PI / 2;
> 发射粒子的范围
> 
    emitter.cellEmissionRange = M_PI / 4;

> 添加粒子效果
> 
    /**
    粒子效果
>
     @param emitterPosition 发射位置
     @param emitterSize     发射源的尺寸
     @param view            添加到的View
     @return                mySelf
     */
>
    [emitter addEmitterLayerPosition:CGPointMake(self.view.frame.size.width/2, -22) emitterSize:CGSizeMake(self.view.frame.size.width, 0.0) view:self.view];

# *更多属性请到DWParticleEmitter.h文件中查看*

