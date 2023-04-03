from ubuntu:22.04

RUN apt-get update -yy --fix-missing && \
  apt-get -yy install \
  curl \
  inotify-tools \
  htop \
  python3 \
  python3-pip \
  make

RUN mkdir -p /usr/local/bin
ADD https://raw.githubusercontent.com/markchadwick/continually/552dc6e/continually /usr/local/bin/continually
RUN chmod +x /usr/local/bin/continually

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
RUN rm /tmp/requirements.txt

RUN curl -L \
  "https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz" \
  > /tmp/hugo.tar.gz
RUN tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin/
RUN rm /tmp/hugo.tar.gz

RUN curl -L \
  "https://github.com/quarto-dev/quarto-cli/releases/download/v1.2.280/quarto-1.2.280-linux-amd64.deb" \
  > /tmp/quarto.deb
RUN dpkg -i /tmp/quarto.deb
RUN rm /tmp/quarto.deb

RUN quarto install tinytex

ENTRYPOINT ["hugo", "serve", "-w", "--bind", "0.0.0.0"]
