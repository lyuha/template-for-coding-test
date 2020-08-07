const readline = require("readline");
const r1 = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    terminal: false,
});

let input = [];

function main() {
    console.log(input.join('\n'));
}

r1.on("line", (line) => {
    input.push(line);
}).on("close", () => {
    main();
    process.exit(0);
})
