from bs4 import BeautifulSoup

def load_file_contents(file_name):
    with open(file_name, 'r', encoding='utf-8') as file:
        content = file.read()
        return content

def soupinate(html):
    return BeautifulSoup(html, "html.parser")

def main():
    html = load_file_contents('terminal_tools_table.html')
    soup = soupinate(html)

    table_rows = soup.find_all("tr")

    for row in table_rows:
        print(row.text)


if __name__ == "__main__":
    main()
