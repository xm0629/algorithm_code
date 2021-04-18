# -*- coding: utf-8 -*-
# @Time         :   2021年04月18日 21时52分
# @Email        :   xm19930629@163.com
# @Author       :   Ming Xu
# @File         :   cal_time.py
# @Description  :

import time

def cal_time(func):
    def wrapper(*args, **kwargs):
        t1 = time.time()
        result = func(*args, **kwargs)
        t2 = time.time()
        print("%s running time:% secs." % (func.__name__, t2 - t1))
    return wrapper