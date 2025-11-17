#!/bin/bash

echo "=========================================="
echo "🚀 Argosbx Docker 容器启动中..."
echo "=========================================="

# 设置环境变量
export LANG=en_US.UTF-8
export uuid=${uuid:-''}
export vlpt=${vlpt:-''}
export vmpt=${vmpt:-''}
export hypt=${hypt:-''}
export tupt=${tupt:-''}
export xhpt=${xhpt:-''}
export vxpt=${vxpt:-''}
export anpt=${anpt:-''}
export arpt=${arpt:-''}
export sspt=${sspt:-''}
export sopt=${sopt:-''}
export reym=${reym:-'apple.com'}
export cdnym=${cdnym:-''}
export argo=${argo:-''}
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}
export ARGO_AUTH=${ARGO_AUTH:-''}
export ippz=${ippz:-''}
export warp=${warp:-''}
export name=${name:-''}

# 显示配置信息
echo "📋 环境变量配置:"
echo "   UUID: ${uuid:0:8}..."
echo "   WARP: ${warp:-未设置}"
echo "   Argo: ${argo:-未设置}"
echo "   域名: ${reym}"

# 创建必要的目录
mkdir -p /root/agsbx

echo "🔄 启动 Argosbx 服务..."

# 检查是否已安装
if [ ! -f "/root/agsbx/uuid" ]; then
    echo "📦 首次启动，开始安装 Argosbx..."
    if /root/bin/agsbx; then
        echo "✅ Argosbx 安装成功"
    else
        echo "❌ Argosbx 安装失败，但容器继续运行..."
    fi
else
    echo "🔧 Argosbx 已安装，显示节点信息..."
    /root/bin/agsbx list
fi

echo ""
echo "🎉 Argosbx 服务启动完成!"
echo "=========================================="
echo "📖 使用说明:"
echo "   查看节点: docker exec <container> agsbx list"
echo "   重启服务: docker exec <container> agsbx res"
echo "   重置配置: docker exec <container> agsbx rep"
echo "   查看日志: docker logs <container>"
echo "=========================================="

# 保持容器运行
echo "🔄 容器持续运行中..."
tail -f /dev/null
