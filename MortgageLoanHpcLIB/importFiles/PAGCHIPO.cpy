      *****************************************************************/
      * RI0094 22/06/07 RPTR SE ADICIONAN CAMPO OFICINA PAGO          */
      * RI0094 21/06/07 RPTR SE ADICIONAN CAMPOS TIPO, NRO DOCUMENTO  */
      * RI0094 04/03/07 RPTR INTERFACE CON CREDITO HIPOTECARIO        */
      *****************************************************************/
      *================================================================*
      ** COPY     : PAGCHIPO                                          **
      ** SISTEMA  : PAGOACTIVO                                        **
      ** REGISTRO : COMMON AREA PARA INTERFACE CON CREDITO HIPOTECARIO**
      ** LONGITUD : 1394                                              **
      *================================================================*
       01  REG-PEND-CRED-HIPOTECARIO.
           02  PH-OPERACION                        PIC  X(01).          0001-001
               88 ADICIONA         VALUE 'A'.
               88 BROWSE           VALUE 'B'.
               88 CONSULTA         VALUE 'R'.
               88 ELIMINA          VALUE 'E'.
      *        88 MODIFICA         VALUE 'M'.
      *
      *
           02  REG-INPUT-PENDIENTE.
               04  PH-COD-RUBRO                    PIC  9(02).          0002-002
               04  PH-COD-EMPRESA                  PIC  9(03).          0004-003
               04  PH-COD-SERVICIO                 PIC  9(02).          0007-002
               04  PH-COD-DEUDOR                   PIC  X(20).          0009-020
               04  PH-NOM-DEUDOR                   PIC  X(40).          0029-040
               04  PH-COD-CUOTA                    PIC  X(08).          0069-008
               04  PH-DESCRIP-CUOTA                PIC  X(20).          0077-020
               04  PH-MON-APAGAR                   PIC  X(03).          0097-003
               04  PH-IMP-APAGAR                   PIC  9(13)V9(02).    0100-015
               04  PH-FEC-VCMTO                    PIC  X(08).          0115-008
               04  PH-TIP-DCMTO                    PIC  X(02).          0123-002
               04  PH-NRO-DCMTO                    PIC  X(13).          0125-013
      *
      *
           02  REG-OUPUT-PENDIENTE.
               04  PH-COD-RETORNO                  PIC 9(02).           0138-002
               04  PH-COD-RETORNO-TOLD             PIC 9(02).           0140-002
               04  PH-MENSAJE                      PIC X(80).           0142-080
               04  PH-NUM-CUOTAS                   PIC 9(03).           0222-003
      *
               04  PH-OUTPUT-PEND OCCURS 30.                            0225-
                   06  PH-OUT-COD-CUOTA            PIC X(08).               -008
                   06  PH-OUT-MON-APAGAR           PIC X(03).               -003
                   06  PH-OUT-IMP-APAGAR           PIC 9(13).9(02).     -016
                   06  PH-OUT-FLAG-PAGADO          PIC X(01).               -001
                   06  PH-OUT-FEC-PAGO             PIC X(08).               -008
                   06  PH-OUT-OFI-PAGO             PIC X(03).               -003
      *
