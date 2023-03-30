def decode_binary(bits, powers, n):
    a = [bits[i] * (2**powers[i]) for i in range(n)]
    return sum(a)

def decode_graycode(bits, powers, n):
    #graycode to binary
    binary_bits = [0,0,0,0,0,0,0,0,0,0]
    binary_bits[0] = bits[0]
    for i in range(1, n):
        binary_bits[i] = binary_bits[i-1] ^ bits[i]
    #binary to decimal and decoding it using the prev function
    return decode_binary(binary_bits, powers, n)




data = open("Prob1/partc_dataset_multirev.txt", 'r')
op1 = open("Prob1/partc_decode_binary_data", 'w')
op2 = open("Prob1/partc_decode_graycode_data", 'w')

lines = data.readlines()
powers = list(map(int, lines[0].split()))
n = len(powers)

for i in range(1, len(lines)):
    bits = list(map(int, lines[i].split()))
    value1 = decode_binary(bits, powers, n)
    op1.write(str(value1)+'\n')
    value2 = decode_graycode(bits, powers, n)
    op2.write(str(value2)+'\n')

op1.close()
op2.close()
data.close()