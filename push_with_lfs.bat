@echo off
REM ========== Git LFS 自动提交推送脚本 ==========
REM 确保你已经把要上传的文件复制到仓库目录下

REM 进入当前脚本所在目录
cd /d %~dp0

echo === 1. 初始化 Git LFS ===
git lfs install

echo === 2. 跟踪大文件类型（mp4, zip, avi, mov）===
git lfs track "*.mp4"
git lfs track "*.zip"
git lfs track "*.avi"
git lfs track "*.mov"

echo === 3. 添加所有改动到暂存区 ===
git add .
git commit -m "Add/update large files with Git LFS"

echo === 4. 推送到 GitHub ===
git push origin main

echo.
echo ✅ 完成！请到 GitHub 查看文件是否上传成功。
pause
