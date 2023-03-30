def encode_binary(num, n):
    return bin(num)[2:].rjust(n, '0')


f1 = open("Prob1/partd_dataset_fault1.txt", 'r')
f2 = open("Prob1/partd_dataset_fault2.txt", 'r')

op1 = open("Prob1/partd_encoded_fault1.txt", 'w')
op2 = open("Prob1/partd_encoded_fault2.txt", 'w')

lines1 = f1.readlines()
num_lines1 = len(lines1)
lines2 = f2.readlines()
num_lines2 = len(lines2)

for i in range(num_lines1):
    encoded_num = encode_binary(int(lines1[i]), 10)
    op1.write(encoded_num + '\n')

for i in range(num_lines2):
    encoded_num = encode_binary(int(lines2[i]), 10)
    op2.write(encoded_num + '\n')