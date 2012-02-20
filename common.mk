IGM_DIR=nao_igm
SOLVER_DIR=smpc_solver

CXX_WARN_FLAGS=-Wall -std=c++98
IFLAGS+=-I../${SOLVER_DIR}/include -I../${IGM_DIR}/include
LDFLAGS+=-L../${SOLVER_DIR}/lib/ -L../${IGM_DIR}/lib/ -lsmpc_solver -lwmg -lnaoigm


ifdef DEBUG
DEBUGFLAGS=DEBUG=1
CXXFLAGS=-g ${CXX_WARN_FLAGS} ${IFLAGS}
LDFLAGS+=-g
CMAKEFLAGS=-DCMAKE_BUILD_TYPE=DEBUGA
else
DEBUGFLAGS=
CXXFLAGS+=-O3 ${CXX_WARN_FLAGS} ${IFLAGS} -DNDEBUG
CMAKEFLAGS=-DCMAKE_BUILD_TYPE=Release
endif


