# tkthesis

LaTeX Class cho đề tài luận văn theo yêu cầu của khoa Toán Kinh Tế - Đại học Kinh tế Quốc dân: [link](http://mfe.edu.vn/tin-tuc/quy-dinh-ve-chuyen-de-thuc-tap-bac-dai-hoc.html "link")

![screenshot](images/screenshot.png)

## Các package được gọi sẵn

Ngoài các phần có thể định nghĩa sẵn bằng các macro của LaTeX, một số package được gọi thêm vào và cần đảm bảo đã cài đặt để `tkthesis` hoạt động bình thường.

- `scrextend`
- `vietnam`
- `listings`
- `mathptmx`
- `indentfirst`
- `etoolbox`
- `fancyhdr`
- `titlesec`
- `titletoc`
- `placeins`
- `caption`
- `hyperref`
- `hypcap`
- `biblatex`

## Chú ý
Class này chỉ dùng cho phiên bản `LaTeX2e` và ưu tiên render bằng `pdflatex`.

Để sử dụng, thêm file `tkthesis.cls` vào cùng thư mục với file `.tex`, `.rnw` hoặc `.rmd` của bạn và gọi class vào đầu file đó:

> \documentclass{tkthesis}

Chú ý không dùng 2 lần `\documentclass` và không gọi lại các package liệt kê ở trên với `\usepackage`.

## Thử nghiệm
Một số ví dụ viết sẵn có ở trong thư mục [sample](sample/ "sample").
