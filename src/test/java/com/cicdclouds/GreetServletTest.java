package com.cicdclouds;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static org.mockito.Mockito.*;

class GreetServletTest {

    private GreetServlet servlet;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private RequestDispatcher dispatcher;

    @BeforeEach
    void setUp() {
        servlet = new GreetServlet();
        request = mock(HttpServletRequest.class);
        response = mock(HttpServletResponse.class);
        dispatcher = mock(RequestDispatcher.class);

        // Always return our mock dispatcher regardless of path
        when(request.getRequestDispatcher(anyString())).thenReturn(dispatcher);
    }

    @Test
    void testGreetingWithName() throws ServletException, IOException {
        String name = "Hariprasad";
        when(request.getParameter("userName")).thenReturn(name);

        servlet.doPost(request, response);

        String expected = "Hello, " + name + "! Welcome to cicdclouds.";
        verify(request).setAttribute("greetingMessage", expected);
        verify(dispatcher).forward(request, response);
    }

    @Test
    void testGreetingWithEmptyName() throws ServletException, IOException {
        when(request.getParameter("userName")).thenReturn("");

        servlet.doPost(request, response);

        String expected = "Hello, Guest! Welcome to cicdclouds.";
        verify(request).setAttribute("greetingMessage", expected);
        verify(dispatcher).forward(request, response);
    }

    @Test
    void testGreetingWithNullName() throws ServletException, IOException {
        when(request.getParameter("userName")).thenReturn(null);

        servlet.doPost(request, response);

        String expected = "Hello, Guest! Welcome to cicdclouds.";
        verify(request).setAttribute("greetingMessage", expected);
        verify(dispatcher).forward(request, response);
    }
}