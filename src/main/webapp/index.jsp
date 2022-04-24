<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
    DocumentBuilder builder = dbFactory.newDocumentBuilder();
    String path = application.getRealPath("./");

    Document reviews = builder.parse(path+"reviews.xml");
    reviews.normalize();

    NodeList movies =  reviews.getElementsByTagName("row");
    NamedNodeMap attributes = reviews.getAttributes();

%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>
</h1>
<br/>

    <form>
        <%

            int reviewItemIndex;
            int childItemIndex;
            String movieText;
            NodeList childNodes;
            for (reviewItemIndex = 0; reviewItemIndex<=movies.getLength()-1; reviewItemIndex++){
                childNodes = movies.item(reviewItemIndex).getChildNodes();
                for (childItemIndex=0; childItemIndex<=childNodes.getLength()-1;childItemIndex++) {
                    if (childNodes.item(childItemIndex).hasAttributes() == true){
                        childNodes.item(childItemIndex).normalize();
                        movieText = childNodes.item(childItemIndex).getTextContent();
                        out.println("The file information is:" + movieText);
                    }

                %>
        <br></br>
        <%
                }
            }
        %>


    </form>

</body>
</html>