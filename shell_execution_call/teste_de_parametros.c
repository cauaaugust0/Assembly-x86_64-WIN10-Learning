#include<windows.h>

int main(){
    ShellExecuteA(NULL, "open", "C:\\Windows\\notepad.exe", NULL, NULL, 5);
    return 0;
}
