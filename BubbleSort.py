# -*- coding: utf-8 -*-
# @Time         :   2021年04月18日 22时21分
# @Email        :   xm19930629@163.com
# @Author       :   Ming Xu
# @File         :   BubbleSort.py
# @Description  :   冒泡排序

from cal_time import cal_time

def bubblesort(li):
    for i in range(len(li)-1):
        for j in range(len(li)-i-1):
            if li[j] > li[j+1]:
                li[j], li[j+1] = li[j+1], li[j]

        print(li)



li = [9, 6, 7, 1]
print(li)
bubblesort(li)


