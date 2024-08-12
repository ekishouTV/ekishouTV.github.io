FROM python:slim-bookworm

RUN apt-get -y update; apt-get -y install curl

ARG USERNAME=site
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME}

USER ${USERNAME}

RUN curl -sSf https://rye.astral.sh/get | RYE_INSTALL_OPTION="--yes" bash
ENV PATH=${PATH}:/home/${USERNAME}/.rye/shims

WORKDIR /site

COPY --chown=${USERNAME}:${USERNAME} pyproject.toml requirements.lock requirements-dev.lock .python-version ./
RUN rye sync

CMD ["rye", "run", "mkdocs", "serve", "--dev-addr=0.0.0.0:5310"]
