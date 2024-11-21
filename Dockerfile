FROM python:3.9-alpine

# Maintainer 정보 추가
LABEL Maintainer="hseungh0830@gmail.com"

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 파일 복사
COPY app.py ./
COPY requirements.txt ./

# Python 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# Flask 앱 실행 명령어(JSON 배열 형식)
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]
