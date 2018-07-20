#include <iostream>
#include <string>

void greet(const std::string& n)
{
    std::string greeting = "Hello, " + n + " how are you doing today?";
    std::cout << greeting << std::endl;
}

int main()
{
	greet("Hayden");
	return 0;
}