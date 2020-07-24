process.stdin.resume();
process.stdin.setEncoding("utf8");

var input_lines = [];
var reader = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});

/* ーーーー入力ーーーー
　
ここに書くコードを変える

　 ーーーー出力ーーーー */
reader.on("close", () => {
  console.log(input_lines);
});
