# Copyright (C) 2017 PerfectlySoft Inc.

FROM perfectlysoft/ubuntu1510
RUN /usr/src/Perfect-Ubuntu/install_swift.sh --sure
RUN git clone https://github.com/PerfectExamples/WWWRedirector /usr/src/WWWRedirector
WORKDIR /usr/src/WWWRedirector
RUN swift build
CMD .build/debug/WWWRedirector --port 80
