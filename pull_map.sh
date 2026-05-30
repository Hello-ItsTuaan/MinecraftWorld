#!/bin/bash
# Chui vào đúng hang ổ server Minecraft trên Surface
cd ~/minecraft_server

echo "🥀 Surface đang tiến hành kéo map mới nhất từ GitHub về..."

# Chạy lệnh pull thần thánh chấp nhận lịch sử khác biệt và check lỗi
if git pull origin main --allow-unrelated-histories; then
    echo "🤡 Đồng bộ dữ liệu về Surface ngon lành cành đào rồi m ơi!"
    echo "🗿 Giờ bật server lên quất tiếp hành trình Hardcore thôi kkk!"
else
    echo "💀 TOANG RỒI M ƠI! Lệnh pull bị nghẽn rồi, check lại xem có bị xung đột (conflict) file nào không nha!"
fi
