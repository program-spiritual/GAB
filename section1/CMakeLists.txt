add_executable(function-call function-call.c )

add_library(section1 function-call.c hello.c)

install (TARGETS section1 DESTINATION bin)
install (FILES function-call.c hello.c DESTINATION include)
