FROM python:3.12

WORKDIR /honey/cowrie/cowrie

RUN useradd --shell /bin/bash --no-create-home --uid 1000 netsec && \
    passwd -d netsec

RUN ["python", "-m", "pip", "install", "--upgrade", "pip"]
# RUN ["python", "-m", "pip", "install", "-r", "requirements.txt"]


CMD ["/bin/bash"]