#base image
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


#working dir
WORKDIR /app

COPY requirements.txt .


#install required libraries
RUN pip install --no-cache-dir -r requirements.txt

COPY App/ ./App/

EXPOSE 8501

CMD ["streamlit", "run", "App/Home.py", "--server.address=0.0.0.0", "--server.port=8501"]



