FROM python:3

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN apt-get update

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8501

CMD ["streamlit", "run", "web.py"]
