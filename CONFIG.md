# Tracy助手 配置说明

## 目录结构

```
workspace/
├── AGENTS.md      # 代理工作规范
├── SOUL.md        # 灵魂/人格设定
├── USER.md        # 用户信息
├── IDENTITY.md    # 身份档案
├── TOOLS.md       # 本地工具配置
├── HEARTBEAT.md   # 心跳检查配置
├── MEMORY.md      # 长期记忆
├── CONFIG.md      # 本文件
├── .gitignore     # Git忽略规则
└── memory/        # 每日笔记目录
```

## 各文件说明

| 文件 | 用途 | 是否敏感 |
|------|------|----------|
| AGENTS.md | 工作区规范、工具使用指南 | 否 |
| SOUL.md | 助手人格、性格、边界 | 否 |
| USER.md | 用户偏好、时区、联系方式 | 低 |
| IDENTITY.md | 助手身份名称、定位 | 否 |
| TOOLS.md | 本地工具配置（摄像头、SSH等） | 中 |
| HEARTBEAT.md | 定期检查任务列表 | 否 |
| MEMORY.md | 长期记忆、关键事件 | 中 |
| CONFIG.md | 配置说明文档 | 否 |

## 不应上传的内容

以下内容包含敏感信息，存储在仓库外：

- `/root/.openclaw/openclaw.json` - API keys、tokens
- `/root/.openclaw/credentials/` - 认证凭据
- 任何 `.env` 文件
- 日志文件

## 添加新配置

1. 在 workspace 目录创建 .md 文件
2. 在 MEMORY.md 中记录重要信息
3. 提交到 Git：
   ```bash
   git add <file>
   git commit -m "描述"
   git push
   ```

## 同步到其他设备

```bash
git clone https://github.com/yunhongfeng-tracy/clawdbot-conf.git
```
