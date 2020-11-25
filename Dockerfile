FROM python:3.8

RUN pip install poetry==1.1.4

WORKDIR /app
COPY ./poetry.lock ./pyproject.toml /app/

RUN poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

COPY app /app
