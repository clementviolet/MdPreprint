# Introduction

Use # section and ## subsection tags to organise your document. Cross-referencing is handle by pandoc itself. You can use [heading identifiers](#introduction) commands for cross-referencing sectional headings. See the [pandoc documentation](https://pandoc.org/MANUAL.html#extension-auto_identifiers) for more details.


Nullam lacus velit, posuere quis tortor in, commodo porttitor tellus. Vestibulum ac dolor ac sapien convallis lacinia. Nam facilisis iaculis risus non accumsan. Quisque vitae ligula sed dolor tempus facilisis. Curabitur a porta neque. Pellentesque pulvinar ante vitae mauris consequat commodo. Aenean ante diam, auctor nec efficitur non, blandit a lacus. Donec sed vehicula nulla. Maecenas pellentesque tellus eget erat pharetra, vitae tincidunt ante dapibus. In sit amet sem ac metus viverra viverra a id ex. Aenean in neque mattis, rutrum metus ac, consequat nunc. Phasellus egestas elit elit, eget elementum elit porttitor et. Aenean eu egestas nibh, a ultrices erat.

Ut sit amet tortor a est dignissim sollicitudin vitae eu nulla. Nam pretium, lorem et lobortis vestibulum, felis magna lobortis ante, vitae dapibus enim orci at elit. Aenean lectus orci, eleifend eu ipsum sit amet, sodales suscipit felis. Donec eu enim non est placerat iaculis. Aliquam ultrices fringilla scelerisque. Donec ut dui tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales tempor porta.

## Figures and Tables

