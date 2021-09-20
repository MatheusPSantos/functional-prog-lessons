# Matching de Strings

Sabemos que no Elixir:
```elixir
iex(1)> "Programacao" <> "Funcional"
"ProgramacaoFuncional"
iex(2)>
```
Podemos copiar a resposta do curl para a URL google.com.br:
```powershell
$ curl -I google.com
HTTP/1.1 301 Moved Permanently        
Location: http://www.google.com/      
Content-Type: text/html; charset=UTF-8
Date: Mon, 20 Sep 2021 07:21:26 GMT
Expires: Wed, 20 Oct 2021 07:21:26 GMT
Cache-Control: public, max-age=2592000
Server: gws
Content-Length: 219
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
```
Podemos pegar o trecho __"Content-Type: text/html; charset=UTF-8"__ e no iex fazemos o matching.
```elixir
iex(1)> "Content-Type: " <> content_type = "Content-Type: text/html; charset=UTF-8"     
"Content-Type: text/html; charset=UTF-8"
iex(2)> content_type
"text/html; charset=UTF-8"
iex(3)>
```
A variável precisa estar do lado direito ao valor string que é buscado:
```elixir
iex(3)> content_type <> "Content-Type:" = "Content-Type: text/html; charset=UTF-8"       
** (ArgumentError) the left argument of <> operator inside a match should always be a literal binary because its size can't be verified. Got: content_type
    (elixir 1.12.2) lib/kernel.ex:1929: Kernel.invalid_concat_left_argument_error/1
    (elixir 1.12.2) lib/kernel.ex:1901: Kernel.wrap_concatenation/3
    (elixir 1.12.2) lib/kernel.ex:1880: Kernel.extract_concatenations/2
    (elixir 1.12.2) expanding macro: Kernel.<>/2
    iex:3: (file)
iex(3)>
```