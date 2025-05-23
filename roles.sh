#!/bin/bash

# 생성할 역할 목록
ROLES=(
  vpc vpc_delete
  iam iam_delete
  securitygroup securitygroup_delete
  keypair keypair_delete
  bastion bastion_delete
  jenkinsec2 jenkinsec2_delete
  targetec2 targetec2_delete
  loadbalancer loadbalancer_delete
  autoscaling autoscaling_delete
  subnet subnet_delete
  gateway gateway_delete
  routingtable routingtable_delete
  route53 route53_delete
  s3 s3_delete
  targetgroup targetgroup_delete
  ami ami_delete
  launchtemplate launchtemplate_delete
)

# roles 디렉토리가 없으면 생성
mkdir -p roles
cd roles || exit 1

# 역할 생성
for role in "${ROLES[@]}"; do
  echo "Creating role: $role"
  ansible-galaxy init "$role" > /dev/null
done

echo "✅ 모든 역할이 생성되었습니다."
