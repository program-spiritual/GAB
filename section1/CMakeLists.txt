add_executable(function-call function-call.c )

add_library(section1 function-call.c hello.c ifstmt.c ifstmt2.c float-demo.c conv.c)

install (TARGETS section1 DESTINATION bin)
install (FILES function-call.c hello.c ifstmt.c ifstmt2.c float-demo.c conv.c DESTINATION  include)
