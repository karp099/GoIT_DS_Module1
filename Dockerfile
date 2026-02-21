FROM python:3.14


ENV APP_HOME /assistantbot


WORKDIR $APP_HOME

COPY pyproject.toml $APP_HOME/pyproject.toml
COPY poetry.lock $APP_HOME/poetry.lock

RUN pip install poetry
RUN poetry config virtualenvs.create false

COPY . .


CMD ["python", "main.py"]