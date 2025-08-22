@echo off
echo 安装前端依赖...
cd frontend
npm install

echo 启动前端服务...
npm run serve
pause