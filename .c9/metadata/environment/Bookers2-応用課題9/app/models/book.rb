{"filter":false,"title":"book.rb","tooltip":"/Bookers2-応用課題9/app/models/book.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":5,"column":1},"end":{"row":15,"column":5},"action":"remove","lines":["\tdef self.search_for(content,method)","\t\t\tif method == 'perfet'","\t\t\t\tBook.where(title: content)","\t\t\telsif method == 'foword'","\t\t\t\tBook.where('title Like ?', content + '%')","\t\t\telsif method == 'backword'","\t\t\t\tBook.method('title Like ?', '%' + content)","\t\t\telse","\t\t\t\tBook.where('title Like ?', '%' + content + '%')","\t\t\tend","\t\tend"],"id":2},{"start":{"row":5,"column":0},"end":{"row":5,"column":1},"action":"remove","lines":["\t"]},{"start":{"row":4,"column":0},"end":{"row":5,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":0},"end":{"row":4,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1610267205631,"hash":"a6c758fdab011617655065e9417f379e81d38bcd"}