## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them

 - Docker v18.09+
 - Git
 - Make

### Installing

A step by step series of examples that tell you how to get a development env running

Clone repository
```
$ git clone git@github.com:ivankomolin/stm32f030f4p6-app-blank.git ./
```

### Compile firmware
```
$ make compile
```

### Upload firmware in your chip
```
$ make upload
```

### Features app
This app generated stm32CubeMx with makefile
And added example code in ./app/Src/main.c
```
HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_SET);
HAL_Delay(1000);
HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_RESET);
HAL_Delay(1000);
```

