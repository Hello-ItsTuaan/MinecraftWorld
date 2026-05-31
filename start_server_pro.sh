#!/bin/bash
# Đợi 30 giây cho mạng Wi-Fi của Surface kết nối ổn định rồi mới chạy
sleep 5

# 1. ĐƯỜNG DẪN BÁU VẬT
SERVER_DIR="/home/tuan/minecraft_server"
WEBHOOK_URL="https://discord.com/api/webhooks/1431959595684990977/xLOMb8Twq_klEDU9pxozYDYIhHp1JCeJQMnoB4naPQYD6FgJRQ2nq0OmvOH4_eTV9opo"

# 2. ÉP CPU CHẠY MAX CÔNG SUẤT (Bỏ sudo vì root tự chạy rồi m ơi kkk)
# 2. ÉP TẤT CẢ CÁC NHÂN CPU CHẠY MAX CÔNG SUẤT (VÒNG LẶP HOÀNG GIA)
echo "⚡ Đang kích hoạt chế độ Max Performance cho TOÀN BỘ nhân CPU..."
for cpu in /sys/devices/system/cpu/cpu[0-9]*; do
    sudo cpufreq-set -c $(basename $cpu | sed 's/cpu//') -g performance
done

# 3. BẮN THÔNG BÁO LÊN DISCORD (Gom gọn 1 dòng bao mượt)
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"🚀 **[Server Hardcore]** Con Surface đã khởi động! Đang ép CPU lên **Max Performance** và kích hoạt server Minecraft... Vào game thôi m ơi! 🗣️ 🗿\"}" $WEBHOOK_URL

# 4. CHUI VÀO THƯ MỤC VÀ KHỞI ĐỘNG SERVER MINECRAFT
cd $SERVER_DIR

# Chạy ngầm server bằng Screen
screen -dmS mc_server java -Xmx4G -Xms4G -jar paper-1.21.11-74.jar nogui

echo "✅ Server Minecraft đã được kích hoạt ngầm trong Screen!"
