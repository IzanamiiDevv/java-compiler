#include <iostream>
#include <cstdlib>
#include <cstring>
#include <string>
#include <stdint.h>
#include <map>

#define CREDITS "IzanamiiDevv"

namespace Java {
    static void tokenize(std::string &buffer);
    static bool isJava(const char* buffer);
    static void compile(const std::string &fname);
};

const std::map<std::string, uint8_t> create_action();
int run_action(const std::string cmd);

const std::map<std::string, uint8_t> action = create_action();

int main(int argc, char* argv[]) {
    if(!Java::isJava(argv[1])) return run_action(std::string(argv[1]));
    
    std::string jvfile = std::string(argv[1]);
    Java::tokenize(jvfile);
    Java::compile(jvfile);

    return EXIT_SUCCESS;
}

void Java::tokenize(std::string &buffer) {
    uint8_t len = buffer.length();
    buffer = buffer.substr(0, len - 5);
}

bool Java::isJava(const char* buffer) {
    uint8_t len = strlen(buffer);
    if(!(len > 5 && strcmp(buffer + len - 5, ".java") == 0)) return false;
    return true;
}

void Java::compile(const std::string &fname) {
    std::cout << system(("compile " + fname).c_str()) << std::endl;
}

const std::map<std::string, uint8_t> create_action() {
    std::map<std::string, uint8_t> buffer;
    buffer["-version"] = 0;
    buffer["-credits"] = 1;
    buffer["-help"] = 2;

    return buffer;
}

int run_action(const std::string cmd) {
    try {
        switch (action.at(cmd)) {
        case 0:
            std::cout << "Java Compiler Tool: v1.0.0" << std::endl;
            break;
        case 1:
            std::cout << "Created by " << CREDITS << std::endl;
            break;
        case 2:
            std::cout << "Provides basic compilation on your Java Program!" << std::endl;
            break;
        }
    } catch(const std::exception& e) {
        std::cerr << "Error: action was not defined" << std::endl;
        std::cout << "Program Exiting with an Error" << std::endl;
        return EXIT_FAILURE;
    }
    
    return EXIT_SUCCESS;
}