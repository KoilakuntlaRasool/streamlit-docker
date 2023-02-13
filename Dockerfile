FROM python:3

WORKDIR /usr/src/app

EXPOSE 8052

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
