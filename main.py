from textwrap import dedent
from bs4 import BeautifulSoup
from dataclasses import dataclass


@dataclass
class TerminalTool():
    name: str
    invocation: str
    url_home: str
    url_documentation: str
    url_repository: str
    implementation_language: str
    description: str


def load_file_contents(file_name):
    with open(file_name, 'r', encoding='utf-8') as file:
        content = file.read()
        return content


def soupinate(html):
    return BeautifulSoup(html, "html.parser")


def extract_section_name(row):
    return row.td.text


def extract_url_from_cell(cell):
    link = cell.find('a')

    if link is None:
        return "NULL"

    return f"{link.get('href')}"


def hydrate_tool(row):
    name = row.find("td", class_="name-cell").text
    home = extract_url_from_cell(row.find("td", class_="home-cell"))
    docs = extract_url_from_cell(row.find("td", class_="doc-cell"))
    repo = extract_url_from_cell(row.find("td", class_="repo-cell"))
    lang = row.find("td", class_="lang-cell").text
    desc = row.find("td", class_="desc-cell").text

    return TerminalTool(
        name=name,
        invocation=None,
        url_home=home,
        url_documentation=docs,
        url_repository=repo,
        implementation_language=lang,
        description=desc
    )


def quotit(s):
    if s != "NULL":
        return f"'{s}'"

    return s


def emit_tag_insert_sql(section):
    print(dedent(f"""
        INSERT INTO tags (name) VALUES ({quotit(section)});
    """))


def emit_tool_insert_sql(tool):
    tool_insert_sql = dedent(f"""
        INSERT INTO tools (
            name,
            invocation,
            url_home,
            url_documentation,
            url_repository,
            implementation_language,
            description
        )
        VALUES (
            {quotit(tool.name)},
            NULL,
            {quotit(tool.url_home)},
            {quotit(tool.url_documentation)},
            {quotit(tool.url_repository)},
            {quotit(tool.implementation_language)},
            {quotit(tool.description)}
        );
    """)

    print(tool_insert_sql)


def emit_tag_tool_xref_insert_sql(tool_name, tag_name):
    xref_insert_sql = dedent(f"""
        INSERT INTO tools_tags_xref (
            tool_id,
            tag_id
        )
        VALUES (
            (SELECT id from tools WHERE name = '{tool_name}'),
            (SELECT id from tags WHERE name = '{tag_name}')
        );
    """)

    print(xref_insert_sql)


def process_rows(table_rows):
    section = ""

    for row in table_rows:
        row_class = row['class'][0]

        match row_class:
            case "section-row":
                section = extract_section_name(row)
                emit_tag_insert_sql(section)

            case "tool-row":
                tool = hydrate_tool(row)
                emit_tool_insert_sql(tool)

                if not section:
                    continue

                emit_tag_tool_xref_insert_sql(tool.name, section)


def main():
    html = load_file_contents('terminal_tools_table.html')
    soup = soupinate(html)

    table_rows = soup.find_all("tr")
    process_rows(table_rows)


if __name__ == "__main__":
    main()
