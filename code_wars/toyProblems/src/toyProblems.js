// it should return hello
function sayHello() {
    return "Hello";
}

// it should detect whether the sequence of braces is OK.
// TODO - this toy problem
// 1 interview cake per day.


// apple stocks - interviewcake
// implementation 1 - using nested loops
const stockPrices = [10, 7, 5, 8, 11, 9];
const handleNegatives = [10, 7, 5, 3, 2, 1]; // -1

function getMaxProfit(stockPrices) {
    var greatDifference = stockPrices[1] - stockPrices[0];
    var isOnlyLossPossible = onlyLossPossible(stockPrices);

    for (let i = 0; i < stockPrices.length; i++) {
        for (let j = i + 1; j < stockPrices.length; j++) {

            if (isOnlyLossPossible) {
                if (Math.abs((stockPrices[j] - stockPrices[i])) < Math.abs(greatDifference)) {
                    greatDifference = stockPrices[j] - stockPrices[i];
                }
            }

            if ((stockPrices[j] - stockPrices[i]) > greatDifference) {
                greatDifference = stockPrices[j] - stockPrices[i];
            }

        }
    }
    return greatDifference;
}

function onlyLossPossible(stockPrices) {
    if (Math.max(stockPrices) === stockPrices[0]) {
        return true;
    }
    return false;
}

console.log(getMaxProfit(stockPrices))
console.log(getMaxProfit(handleNegatives))