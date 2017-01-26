LEX=lex
YACC=yacc
CC=g++

scc:lex.yy.o y.tab.o
	$(CC) y.tab.c -g -ly -ll -o scc 2> error.err -I ./inc
lex.yy.o:lex.yy.c y.tab.h
	$(CC) -c lex.yy.c 2> error.err -I ./inc

y.tab.o:y.tab.c ./inc/Node.h ./inc/Semantic.h ./inc/Intermediate.h ./inc/Optim.h ./inc/Code_gen.h
	$(CC) -c y.tab.c 2> error.err ./inc

y.tab.c y.tab.h:smallc.y ./inc/Node.h ./inc/Semantic.h ./inc/Intermediate.h ./inc/Optim.h ./inc/Code_gen.h
	$(YACC) smallc.y -v -d

lex.yy.c:smallc.l ./inc/Node.h ./inc/Semantic.h ./inc/Intermediate.h ./inc/Optim.h ./inc/Code_gen.h
	$(LEX) smallc.l

clean:
	rm -f *.o *.c
