#include <iostream>
#include <string>

std::string greet(const std::string& n)
{
    std::string greeting = "Hello, " + n + " how are you doing today?";
    std::cout << greeting;
}

int main()
{
	greet("Hayden");
	return 0;
}