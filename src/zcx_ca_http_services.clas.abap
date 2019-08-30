class ZCX_CA_HTTP_SERVICES definition
  public
  inheriting from CX_STATIC_CHECK
  create public .

public section.

  constants RECEIVE_ERROR type SOTR_CONC value '62379100861F1ED9A8C77C149E4A0E2F' ##NO_TEXT.
  data MV_STATUS_CODE type STRING .
  data MV_STATUS_TEXT type STRING .
  data MV_CONTENT_RESPONSE type STRING .
  data MS_RETURN_RESPONSE type BAPIRET2 .

  methods CONSTRUCTOR
    importing
      !TEXTID like TEXTID optional
      !PREVIOUS like PREVIOUS optional
      !MV_STATUS_CODE type STRING optional
      !MV_STATUS_TEXT type STRING optional
      !MV_CONTENT_RESPONSE type STRING optional
      !MS_RETURN_RESPONSE type BAPIRET2 optional .
protected section.
private section.
ENDCLASS.



CLASS ZCX_CA_HTTP_SERVICES IMPLEMENTATION.


  method CONSTRUCTOR.
CALL METHOD SUPER->CONSTRUCTOR
EXPORTING
TEXTID = TEXTID
PREVIOUS = PREVIOUS
.
me->MV_STATUS_CODE = MV_STATUS_CODE .
me->MV_STATUS_TEXT = MV_STATUS_TEXT .
me->MV_CONTENT_RESPONSE = MV_CONTENT_RESPONSE .
me->MS_RETURN_RESPONSE = MS_RETURN_RESPONSE .
  endmethod.
ENDCLASS.