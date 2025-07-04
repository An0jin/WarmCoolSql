# 🎨 퍼스널 컬러 분석 통합 시스템

## 📌 프로젝트 개요

이 프로젝트는 AI 기반 퍼스널 컬러 분석과 AR 가상 메이크업, 소셜 기능을 결합한 통합 뷰티 시스템입니다. YOLOv11-CLS를 활용한 이미지 분류, FastAPI 기반 백엔드 서버, Unity AR 기반 프론트엔드로 구성되어 있습니다.

---

## 🏗 시스템 구성

프로젝트는 다음 다섯 개의 주요 리포지토리로 구성되어 있습니다:

### 1. [WarmCoolYolo](https://github.com/An0jin/WarmCoolYolo)

- YOLO12 기반 퍼스널 컬러 분류 모델
- Roboflow를 통한 데이터셋 관리
- 모델 학습 및 평가 파이프라인

### 2. [WarmCoolFastapi](https://github.com/An0jin/WarmCoolFastapi)

- FastAPI 기반 백엔드 서버
- YOLOv12 모델 서빙
- RESTful API 엔드포인트 제공
- Postgresql 데이터베이스 연동

### 3. [WarmCoolUnity](https://github.com/An0jin/WarmCoolUnity)

- Unity 기반 AR 애플리케이션
- ARFoundation을 통한 얼굴 인식
- 가상 메이크업 적용
- Photon 기반 실시간 채팅

### 4. [WarmCoolSQL](https://github.com/An0jin/WarmCoolSQL)

- 채팅 정보 관리
- 유저 정보 관리
- 퍼스널 컬러 해설

### 5. [WarmCoolDataset](https://github.com/An0jin/WarmCoolDataset)

- roboflow를 활용한 데이터 수집
- github를 활용한 데이터 수집
- open CV를 활용한 데이터 증강

### 6. [WarmCoolVim](https://github.com/An0jin/WarmCoolVim)

- vim으로 작성한 쉘 스크립트
- 쉘 스크립트를 활용한 도커 조작
- 쉘 스크립트를 활용한 웹호스팅

---


## 💾 데이터베이스 구조

### User 테이블 (사용자 정보)

| 필드명   | 데이터 타입  | 설명                 | 제약조건                   |
| -------- | ------------ | -------------------- | -------------------------- |
| user_id  | VARCHAR(255) | 사용자 고유 식별자   | PRIMARY KEY                |
| pw       | TEXT         | 사용자 비밀번호      | NOT NULL                   |
| name     | TEXT         | 사용자 이름          | NOT NULL                   |
| year     | int         | 태어난 연도             | -                          |
| gender   | TEXT         | 성별                 | Male, Female만 입력 가능     |
| hex_code | VARCHAR(7)   | 립스틱 색상      | FOREIGN KEY lipstick.hex_code               |

### Color 테이블 (퍼스널 컬러 정보)

| 필드명      | 데이터 타입  | 설명             | 제약조건    |
| ----------- | ------------ | ---------------- | ----------- |
| color_id    | VARCHAR(255) | 퍼스널 컬러 이름 | PRIMARY KEY |
| description | TEXT         | 퍼스널 컬러 설명 | -           |

### Chat 테이블 (채팅 정보)

| 필드명  | 데이터 타입  | 설명               | 제약조건                  |
| ------- | ------------ | ------------------ | ------------------------- |
| chat_id | int          | 채팅 고유 식별자   | PRIMARY KEY,SERIAL        |
| user_id | VARCHAR(255) | 사용자 고유 식별자 | FOREIGN KEY User.user_id  |
| msg     | TEXT         | 채팅 내용          | NOT NULL                  |
| time    | TIMESTAMP    | 채팅이 올라온 날짜 | DEFAULT CURRENT_TIMESTAMP |

### lipstick 테이블 (립스틱 색상 정보)

| 필드명   | 데이터 타입  | 설명             | 제약조건                   |
| -------- | ------------ | ---------------- | -------------------------- |
| hex_code | VARCHAR(7)   | 립스틱 색상      | PRIMARY KEY                |
| color_id | VARCHAR(255) | 퍼스널 컬러 이름 | FOREIGN KEY color.color_id |

---

### 데이터베이스 설계 설명

- **User 테이블**: 사용자의 기본 정보와 퍼스널 컬러 분석 결과를 저장합니다. `color_id` 필드를 통해 Color 테이블과 연결되어 있어, 사용자의 퍼스널 컬러 정보를 참조할 수 있습니다.
- **Color 테이블**: 시스템에서 사용되는 퍼스널 컬러 타입들의 정보를 저장합니다. 봄 웜톤, 여름 쿨톤, 가을 웜톤, 겨울 쿨톤의 4가지 기본 타입을 저장합니다.
- **Chat 테이블**: 채팅 내역을 정리합니다 `user_id`필드를 통해 user랑랑 연동이 되어있습니다 user 테이블의 `color_id` 필드를 통해 Color 테이블과 연결할수 있습니다
- **lipstick 테이블**: 해당 립스틱 색상에 어울리는 퍼스널 컬러를 저장합니다. `color_id` 필드를 통해 Color 테이블과 연결되어 있어, 사용자의 퍼스널 컬러 정보를 참조할 수 있습니다.

---

### 관계

- User 테이블의 `color_id`은 Color 테이블의 `color_id`을 참조하는 외래 키(Foreign Key)로 설정되어 있어, 데이터의 일관성을 유지합니다.
- 이를 통해 사용자별 퍼스널 컬러 정보를 효율적으로 관리하고, 같은 퍼스널 컬러를 가진 사용자들을 그룹화하여 커뮤니티 기능을 구현할 수 있습니다.

---

## 🛠 사용 기술

- ![Postgresql](https://img.shields.io/badge/-postgresql-4169E1?style=flat&logo=postgresql&logoColor=white)
- ![amazonrds](https://img.shields.io/badge/-amazonrds-527FFF?style=flat&logo=amazonrds&logoColor=white)
