FROM ghcr.io/astral-sh/uv:debian-slim

RUN apt-get -y update; apt-get -y install curl git libcairo2-dev libfreetype6-dev libffi-dev libjpeg-dev libpng-dev libz-dev

ARG USERNAME=site
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME}

USER ${USERNAME}

WORKDIR /site

COPY --chown=${USERNAME}:${USERNAME} pyproject.toml uv.lock .python-version ./
RUN uv sync

CMD ["uv", "run", "mkdocs", "serve", "--dev-addr=0.0.0.0:5310"]
