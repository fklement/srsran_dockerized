FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get install -y \
    cmake make gcc g++ pkg-config libfftw3-dev libmbedtls-dev libtool libsctp-dev libyaml-cpp-dev libgtest-dev git libzmq3-dev


COPY . .
RUN chmod +x ./start_gnb.sh
RUN chmod +x ./start_ue.sh

# RUN git clone https://github.com/zeromq/libzmq.git
# RUN cd libzmq
# WORKDIR /libzmq
# RUN ./autogen.sh
# RUN ./configure
# RUN make
# RUN make install
# RUN ldconfig

# WORKDIR /

# RUN git clone https://github.com/zeromq/czmq.git
# WORKDIR /czmq
# RUN ./autogen.sh
# RUN ./configure
# RUN make
# RUN make install
# RUN ldconfig

# WORKDIR /

RUN git clone https://github.com/srsran/srsRAN_Project.git
WORKDIR /srsRAN_Project
RUN mkdir build
RUN cd build && cmake ../ -DENABLE_EXPORT=ON -DENABLE_ZEROMQ=ON && make -j`nproc`
RUN cp ../gnb_zmq.yaml ./build/apps/gnb/gnb_zmq.yaml




CMD sleep 1000000


