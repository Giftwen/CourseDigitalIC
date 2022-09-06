import os




if __name__ == '__main__':
    s=""
    for i in range(32):
        s+=f"data_in[{31-i}] ? 6'd{i+1} : \\\n"
    with open(f"./aid.v", "w") as f:
        f.write(s)

