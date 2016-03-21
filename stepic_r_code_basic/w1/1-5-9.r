# Пусть вектор называется нестрого возрастающим, если каждый следующий элемент в нём не меньше, чем предыдущий. Точно так же, вектор назовём нестрого убывающим, если каждый следующий элемент в нём не больше, чем предыдущий. Напишите функцию, которая принимает один аргумент (числовой вектор) и возвращает TRUE, если вектор обладает свойством нестрогой монотонности, то есть является либо несторого возрастающим, либо нестрого убывающим. В противном случае функция возвращает FALSE.

# Пример. x=c(0, 0, 3, 4, 4, 8) нестрого возрастает, возвращаем TRUE. y=c(3:0, 1) был бы нестрого убывающим, если бы не последняя единица, поэтому возвращаем FALSE.

is_monotone <- function(x) {
    all(x == cummax(x)) || all(x == cummin(x))
}