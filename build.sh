#!/bin/bash

set -x

PSDK_VER_5=5.1.3.85
PSDK_VER_4=4.0.2.303

PSDK_VER=$PSDK_VER_5

FLUTTER_VER_5=3.27.1
FLUTTER_VER_4=3.16.2-2

FLUTTER_VER=$FLUTTER_VER_5

aurora_psdk=$HOME/AuroraPlatformSDK-$PSDK_VER/sdks/aurora_psdk/sdk-chroot

flutter=$HOME/.local/opt/flutter-$FLUTTER_VER/bin/flutter
dart=$HOME/.local/opt/flutter-$FLUTTER_VER/bin/dart

$flutter --version

AURORA_ARCH=arm

$flutter build aurora --release --target-platform=aurora-$AURORA_ARCH

REGULAR_KEY_PATH=$HOME/.aurora-cli/keys/regular_key.pem
REGULAR_CERT_PATH=$HOME/.aurora-cli/keys/regular_cert.pem

RUSTORE_KEY_PATH=$HOME/.aurora-cli/keys/******.pem
RUSTORE_CERT_PATH=$HOME/.aurora-cli/keys/******.pem

KEY_PATH=$REGULAR_KEY_PATH
CERT_PATH=$REGULAR_CERT_PATH

$aurora_psdk sb2 -t AuroraOS-$PSDK_VER-base-armv7hl rpmsign-external sign --key=$KEY_PATH --cert=$CERT_PATH ./build/aurora/psdk_$PSDK_VER/aurora-$AURORA_ARCH/release/RPMS/*.rpm

$aurora_psdk sb2 -t AuroraOS-$PSDK_VER-base-armv7hl rpm-validator -p regular ./build/aurora/psdk_$PSDK_VER/aurora-$AURORA_ARCH/release/RPMS/*.rpm


