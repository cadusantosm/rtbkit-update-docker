FROM onokonem/rtbkit:latest

RUN export LD_LIBRARY_PATH="/opt/local/lib:$LD_LIBRARY_PATH" \
 && export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig/:/opt/local/lib/pkg-config/:$PKG_CONFIG_PATH" \
 && cd /opt/rtbkit \
 && su rtbkit -c "git remote set-url origin https://github.com/onokonem/rtbkit.git" \
 && su rtbkit -c "git pull" \
 && su rtbkit -c "export PATH='/opt/local/bin:$PATH' && make compile"

#RUN export LD_LIBRARY_PATH="/opt/local/lib:$LD_LIBRARY_PATH" \
# && export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig/:/opt/local/lib/pkg-config/:$PKG_CONFIG_PATH" \
# && cd /opt/rtbkit \
# && su rtbkit -c "export PATH='/opt/local/bin:$PATH' && make test"

CMD ["/bin/bash"]
