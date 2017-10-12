CFLAGS=-Wall
all:build docs  doczip myexe
build: collegemain.o college.o course.o
	g++ -o build collegemain.o college.o course.o
collegemain.o: collegemain.cc
	g++ -c collegemain.cc
college.o: college.h college.cc node.h
	g++ -c college.cc
course.o: course.h course.cc 	
	g++ -c course.cc
doczip:
	zip -r quiz2.zip ~/CS3560/quiz2/quiz2
myexe:
	g++ -o myexe collegemain.o college.o course.o
collegemain.o: collegemain.cc
	g++ -c collegemain.cc
college.o: college.h college.cc node.h
	g++ -c college.cc
course.o: course.h course.cc 	
	g++ -c course.cc
clean:
	rm -f *.o main *~ build myexe

docs:
	doxygen ./collegemain.cc college.cc course.cc
