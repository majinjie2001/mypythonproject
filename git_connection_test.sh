#!/bin/bash
echo "=== HTTPS测试 ==="
curl -I --proxy http://127.0.0.1:7897 https://github.com -v
echo "\n=== SSH测试 ==="
ssh -T git@github.com -p 443 -v
echo "\n=== 端口检测 ==="
nc -zvw3 github.com 443