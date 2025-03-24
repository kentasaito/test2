# Indentdown

It is a lightweight markup language.\
It runs on browsers, runtimes, CLIs and Visual Studio Code.

About "Indentdown live preview" for Visual Studio Code, see:\
[Indentdown live preview for Visual Studio Code](#indentdown-live-preview-for-visual-studio-code)

## Examples

### Web browsers

```HTML
<script type="module">
  import { Indentdown } from "./Indentdown.js";
  console.log(Indentdown.getHtml("Header\n  paragraph"));
</script>
```

### Runtimes

```TypeScript
import { Indentdown } from "jsr:@kenta/test2";
console.log(Indentdown.getHtml("Header\n  paragraph"));
```

### CLIs

```sh
$ echo -e 'Header\n  Paragraph' | deno run ./indentdown.ts
```

or

```sh
$ deno run --allow-read ./indentdown.ts ./test.id
```

## Links

- Website: https://indentdown.deno.dev
  - Syntax: https://indentdown.deno.dev/syntax.html
  - Demo: https://indentdown.deno.dev/demo.html
  - Downloads: https://indentdown.deno.dev/download.html
- JSR: https://jsr.io/@kenta/test2
- GitHub: https://github.com/kentasaito/test2
- Visual Studio Marketplace:
  https://marketplace.visualstudio.com/items?itemName=KentaSaito.indentdown

## Indentdown live preview for Visual Studio Code

Edit Indentdown files with live preview.

To open the preview panel, while editing a file with the ".id" extension, click
the Preview button in the top right corner of the editor or press Alt+I.

![open-preview-panel](https://indentdown.deno.dev/open-preview-panel.gif)
