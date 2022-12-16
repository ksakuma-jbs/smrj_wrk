#!/bin/bash
set -e

cat <<EOF |
災対	コンテナPF APサーバ	サーバ②	RHCOS	2
テスト①	コンテナPF APサーバ	サーバ②	RHCOS	2
テスト②	コンテナPF APサーバ	サーバ②	RHCOS	1
本番	コンテナPF APサーバ	サーバ②	RHCOS	2
EOF

awk -F\\t '{printf "(\x27%s\x27, \x27%s\x27, \x27%s\x27, \x27%s\x27, %d),\n", $1, $2 ,$3, $4, $5}'

