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
    desc = row.find("td", class_="desc-cell").text

    return TerminalTool(
        name=name,
        invocation=name,
        url_home=home,
        url_documentation=docs,
        url_repository=repo,
        description=desc
    )


def quotit(s):
    if s != "NULL":
        s_esc = s.replace("'", "''")
        return f"'{s_esc}'"

    return s


def emit_tag_insert_sql(section):
    print(dedent(f"""
        INSERT INTO tags (name, is_section) VALUES ({quotit(section)}, TRUE);
    """))


def emit_tool_insert_sql(tool):
    tool_insert_sql = dedent(f"""
        INSERT INTO tools (
            name,
            invocation,
            description
        )
        VALUES (
            {quotit(tool.name)},
            {quotit(tool.invocation)},
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
            (SELECT id from tools WHERE name = {quotit(tool_name)}),
            (SELECT id from tags WHERE name = {quotit(tag_name)})
        );
    """)


def emit_tools_tool_urls_insert_sql(tool_name, url_typename, url):
    xref_insert_sql = dedent(f"""
        INSERT INTO tool_urls (
            tool_id,
            url_type_id,
            url
        )
        VALUES (
            (SELECT id from tools WHERE name = {quotit(tool_name)}),
            (SELECT id from tool_url_types WHERE type = {quotit(url_typename)}),
            {quotit(url)}
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

                if tool.url_home and tool.url_home != "NULL":
                    emit_tools_tool_urls_insert_sql(tool.name, "Homepage", tool.url_home)

                if tool.url_documentation and tool.url_documentation != "NULL":
                    emit_tools_tool_urls_insert_sql(tool.name, "Repository", tool.url_documentation)

                if tool.url_repository and tool.url_repository != "NULL":
                    emit_tools_tool_urls_insert_sql(tool.name, "Documentation", tool.url_repository)

def main():
    html = load_file_contents('terminal_tools_table.html')
    soup = soupinate(html)

    table_rows = soup.find_all("tr")
    process_rows(table_rows)


if __name__ == "__main__":
    main()
