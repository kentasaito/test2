import { parseArgs } from "jsr:@std/cli@1.0.14/parse-args";
import { Indentdown } from "./indentdown/src/Indentdown.ts";

const args = parseArgs(Deno.args, {
  alias: {
    help: "h",
    version: "v",
  },
});

if (args.help) {
  console.log(`Usage: indentdown [OPTION]... [FILE]
Convert FILE with "Indentdown" and outputs it to standard output.
With no FILE, read standard input.

  -h  --help        display this help and exit
  -v  --version     output version information and exit

Full documentation <https://indentdown.deno.dev>
`);
  Deno.exit();
}

if (args.version) {
  console.log(`Indentdown $VERSION`);
  Deno.exit();
}

console.log(
  Indentdown.getHtml(
    args._[0] ? Deno.readTextFileSync(args._[0]) : await (async () => {
      const lines = [];
      const decoder = new TextDecoder();
      for await (const chunk of Deno.stdin.readable) {
        lines.push(decoder.decode(chunk));
      }
      return lines.join("\n");
    })(),
  ),
);
