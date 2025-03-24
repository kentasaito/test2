export const layout = (contents: string) => `
<!DOCTYPE html>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="./site/static/assets/layout.css">
<link rel="stylesheet" href="./site/static/assets/design.css">
<header>
  <a href="./index.html">
    <svg
      viewBox="-7 -7 14 14"
      stroke="hsl(0, 0%, 0%)"
      stroke-linecap="round"
      stroke-linejoin="round"
      fill="none"
    >
      <path d="M-4,-4 l-2,4 2,4 M-2,-2 l2,2 -2,2 M2,-2 v4 M4,-4 l2,4 -2,4" />
    </svg></a>
  <div>
    <a href="./syntax.html">Syntax</a>
    <a href="./demo.html">Demo</a>
    <a href="./download.html">Download</a>
    <a href="https://jsr.io/@kenta/test2">JSR</a>
    <a href="https://github.com/kentasaito/test2">GitHub</a>
    <a href="https://marketplace.visualstudio.com/items?itemName=KentaSaito.indentdown">Visual&nbsp;Studio&nbsp;Marketplace</a>
  </div>
</header>
<main>
${contents}
</main>
<!--
<footer>
  Footer
</footer>
-->
`;