You can use all kind of tables supported by pandoc. See the [pandoc](https://pandoc.org/MANUAL.html#tables) documentation for more informations.

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. {#tbl:exemple}

You can refere to a tables like this +@tbl:exemple (see [pandoc-tablenos](https://github.com/tomduck/pandoc-tablenos) documentation for more informations).

Figures should be saved in the src/figures folder. You can include as follow (see [pandoc](https://pandoc.org/MANUAL.html#extension-implicit_figures) documentation for more informations).

![Photo of lovely Brighton by [Alex Ovs](https://unsplash.com/es/@sanekovs?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/brighton?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)](figures/brighton.jpeg){#fig:brighton}

Of course, you can refer to a figure, in the same way as the tables +@fig:brighton (see [pandoc-fignos](https://github.com/tomduck/pandoc-fignos) documentation for more informations). -->

## Citations

For citation, the module citeproc of pandoc is used, like this @Bezuidenhout2021 (see [pandoc citeproc](https://pandoc.org/MANUAL.html#citations) and [pandoc citations](https://pandoc.org/MANUAL.html#extension-citations) documentation)

Sed vestibulum bibendum arcu vel bibendum. Curabitur lobortis ipsum vitae dolor feugiat imperdiet. Donec sit amet eros accumsan, vestibulum leo eu, mattis nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Proin vehicula mattis erat ut dapibus. Nullam at dictum leo. Suspendisse lobortis sed justo id ultrices. Proin sem lectus, eleifend a vestibulum et, vulputate at turpis. Phasellus interdum tincidunt tortor quis luctus.

Aenean imperdiet, ante eu ornare lacinia, massa leo rhoncus ex, nec varius arcu ante sed sem. Cras laoreet sapien vel sem finibus, ut scelerisque libero rhoncus. Curabitur non nunc at quam porta venenatis at ut metus. In hac habitasse platea dictumst. Etiam dignissim gravida mauris, a pellentesque eros porttitor non. Suspendisse vel suscipit odio. Nam volutpat fringilla tortor, vitae vulputate ligula vehicula et. Sed elementum, arcu eget porttitor tincidunt, ante tortor tincidunt justo, eget consequat enim enim nec enim.

## Mathematics

Pandoc and this template work great with maths! But be aware that numbering equations are not working anymore in a Microsoft Docx document ([see this issue](https://github.com/tomduck/pandoc-eqnos/pull/64) on Github).

Let $X_1, X_2, \ldots, X_n$ be a sequence of independent and identically distributed random variables with $\text{E}[X_i] = \mu$ and $\text{Var}[X_i] = \sigma^2 < \infty$

\LaTeX{} is great at typesetting mathematics $abc$. Let $X_1, X_2, \ldots, X_n$ be a sequence of independent and identically distributed random variables with $\text{E}[X_i] = \mu$ and $\text{Var}[X_i] = \sigma^2 < \infty$, and let

$$
S_n = \frac{X_1 + X_2 + \cdots + X_n}{n}
    = \frac{1}{n}\sum_{i}^{n} X_i
$$ {#eq:mean}

denote their mean. Then as $n$ approaches infinity, the random variables $\sqrt{n}(S_n - \mu)$ converge in distribution to a normal $\mathcal{N}(0, \sigma^2)$. You can refer to an equation like this +@eq:mean (see [pandoc-eqnos](https://github.com/tomduck/pandoc-eqnos#markdown-syntax) for more informations).

In augue turpis, ullamcorper vel luctus interdum, ultricies luctus dui. Nulla eu elit et felis lacinia mattis. Aenean accumsan sapien felis, ac pulvinar elit tempor ultricies. Duis blandit nisl tortor, nec congue neque vehicula in. Suspendisse vestibulum ornare purus, quis aliquet erat egestas vitae. Curabitur commodo commodo pellentesque. Vestibulum aliquet, orci ut vestibulum hendrerit, lacus mauris luctus sapien, quis auctor odio enim non quam. Mauris quam nulla, accumsan sed pharetra eu, rhoncus ut velit. Integer risus turpis, tincidunt sit amet eleifend sed, tristique sit amet lorem.

Fusce vestibulum nunc in rhoncus faucibus. Phasellus posuere nunc odio, quis posuere enim facilisis vitae. Nulla volutpat mi purus, a commodo nibh fermentum eget. In rhoncus hendrerit urna, vel feugiat sapien. Sed tellus massa, ultricies non lacinia at, convallis id dui. Aliquam scelerisque scelerisque sapien quis congue. Integer ac viverra nulla. Sed placerat blandit orci vel euismod. Suspendisse in quam in mauris iaculis ultrices. Nullam at urna pharetra, finibus nunc eu, mollis tellus. Sed condimentum risus ac sem interdum interdum.

Vivamus iaculis eget leo ac dapibus. Donec vitae finibus lectus. Nulla sagittis, lectus blandit aliquet porta, massa arcu commodo felis, ut tincidunt nibh urna at quam. Curabitur auctor at metus id vulputate. Donec placerat, felis in iaculis condimentum, urna magna ornare eros, in pulvinar urna nunc quis elit. Curabitur at porta justo, non consequat elit. Nulla et eleifend orci, eu placerat augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In vehicula ante augue, molestie iaculis metus tempus at. Morbi placerat nec sapien vitae tristique. Suspendisse laoreet, nibh sed tincidunt tincidunt, diam elit iaculis nisl, et condimentum leo lacus eu diam. Curabitur scelerisque augue nec urna mattis posuere. Nam lobortis erat et feugiat placerat.

## Lists

You can make lists with automatic numbering \dots

1. Like this,
2. and like this.

...or bullet points...

- Like this,
- and like this.

...or words and descriptions...

Word
  ~ Definition

Concept
  ~ Explanation

Idea
  ~ Text

Some filler text, because empty templates look really poorly.

Vestibulum et nisl quis mauris pretium aliquam. Sed dui mauris, euismod at leo ac, ultrices posuere dui. Mauris risus purus, facilisis id varius eget, laoreet ac odio. Pellentesque et mattis metus, et elementum enim. Curabitur aliquam mi neque, sit amet aliquet turpis pharetra at. Cras euismod semper tortor eu mattis. Phasellus in dui et orci feugiat aliquam id vitae nisi. Pellentesque lacinia erat ut velit ornare hendrerit. Nam ut ultrices urna. Sed magna nibh, venenatis id eros ut, pretium gravida elit. Vestibulum eget scelerisque tortor. Donec eleifend neque non arcu condimentum volutpat. Morbi pellentesque efficitur erat, sed auctor augue fermentum eget. Curabitur vel placerat erat. Fusce bibendum, elit non aliquet semper, tortor nibh feugiat neque, eget dapibus augue urna quis dui.