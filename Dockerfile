FROM reapmr3/reaper-club:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .

#RUN pip install --no-cache-dir --upgrade pip setuptools
RUN pip install --break-system-packages --system --no-cache-dir -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
