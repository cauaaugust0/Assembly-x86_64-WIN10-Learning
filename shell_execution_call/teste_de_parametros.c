#include<windows.h>

int main(){
    ShellExecuteA(NULL, "open", "C:\\Windows\\notepad.exe", NULL, NULL, 5);
    return 0;
}

int main(){
    char buffer[16];

    scanf("%s", buffer);    

    printf("%s\n", buffer);

    return 0;
}