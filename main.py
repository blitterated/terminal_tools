from bs4 import BeautifulSoup

def load_file_contents(file_name):
    with open(file_name, 'r', encoding='utf-8') as file:
        content = file.read()
        return content

def soupinate(html):
    return BeautifulSoup(html, "html.parser")

def process_section_row(row):
    #cell = row.find("td")
    cell = row.td
    #print(f"cell type: {type(cell)}, name: {cell.name}, content: {cell.text}")
    return cell.text

def extract_url_from_cell(cell):
    link = cell.find('a')

    if link is None:
        return "NULL"

    return f"\"{link.get('href')}\""

def process_tool_row(row):
    name = row.find("td", class_="name-cell").text
    home = extract_url_from_cell(row.find("td", class_="home-cell"))
    docs = extract_url_from_cell(row.find("td", class_="doc-cell"))
    repo = extract_url_from_cell(row.find("td", class_="repo-cell"))
    lang = extract_url_from_cell(row.find("td", class_="lang-cell"))
    desc = row.find("td", class_="desc-cell").text

    tool_insert_sql_1 = "INSERT INTO tools (name, invocation, url_home, url_documentation, url_repository, description)"
    tool_insert_sql_2 = f"VALUES (\"{name}\", {home}, {docs}, {repo}, \"{desc}\");"

    print(" ".join([tool_insert_sql_1, tool_insert_sql_2]))

def process_rows(table_rows):
    section_row = ""

    for row in table_rows:
        row_class = row['class'][0]
        #print(f"row_class: {row_class}, type: {type(row_class)}")

        match row_class:
            case "section-row":
                section_name = process_section_row(row)
                print(f"section: {section_name}")

            case "tool-row":
                process_tool_row(row)


def main():
    html = load_file_contents('terminal_tools_table.html')
    soup = soupinate(html)

    table_rows = soup.find_all("tr")
    process_rows(table_rows)



if __name__ == "__main__":
    main()
