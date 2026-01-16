## Terraform 기반 NCP 인프라 및 Cloud DB 프로비저닝

### 프로젝트 개요
Terraform을 사용해 NCP 환경의 네트워크와 Cloud DB 리소스를 코드로 정의하고 프로비저닝합니다.

### 프로비저닝 구성 요소
- **VPC**: VPC 및 Subnet 관리
- **MySQL**: Cloud DB for MySQL 
- **MSSQL**: Cloud DB for MSSQL 
- **PostgreSQL**: Cloud DB for PostgreSQL
- **MongoDB**: Cloud DB for MongoDB 
- **Redis**: Cloud DB for Redis 

### 사전 요구사항
- Terraform >= 1.3.0
- NCP 계정 및 Access Key / Secret Key
- Terraform Cloud 백엔드 설정 (선택)

### 사용 방법

1. **변수 파일 생성**
```bash
cp terraform.tfvars.example terraform.tfvars
```

2. **필수 변수 설정** (`terraform.tfvars`)
```hcl
region             = "KR"
zone               = "KR-1"
site               = "public"  # public / fin / gov
ncloud_access_key  = "your_access_key"
ncloud_secret_key  = "your_secret_key"
user_name          = "your_db_user"
user_password      = "your_db_password"
```

3. **Terraform 실행**
```bash
terraform init
terraform plan
terraform apply
```

### 출력값
- `mysql_endpoint`: MySQL 연결 엔드포인트
- `mssql_endpoint`: MSSQL 연결 엔드포인트
- `mongodb_endpoint`: MongoDB 연결 엔드포인트
- `postgresql_endpoint`: PostgreSQL 연결 엔드포인트
- `redis_endpoint`: Redis 연결 엔드포인트

### 모듈 구조
```
modules/
├── vpc/          # VPC 및 Subnet
├── mysql/        # MySQL 리소스
├── mssql/        # MSSQL 리소스
├── mongodb/      # MongoDB 리소스
├── postgresql/   # PostgreSQL 리소스
└── redis/        # Redis 리소스
```

### 주의사항
- 모든 DB는 Private Subnet에 배치됩니다
- 민감 정보(비밀번호, API 키)는 환경변수나 Terraform Cloud Variable 사용 권장
- 실제 사용 시 각 모듈의 변수들을 환경에 맞게 조정해야 합니다
