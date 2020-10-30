#include<stdio.h>
#include<string.h>
#define SIZE 500

void addTag(char line[], char tag[], char result[]) {
    result[0] = '\0';
    if (strcmp(tag, "pre") == 0) {
        strcat(result, "<pre>");
        strcat(result, line);
        strcat(result, "</pre>");
    } else if (strcmp(tag, "b") == 0) {
        strcat(result, "<b>");
        strcat(result, line);
        strcat(result, "</b>");
    } else if (strcmp(tag, "u") == 0) {
        strcat(result, "<u>");
        strcat(result, line);
        strcat(result, "</u>");
    }

    return;

}

void removeTag(char line[], char tag[], char result[]) {
    result[0] = '\0';
    int j = 0;

    if (strcmp(tag, "b") == 0) {
        for (int i = 0; i < strlen(line); i++) {
            if (line[i] == '<' && line[i + 1] == 'b' && line[i + 2] == '>')
                i = i + 2;

            else if (line[i] == '<' && line[i + 1] == '/' && line[i + 2] == 'b' && line[i + 3] == '>')
                i = i + 3;

            else
                result[j++] = line[i];

        }
    } else if (strcmp(tag, "u") == 0) {
        for (int i = 0; i < strlen(line); i++) {
            if (line[i] == '<' && line[i + 1] == 'u' && line[i + 2] == '>')
                i = i + 2;

            else if (line[i] == '<' && line[i + 1] == '/' && line[i + 2] == 'u' && line[i + 3] == '>')
                i = i + 3;

            else
                result[j++] = line[i];

        }
    }

    result[j] = '\0';

}

int main() {

    char text[100] = "this is line1";
    char tmp[100];

    addTag(text, "pre", tmp);
    strcpy(text, tmp);
    printf("text: %s\n", text);

    addTag(text, "b", tmp);
    strcpy(text, tmp);
    printf("text: %s\n", text);

    addTag(text, "u", tmp);
    strcpy(text, tmp);
    printf("text: %s\n", text);

    removeTag(text, "b", tmp);
    strcpy(text, tmp);
    printf("text: %s\n", text);

    removeTag(text, "u", tmp);
    strcpy(text, tmp);
    printf("text: %s\n", text);


}