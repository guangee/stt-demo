import os

if __name__ == '__main__':
    name = []  # 创建一个跟训练时一样的标签集
    path = "./train/"
    dirs = os.listdir(path)  # 获取的是目录列表
    for i in dirs:
        name.append(i)

    print(name)