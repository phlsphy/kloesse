defmodule KloesseWeb.SignatureController do
    use KloesseWeb, :controller
    #-----create a form on the page; requesting the two inputs: fm and body----#
    def new(conn, _params) do
        render conn, "new.html"
    end

    #----The part where the magic happens----#    
    def pagi(conn, %{"fm" => fm, "body" => body}) do  # treated as string here
        
        fm_n = String.to_integer(fm)
        body_n = String.to_integer(body)

        fm_pagi = Range.new(1,fm_n)
        body_pagi = Range.new(1,body_n)
            
        pagination = Enum.concat([fm_pagi,body_pagi])
            |>Enum.chunk_every(32)
            |>inspect(charlists: :as_lists) # prints to HTML as list/string
            |>String.replace("], [","A") # replace text for easy parsing

        render conn, "result.html", result: pagination #this pipes it through to result.html
    
    end 
end