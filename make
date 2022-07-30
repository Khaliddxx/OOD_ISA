# *****************************************************
# Variables to control Makefile operation
 
CC = g++
CFLAGS = -Wall -g -lpthread -std=c++17
 
# ****************************************************
# Targets needed to bring the executable up to date
 
main: main.o instruction.o ADD.o ASI.o HLT.o init.o JPA.o JPo.o LOE.o memoryHandler.o MUL.o NEG.o
    $(CC) $(CFLAGS) -o main main.o instruction.o ADD.o ASI.o HLT.o init.o JPA.o JPo.o LOE.o memoryHandler.o MUL.o NEG.o
 
# The main.o target can be written more simply
 
main.o: main.cpp instruction.h ADD.h ASI.h HLT.h init.h JPA.h JPo.h LOE.h memoryHandler.h MUL.h NEG.h
    $(CC) $(CFLAGS) -c main.cpp instruction.cpp ADD.cpp ASI.cpp HLT.cpp init.cpp JPA.cpp JPo.cpp LOE.cpp memoryHandler.cpp MUL.cpp NEG.cpp
 
instruction.o: 

ADD.o: instruction.h

ASI.o: instruction.h 

HLT.o: instruction.h 

init.o: instruction.h 

JPA.o: instruction.h 

JPo.o: instruction.h 

LOE.o: instruction.h 

memoryHandler.o: instruction.h add.h NEG.h MUL.h JPA.h Jpo.h ASI.h LOE.h HLT.h 

MUL.o: instruction.h 

NEG.o: instruction.h 