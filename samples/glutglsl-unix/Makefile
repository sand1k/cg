#
# GLSL example
#

OBJECTS= ogl.o textfile.o
LDFLAGS= -lGL -lGLEW -lglut -lGLU

ogl: $(OBJECTS)
	g++ $(OBJECTS) $(LDFLAGS) -o ogl

textfile.o: textfile.h

clean:
	rm -rf $(OBJECTS) ogl

.PHONY: clean