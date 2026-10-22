FROM cgr.dev/chainguard/python:latest@sha256:e2ade4461c3ff67acf054214645e0b4e41b99140d7096ed64c1e15f6fe985cdf as builder

ENV LANG=C.UTF-8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PATH="/linky/venv/bin:$PATH"

WORKDIR /linky

RUN python -m venv /linky/venv
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM cgr.dev/chainguard/python:latest@sha256:e2ade4461c3ff67acf054214645e0b4e41b99140d7096ed64c1e15f6fe985cdf

WORKDIR /linky

ENV PYTHONUNBUFFERED=1
ENV PATH="/venv/bin:$PATH"

COPY linky.py linky.png ./
COPY --from=builder /linky/venv /venv

ENTRYPOINT [ "python", "/linky/linky.py" ]
