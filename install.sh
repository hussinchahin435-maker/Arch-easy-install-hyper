#!/bin/bash

# تأكد أن الرابط ينتهي بـ /arch.zip
REPO_URL="https://github.com/hussinchahin435-maker/Arch-easy-install-hyper/raw/main/arch.zip"

echo "Downloading configuration files..."
curl -L -o arch.zip "$REPO_URL"

echo "Extracting files..."
unzip -o arch.zip

echo "Installing configs..."
# التأكد من وجود المجلدات قبل النسخ
mkdir -p ~/.config/hypr
mkdir -p ~/.config/waybar

# نسخ الملفات من المجلد المستخرج إلى مسار النظام
cp -r arch/configs/hypr/* ~/.config/hypr/
cp -r arch/configs/waybar/* ~/.config/waybar/

echo "Installation complete!"
