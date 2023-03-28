import pdb
x = "threee"
x = 3
y = -22
#x = 3
def f(z):
	pdb.set_trace()
	x = z+10
	 
	return x

y = f(x)

print(f'x={x}')
print(f'y={y}')
