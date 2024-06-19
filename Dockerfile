# 베이스 이미지 선택
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 패키지 파일 복사
COPY requirements.txt /app/

# 종속성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 소스 코드 복사
COPY . /app/

# 환경 변수 설정
ENV PYTHONUNBUFFERED 1

# 포트 설정
EXPOSE 8000

# 애플리케이션 실행 명령어
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]