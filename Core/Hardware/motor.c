/*
 * Motor.c
 *
 *  Created on: May 1, 2026
 *      Author: izzyoung
 */


#include "motor.h"

#include "tim.h" // 因为要用到 htim1
int abs(int p){
	if(p>0){
		return p;
	}else{
		return -p;
	}
}

void Motor_SetSpeed(int moto1, int moto2) {
    // 逻辑处理：正负号判断引脚电平（方向），绝对值控制 PWM（速度）
    // 速度范围：-7200~7200
    if(moto1 >= 0) {
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, GPIO_PIN_RESET);
    } else {
        // 反转逻辑...
    	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_13, GPIO_PIN_SET);
    	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12, GPIO_PIN_RESET);
    }
    __HAL_TIM_SetCompare(&htim1, TIM_CHANNEL_4, abs(moto1));
    if(moto2 >= 0) {
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, GPIO_PIN_SET);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, GPIO_PIN_RESET);
	} else {
		// 反转逻辑...
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_14, GPIO_PIN_SET);
		HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, GPIO_PIN_RESET);
	}
	__HAL_TIM_SetCompare(&htim1, TIM_CHANNEL_1, abs(moto2));
}
