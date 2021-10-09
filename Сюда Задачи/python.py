# сложите цифры целого числа 
# к примеру 666
a = 1234
num = 0
for b in str(a):
    num += int(b)
print(num)
#это самый простой путь можно даже сказать
#решение по тупому(не в обиду) и привыкай все задачи 
#или программы писать в фунции, мой вариант выглядит так разбери как работает:

def sum_fig(num):
    num_list = [int(num) for num in str(num)]
    return print(sum(num_list))

sum_num(a)
