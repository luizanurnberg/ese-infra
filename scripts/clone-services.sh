#!/bin/bash
set -e

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

SERVICES_DIR="${PROJECT_ROOT}/services"

echo "🛠️  Criando diretório 'services' em: $SERVICES_DIR"
mkdir -p "$SERVICES_DIR"
cd "$SERVICES_DIR"

echo "📦 Clonando ESE-ORDER..."
git clone https://github.com/luizanurnberg/ese-order.git

echo "📦 Clonando ESE-PAYMENT..."
git clone https://github.com/maariaceciliaholler/ese-payment.git

echo "📦 Clonando ESE-AUTH..."
git clone https://github.com/maariaceciliaholler/ese-authentication.git

echo "📦 Clonando ESE-RABBIT..."
git clone https://github.com/eduardo-schork/ese-message-broker.git

echo "📦 Clonando ESE-TRACKING..."
git clone https://github.com/eduardo-schork/ese-tracking.git

echo "✅ Todos os serviços foram clonados!"