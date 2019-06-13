/* REXX */
/*%STUB CALLCMD*/
/*********************************************************************/
/*                                                                   */
/* IBM ISPF Git Interface                                            */
/*                                                                   */
/*********************************************************************/
/*                                                                   */
/* NAME := BGZSTART                                                  */
/*                                                                   */
/* DESCRIPTIVE NAME := ISPF Git Client configuration                 */
/*                                                                   */
/* FUNCTION := The ISPF Client configuration module sets up the      */
/*             location of key components such as the location of    */
/*             Java and the Rocket products.                         */
/*                                                                   */
/* CALLED BY : BGZSTART - ISPF Git Client startup module             */
/*                                                                   */
/* INSTRUCTIONS : 1. Change the value assigned to JAVA_HOME to the   */
/*                   location of Java on your system.                */
/*                2. Change the value assigned to Rocket_HOME to the */
/*                   location where you have installed the Rocket    */
/*                   products.                                       */
/*                3. If using DBB, change the value assigned to      */
/*                   DBB_HOME to the location where you have         */
/*                   installed DBB.                                  */
/*                4. Enter the location of iconv on your system. By  */
/*                   default this is /bin/iconv.                     */
/*                                                                   */
/* PARAMETERS                                                        */
/*                                                                   */
/* OUTPUT := None                                                    */
/*                                                                   */
/* Change History                                                    */
/*                                                                   */
/* Who   When     What                                               */
/* ----- -------- -------------------------------------------------- */
/* LD    14/05/19 Initial version                                    */
/*                                                                   */
/*********************************************************************/

  Address ISPEXEC

  JAVA_HOME   = '/usr/lpp/java/J8.0_64'
  Rocket_HOME = '/var/rocket'
  DBB_HOME    = '/var/dbb103'
  ICONV_HOME  = '/bin/iconv'

  BGZJAVAH = JAVA_HOME
  BGZROCKH = Rocket_HOME
  BGZDBBH  = DBB_HOME
  BGZICONV = ICONV_HOME

  'VPUT (BGZJAVAH,BGZROCKH,BGZDBBH,BGZICONV) SHARED'

Exit
