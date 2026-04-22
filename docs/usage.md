# 使用说明

## 1. 上传到 Overleaf

推荐流程：

1. 下载本仓库源码并先在本地解压；
2. 在 Overleaf 中创建 `Blank Project`；
3. 进入解压后的仓库根目录，选中其中的文件和文件夹并上传到 Overleaf；
4. 打开项目后将编译器切换为 `XeLaTeX`；
5. 点击 `Recompile`。

如果目录、页码或交叉引用未更新，再编译一次即可。

注意：

- `main.tex` 和 `bjtuthesis.cls` 保持在项目顶层，不要移动到子目录；
- 不要把整个外层仓库目录原样再包一层传到 Overleaf，否则 `main.tex` 可能不在项目根目录；
- 上传前不要把 `main.pdf`、`.aux`、`.log`、`.toc` 等编译产物一并打包。

## 2. 本地编译（可选）

如果你也想在本地预览，可在仓库根目录执行：

```bash
xelatex main.tex
xelatex main.tex
```

## 3. 修改封面信息

打开 `main.tex`，修改以下字段：

```tex
\thesistitlecn{你的中文题目}
\thesistitleen{Your English Title}
\thesiscollege{经济管理学院}
\thesismajor{你的专业}
\thesisauthor{你的姓名}
\thesisstudentid{你的学号}
\thesisadvisor{你的导师}
\thesisdate{2025年6月}
```

## 4. 修改摘要

- 中文摘要：`frontmatter/abstract-cn.tex`
- 英文摘要：`frontmatter/abstract-en.tex`

关键词命令如下：

```tex
\cnkeywords{关键词1；关键词2；关键词3}
\enkeywords{Keyword 1; Keyword 2; Keyword 3}
```

## 5. 修改正文

正文按章节拆分在 `chapters/` 目录中：

- `ch01-introduction.tex`
- `ch02-literature.tex`
- `ch03-model.tex`
- `ch04-analysis.tex`
- `ch05-sensitivity.tex`
- `ch06-conclusion.tex`

你可以直接在这些文件中替换占位文字，也可以按自己的论文结构增删章节。

## 6. 修改参考文献

当前模板在 `backmatter/references.tex` 中使用 `thebibliography` 给出示例。

如果你后续希望切换到 `BibTeX` 或 `biblatex`，建议在熟悉模板结构后再替换。

## 7. 插入图片、表格和公式

### 图片

```tex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.75\textwidth]{assets/your-figure.png}
  \caption{图片标题}
\end{figure}
```

### 表格

```tex
\begin{table}[htbp]
  \centering
  \caption{表格标题}
  \begin{tabular}{ccc}
    \toprule
    列1 & 列2 & 列3 \\
    \midrule
    a & b & c \\
    \bottomrule
  \end{tabular}
\end{table}
```

### 公式

```tex
\begin{equation}
  y = f(x)
\end{equation}
```

## 8. 更换封面题字图

默认使用的封面图是：

- `assets/bjtu-cover-title.png`

如果你想换成自己的版本：

1. 直接替换该文件；
2. 或在 `main.tex` 中显式指定：

```tex
\thesiscoverimage{assets/your-cover-image.png}
```

## 9. 第二页空白页

模板默认在封面后保留一张空白页，方便双面打印封面。

如果你不需要该页，可在 `bjtuthesis.cls` 中找到 `\makecover` 末尾的：

```tex
\insertblankpage
```

并根据自己的需要调整。

## 10. 常见问题

### 目录没有更新

通常是只编译了一次。请再编译一次。

### 中文字体效果与截图不同

不同系统的中文字体不同，视觉效果可能略有差异。当前模板优先保证 Overleaf 上可编译，其次再尽量接近本地 Word 观感。

### 想删掉示例内容

直接替换 `main.tex`、`frontmatter/`、`chapters/` 和 `backmatter/` 中的占位内容即可，不需要改动类文件。

## 11. 建议

- 正式投稿前再次核对北京交通大学经济管理学院和学校的最新格式要求
- 不要将 `.aux`、`.log`、`.toc`、`main.pdf` 等编译产物提交到仓库
- 若你准备公开发布自己的论文内容，请自行确认其中图片、数据和学校标识的使用范围
