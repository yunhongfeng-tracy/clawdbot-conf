# Git 回滚操作指南

## 查看提交历史

```bash
git lg
# 或
git log --oneline --graph --all
```

## 回滚场景

### 场景1：撤销最后一次提交（未推送）
```bash
git undo
# 或
git reset --hard HEAD~1
```

### 场景2：回滚到指定版本
```bash
# 先查看历史
git lg

# 回滚到指定commit
git rollback <commit-hash>
# 例如
git rollback 8ca5706
```

### 场景3：撤销已推送的提交
```bash
# 创建新提交来撤销（推荐，保留历史）
git revert <commit-hash>

# 或者强制回滚（会删除历史）
git reset --hard <commit-hash>
git push --force
```

### 场景4：查看文件历史
```bash
git log --follow -p <文件名>
# 例如
git log --follow -p MEMORY.md
```

### 场景5：恢复误删文件
```bash
git checkout -- <文件名>
```

## 回滚后的操作

如果需要恢复最新状态：
```bash
# 查看所有引用
git reflog

# 回到之前的状态
git rollback <reflog中的hash>
```

## 常用命令速查

| 操作 | 命令 |
|------|------|
| 查看历史 | `git lg` |
| 查看文件历史 | `git log -p <file>` |
| 回滚1步 | `git undo` |
| 回滚N步 | `git reset --hard HEAD~N` |
| 回滚到指定版本 | `git rollback <hash>` |
| 撤销已推送提交 | `git revert <hash>` |
| 强制推送 | `git push --force` |

## 重要提醒

1. **强制推送 (`--force`) 会覆盖远程历史**
2. **回滚前建议先创建备份分支**
   ```bash
   git branch backup-$(date +%Y%m%d)
   ```
3. **已推送的修改优先使用 `revert`**（保留历史完整性）

## 示例：回滚到初始配置

```bash
# 查看所有提交
git lg

# 回到初始提交
git rollback 8ca5706

# 推送更新
git push --force
```
