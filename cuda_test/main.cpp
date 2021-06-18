//
// Created by xuming on 21-5-8.
//


#include <iostream>

#define COUNT(M) M * M               //定义有参宏

int main()
{
    std::cout << "+++++++" << std::endl;



    int x = 6;
//    printf("COUNT = %d\n", COUNT(x + 1));// 输出结果： COUNT = 13
//    printf("COUNT = %d\n", COUNT(++x));  // 输出结果： COUNT = 56

    int x1 = 6;
    printf("%d, %d, %d", ++x, ++x, ++x1*++x1);
    return 0;
}