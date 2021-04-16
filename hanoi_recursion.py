# -*- coding :  utf-8 -*-
# @Data      :  2021-04-15
# @Author    :  Ming Xu
# @Email     :
# @File      :  hanoi_recursion.py
# Desctiption:  递归实现汉诺塔问题


def hanoi(n, a, b, c):
    """
    汉诺塔递归算法
    :param n: n 个盘子
    :param a: Ａ 柱子
    :param b: B 柱子
    :param c: C 柱子
    :return: ｎ 个盘子从 A-C
    """
    if n > 0:
        hanoi(n-1, a, c, b)
        print("move from %s to %s" % (a, c))
        hanoi(n-1, b, a, c)



if __name__ == "__main__":
    hanoi(20, 'A', 'B', 'C')
