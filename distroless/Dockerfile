FROM cgr.dev/chainguard/python:latest@sha256:695359b1e5130bd27e8dab298c8c51c1fb4dc3023fa91eb895ef8b2696211328 as builder

ENV LANG=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PATH="/linky/venv/bin:$PATH"

WORKDIR /linky

RUN python -m venv /linky/venv
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM cgr.dev/chainguard/python:latest@sha256:695359b1e5130bd27e8dab298c8c51c1fb4dc3023fa91eb895ef8b2696211328

WORKDIR /linky

ENV PYTHONUNBUFFERED=1
ENV PATH="/venv/bin:$PATH"

COPY linky.py linky.png ./
COPY --from=builder /linky/venv /venv

ENTRYPOINT [ "python", "/linky/linky.py" ]
