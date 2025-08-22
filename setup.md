# 背单词Web应用 - 安装指南

## 环境要求
- Java 11+
- Node.js 14+
- MySQL 8.0+
- Maven 3.6+

## 安装步骤

### 1. 数据库设置
1. 启动MySQL服务
2. 执行 `database/init.sql` 脚本创建数据库和表
3. 修改 `backend/src/main/resources/application.yml` 中的数据库连接信息

### 2. 后端启动
```bash
cd backend
mvn clean install
mvn spring-boot:run
```
或者直接运行 `start-backend.bat`

后端服务将在 http://localhost:8080 启动

### 3. 前端启动
```bash
cd frontend
npm install
npm run serve
```
或者直接运行 `start-frontend.bat`

前端服务将在 http://localhost:8081 启动

## 默认账号
- 管理员账号：admin / admin123
- 可以注册新的普通用户账号

## 功能说明

### 用户功能
- 注册登录
- 浏览公共单词本
- 创建个人单词本
- 选择单词生成学习对话
- 语音播放学习内容
- 收藏不熟悉的单词

### 管理员功能
- 所有用户功能
- 添加新单词到系统
- 创建公共单词本

## API接口

### 认证接口
- POST /api/auth/register - 用户注册
- POST /api/auth/login - 用户登录

### 单词接口
- GET /api/words - 获取所有单词
- POST /api/words - 添加单词（管理员）
- GET /api/words/search - 搜索单词

### 单词本接口
- POST /api/wordbooks - 创建单词本
- GET /api/wordbooks/available/{username} - 获取可用单词本
- GET /api/wordbooks/user/{username} - 获取用户单词本

### 对话接口
- POST /api/dialogue/generate - 生成学习对话

## 技术特性
- 响应式设计，支持移动端
- 前后端分离架构
- RESTful API设计
- Web Speech API语音播放
- 实时单词高亮显示
- 用户权限管理

## 扩展功能建议
1. 集成真实的AI对话生成（OpenAI API）
2. 添加单词学习进度跟踪
3. 实现单词测试和评分系统
4. 添加学习统计和分析
5. 支持多种语音合成选项
6. 实现单词本分享功能