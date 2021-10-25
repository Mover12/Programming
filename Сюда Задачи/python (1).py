#Сделайте так, чтобы число секунд отображалось в виде 
# дни:часы:минуты:секунды.
second = 123456

def time(second):
	k = [86400,1440,60,1]
	result = list()
	for i in range(4):
		result.append(second // k[i]) #можно делить нацело.
		second %= k[i]
	return print(result)

time(second)
