# جزوهٔ پردازش گفتار

جزوهٔ فارسی درس پردازش گفتار، دکتر زینب آقاهادی، دانشگاه علم و صنعت ایران، پاییز ۱۴۰۵؛ پیش‌نویس جلسات ۱ تا ۱۰.

[مشاهدهٔ PDF](build/main.pdf) · [راهنمای فارسی](../README.fa.md) · [English guide](../README.md)

## ساخت

نیازمند TeX Live یا MacTeX، همراه XeLaTeX، latexmk و بسته‌های مورد استفاده در `latex/main.tex` از جمله `xepersian`. فونت‌ها در `assets/fonts/` و شکل‌ها در `assets/figures/` قرار دارند.

از همین پوشه اجرا کنید:

```bash
make
```

خروجی در [`build/main.pdf`](build/main.pdf) ساخته می‌شود.

ساخت یک فصل به‌تنهایی:

```bash
sh latex/test-chapter.sh 05-mel-scale-mfcc
```

خروجی فصل در `build/test-05-mel-scale-mfcc/` قرار می‌گیرد.

## فایل‌ها

- `latex/main.tex`: تنظیمات و فایل اصلی جزوه
- `latex/frontmatter.tex`: چکیده و بخش‌های آغازین
- `latex/chapters/`: ده فصل جزوه
- `assets/`: فونت‌ها و شکل‌های موردنیاز برای ساخت
