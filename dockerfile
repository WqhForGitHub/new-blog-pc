# 使用官方 Node.js 镜像
FROM node:18
# 设置工作目录
WORKDIR /app
# 将项目文件复制到容器中
COPY . .
# 安装项目依赖
RUN npm install --registry=https://registry.npmmirror.com
# 构建生产环境
RUN npm run build
# 暴露端口
EXPOSE 4173
# 启动应用
CMD ["npm", "run", "preview"]
