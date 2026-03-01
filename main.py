from html.parser import HTMLParser

current_tag = ""

class ToolsHTMLParser(HTMLParser):
    def handle_starttag(self, tag, attrs):
        match tag:
            case "tr":
                print("Row Start")
            case "th":
                print("Header Cell Start")
            case "td":
                print("Cell Start")
        #print("Encountered a start tag:", tag)

    def handle_endtag(self, tag):
        match tag:
            case "tr":
                print("Row End")
            case "th":
                print("Header Cell End")
            case "td":
                print("Cell End")
        #print("Encountered an end tag :", tag)

    def handle_data(self, data):
        print("...", data)
        #print("Encountered some data  :", data)

parser = ToolsHTMLParser()

with open('terminal_tools_table.html', 'r', encoding='utf-8') as file:
    content = file.read()
    parser.feed(content)

def main():
    print("Hello from terminal-tools!")


if __name__ == "__main__":
    main()
