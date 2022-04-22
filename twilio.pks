create or replace package twilio is

  procedure send_sms(
      p_to_phone_no   in varchar2
    , p_from_phone_no in varchar2  
    , p_msg           in clob        
  );

end twilio;
/