package com.xu;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.util.regex.Pattern;

public class ManageServlet extends HttpServlet
{
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws IOException, ServletException
    {
        String URI = req.getRequestURI();
        
        Pattern pattern = Pattern.compile("/");
        String[] resolveURI = pattern.split(URI);
        resp.getWriter().println(resolveURI);
    }

}