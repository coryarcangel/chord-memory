// Function to generate a random number between min and max (inclusive)
function getRandomNumber(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Number of rows
const numRows = 16;

// Probabilities
const Probabilities = [
100,
100,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
];

// Generate 24 rows
for (let i = 0; i < numRows; i++) {
  // Generate a random number between 0 and 99
  const randomNum = Math.floor(Math.random() * 100);

  // Compare the random number with the corresponding hand-typed number
  const Probabilitie = Probabilities[i];
  if (randomNum < Probabilitie) {
    const randomColumn = getRandomNumber(0, 23);
    console.log(`${i + 1}	${randomNum}	${Probabilitie}	${randomColumn}	${randomColumn+4}	${randomColumn+7}	${randomColumn+11}`);
  } else {
    console.log(`${i + 1}	${randomNum}	${Probabilitie}	X	X	X	X`);
  }
}	
