# C template copy/pipe output to/from processes with popen fgetc fputc
```c
#include <stdio.h>
#include <stdlib.h> // for getenv
#include <readline/readline.h> // for readline prompt; add gcc argument -lreadline

int main() {
  char prompt[100];

  // make prompt
  sprintf(prompt, "%s> ", getenv("USER"));

  // read command
  char* command = readline(prompt);

  // open processes for reading
  FILE* source = popen(command, "r"); // source program
  FILE* dest = popen("bat --language bash /dev/stdin", "w"); // destination program to pipe to

  // copy char loop
  int b = 0;
  while ((b = fgetc(source)) != EOF) {
    char c = b;
    //TODO: process char c
    fputc(c, dest);
  }

  // cleanup
  fclose(source);
  fclose(dest);

  return 0;
}
```
` zet/20221003151290/README.md `

# Related

- [20221003151291](/zet/20221003151291/README.md) C template readline prompt
- [20221021183918](/zet/20221021183918/README.md) C language
- [20221014185452](/zet/20221014185452/README.md) kb file named kb/c-language/templates.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003151292](/zet/20221003151292/README.md) C template
- ~/kb/c-language/templates.md

Tags:

    #c-language #templates 
