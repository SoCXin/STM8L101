# [STM8L10x](https://github.com/sochub/STM8L10) 

[![sites](SoC/SoC.png)](http://www.qitas.cn) 

#### 父级：[STM8L](https://github.com/sochub/STM8L)

#### 架构：[STM8](https://github.com/sochub/STM8)

## [描述](https://github.com/sochub/STM8L10/wiki) 

STM8L101系列

* 最低功耗模式：0.30 uA
* 动态运行模式：150 uA/MHz

[![sites](SoC/STM8L10.png)](https://www.st.com/en/microcontrollers-microprocessors/stm8l101.html) 

STM8L低功耗入门级系列典型产品 STM8L101K3T3：

STM8L101只有HSI和LSI，HSI做为主时钟，LSI时钟的频率也从128Khz变成了38Khz，AWU功能做定时唤醒需要调整延时时间的设置，外设的时钟需要手动开启

AWU（Auto Wakeup Unit）的时钟源是独立的LSI（Low Speed Internal Clock），datasheet显示LSI一致性差（25KHz到75KHz不等）。

### [资源收录](https://github.com/sochub/STM8L10)

* [文档](docs/)
* [资源](src/)
    * [STVD工程资源](src/STVD)
    * [SDCC工程资源](src/SDCC)
    * [IAR工程资源](src/IAR)
    * [demo资源](src/demo)
* [bootloader](bootloader/)

### [选型建议](https://github.com/sochub/STM8L10)

STM8L10x是STM8L系列低端产品，产品本身不够出众也不够典型。

可替换的方案包括 [STM8L0x](https://github.com/sochub/STM8L0) 和 [STM8L15x](https://github.com/sochub/STM8L15) 

[![sites](docs/vsSTM8L15X.png)](http://www.qitas.cn) 


STM8L101和STM8S103对比：供电电压范围更宽功耗更低，但裁减了一些外设(WWDG和ADC被裁减了)

##  [SoC资源平台](http://www.qitas.cn)  

