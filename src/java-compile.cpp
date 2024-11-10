#include <iostream>
#include <cstdlib>
#include <cstring>
#include <string>

struct Java {
    bool wasJava;
    std::string fname;
};

Java isJava(const char* buff);

int main(int argc, char* argv[]) {
    Java result = isJava(argv[1]);
    if (result.wasJava) {
        std::string command = "compile " + result.fname;
        system(command.c_str());
    }

    return 0;
}

Java isJava(const char* buff) {
    Java result = {false, ""};
    size_t len = strlen(buff);
    if (len > 5 && strcmp(buff + len - 5, ".java") == 0) {
        result.wasJava = true;
        result.fname = std::string(buff, len - 5);
    }
    return result;
}
