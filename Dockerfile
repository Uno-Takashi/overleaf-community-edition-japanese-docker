FROM sharelatex/sharelatex:latest

# TeX Live full schemeをインストールして日本語フォントとパッケージを追加
RUN tlmgr update --self && \
    tlmgr install scheme-full && \
    tlmgr install collection-langjapanese && \
    tlmgr install platex uplatex ptex uptex dvipdfmx cjk-gs-integrate && \
    tlmgr install jsclasses japanese-otf pxjahyper zxjatype && \
    tlmgr path add

# 日本語フォント設定を実行
RUN kanji-config-updmap-sys ipaex

# フォントキャッシュを更新
RUN fc-cache -fv

# 日本語環境のためのロケール設定
ENV LANG=ja_JP.UTF-8
ENV LC_ALL=ja_JP.UTF-8
