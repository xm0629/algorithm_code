# -*- coding :  utf-8 -*-
# @Data      :  2021-04-16
# @Author    :  Ming Xu
# @Email     :
# @File      :  linear_search.py
# Desctiption:  顺序查找

from cal_time import cal_time

@cal_time
def linear_search(list_nums, val):
    """
    顺序查找元素
    :param list_nums: 需要查找的列表
    :param val: 查找的元素
    :return: 返回查找元素的索引
    """
    for idx, v in enumerate(list_nums):
        if v == val:
            return idx
        else:
            return None


## 算法复杂度 O(N), 从头到尾把 list 遍历一遍



if __name__ == "__main__":
    #list_nums = [2, 5, 7, 8]
    #val = 7
    list_nums = list(range(1000000))
    val = 389000
    tmp = linear_search(list_nums, val)
    print(tmp)
