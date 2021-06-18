//
// Created by xuming on 21-5-8.
//


#include <iostream>

#define COUNT(M) M * M               //定义有参宏

int main()
{
    std::cout << "+++++++" << std::endl;

//    __FILE__ 包含当前程序文件名的字符串
//    __LINE__ 表示当前行号的整数
//    __DATE__ 包含当前日期的字符串
//    __STDC__ 如果编译器遵循ANSI C标准，它就是个非零值
//    __TIME__ 包含当前时间的字符串

    std::cout << __FILE__ << std::endl;
    std::cout << __LINE__ << std::endl;
    std::cout << __DATE__ << std::endl;
    std::cout << __STDC__ << std::endl;
    std::cout << __TIME__ << std::endl;
    return 0;
}