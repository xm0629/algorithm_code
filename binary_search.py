# -*- coding: utf-8 -*-
# @Time         :   2021年04月18日 21时30分
# @Email        :   xm19930629@163.com
# @Author       :   Ming Xu
# @File         :   binary_search.py
# @Description  :　　二分查找


def binary_search(li, val):
    left = 0
    right = len(li) - 1

    while left <= right:    # 候选区有值
        mid = (left + right) // 2
        if li[mid] == val:
            return mid
        elif li[mid] > val:  # 带查找的值在 mid 左侧
            right = mid - 1
        else:
            left = mid + 1

    else:
        return None


## 算法复杂度O(log n)



if __name__ == "__main__":
    list_nums = [1, 2, 3, 4, 5, 6, 7, 9]
    val = 3
    tmp = binary_search(list_nums, val)
    print(tmp)






