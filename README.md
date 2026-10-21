# haokuncodex
codex

## Codex 云端运行配置

仓库已提供 Copilot/Codex 云端启动配置文件：

- `/home/runner/work/haokuncodex/haokuncodex/.github/workflows/copilot-setup-steps.yml`

该工作流会在云端任务开始前自动准备以下环境：

- 代码检出（含 Git LFS）
- Node.js 20
- Python 3.12
- 文档与演示生成工具链（pandoc、xelatex、中文字体等）
- Python 包（python-pptx、pypandoc、pymupdf、reportlab）

### 还需要在 GitHub 页面手动完成的设置

1. 确保上述 `copilot-setup-steps.yml` 已合并到默认分支（Copilot 只会读取默认分支上的该文件）。
2. 如需给云端任务注入凭据或配置，在仓库 **Settings → Environments → copilot** 中添加环境变量/Secrets。
3. 如果启用了防火墙或私有网络，放行 Copilot/Codex 所需域名：
   - `uploads.github.com`
   - `user-images.githubusercontent.com`
   - `api.individual.githubcopilot.com` / `api.business.githubcopilot.com` / `api.enterprise.githubcopilot.com`
   - `npmjs.org`, `npmjs.com`, `registry.npmjs.com`, `registry.npmjs.org`, `skimdb.npmjs.com`
