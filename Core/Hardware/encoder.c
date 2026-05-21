/*
 * encoder.c
 *
 *  Created on: May 21, 2026
 *      Author: izzyoung
 */
int Read_Speed(TIM_HandleTypeDef *htim)
{
    int temp;
    temp = (short)__HAL_TIM_GetCounter(htim); // 1. 读取计数值并强转
    __HAL_TIM_SetCounter(htim, 0);            // 2. 计数值清零
    return temp;                              // 3. 返回速度值
}

