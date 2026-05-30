#!/bin/bash
# Chui vào đúng hang ổ server Minecraft trên Surface
cd ~/minecraft_server

echo "🗣️ Surface đang gom file map..."
git add .

# Ép hệ thống lấy thời gian theo múi giờ Asia/Ho_Chi_Minh (UTC+7) 🇻🇳
commit_time=$(TZ="Asia/Ho_Chi_Minh" date "+%Y-%m-%d %H:%M:%S")

# Tạo commit chất lừ kèm múi giờ VN
git commit -m "Surface update map: $commit_time (UTC+7)"

echo "🚀 Đang push từ Surface lên GitHub báu vật..."

# Đường quyền push và check lỗi lừa tình
if git push origin main; then
    echo "🗿 Xong phim! Map từ Surface đã lên mây an toàn lúc $commit_time rồi nha m!"
else
    echo "💀 TOANG RỒI M ƠI! Push lỗi rồi. Check lại Token hoặc gõ lệnh bạo lực 'git push origin main -f' nếu bị lệch lịch sử nha!"
fi
