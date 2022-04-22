declare
  l_clob clob;
begin
  -- Generate XML (TwiML)
  select xmlelement("Response",
           xmlforest('Thanks for the message ' || :From  || '! You have responded to ' || :To || ' with: ' || :Body as "Message")
         ).getclobval() as xml
    into l_clob
    from dual;
  -- Send response to user  
  owa_util.mime_header('text/xml');
  htp.p(l_clob);  
end;