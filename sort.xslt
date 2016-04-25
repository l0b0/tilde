<stylesheet version="1.0" xmlns="http://www.w3.org/1999/XSL/Transform">
    <output method="xml" indent="yes" encoding="UTF-8"/>
    <strip-space elements="*"/>

    <template match="processing-instruction()|@*">
        <copy>
            <apply-templates select="node()|@*"/>
        </copy>
    </template>

    <template match="*">
        <copy>
            <apply-templates select="@*"/>
            <apply-templates>
                <sort select="name()"/>
                <sort select="@*[1]"/>
                <sort select="@*[2]"/>
                <sort select="@*[3]"/>
                <sort select="@*[4]"/>
                <sort select="@*[5]"/>
                <sort select="@*[6]"/>
            </apply-templates>
        </copy>
    </template>
</stylesheet>
