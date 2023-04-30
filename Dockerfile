FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /MrPrince
WORKDIR /MrPrince
COPY . .
CMD ["python3", "bot.py"]

