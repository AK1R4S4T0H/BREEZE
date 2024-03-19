
FROM python:3.8-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x BREEZE.py

ENV PATH="/app:${PATH}"

RUN ./install.sh

CMD ["python", "BREEZE.py"]
