#include <iostream>
#include <fstream>

int main() {
     if (auto file = std::fstream("config.ini")) {
        std::string str;
        while (!file.eof())
        {
         std::getline(file,str);
         std::cout << str << '\n';
        }
     file.close();
    }
}
