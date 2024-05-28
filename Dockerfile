# 使用官方的 Node.js LTS 版本作为基础镜像
FROM node:18.17.1

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 编译 TypeScript 文件
RUN npm run build

# 暴露应用运行的端口
EXPOSE 3000

# 启动应用
CMD ["node", "dist/index.js"]
