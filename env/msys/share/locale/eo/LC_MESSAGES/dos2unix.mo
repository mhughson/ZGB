��    3      �  G   L      h  &   i  4   �    �  .   �  �       �     �     �     �     �  E     A   _  )   �     �     �  !   �  0     ?   <  >   |  M   �  :   	     D  9   ]     �      �  "   �  $   �          :      Y     z     �     �  %   �  %   �  &     0   A  0   r  1   �  E   �  %     !   A     c  '   �  #   �  &   �  *   �  1        P     l  �  �  *     7   <  F  t  +   �  �  �     �     �     �          )  U   C  J   �  7   �          *     8  <   X  E   �  @   �  W     C   t     �  A   �          :     V     t  "   �  "   �  "   �     �        "   0   !   S   !   u   "   �   /   �   /   �   1   !  )   L!      v!  "   �!  "   �!  :   �!  /   "  '   H"  )   p"  2   �"  !   �"     �"            *                /   .                -                   	                 '         ,                  !      &      $         )   3                             %   1      2   0   #              (   
          "   +                                       output file remains in '%s'
           which is the target of symbolic link '%s'
  -F, --follow-symlink  follow symbolic links and convert the targets
 -R, --replace-symlink replace symbolic links with converted files
                       (original target files remain unchanged)
 -S, --skip-symlink    keep symbolic links and targets unchanged (default)
  -V, --version         display version number
 %s %s (%s)
Usage: %s [options] [file ...] [-n infile outfile ...]
 -ascii                convert only line breaks (default)
 -iso                  conversion between DOS and ISO-8859-1 character set
   -1252               Use Windows code page 1252 (Western European)
   -437                Use DOS code page 437 (US) (default)
   -850                Use DOS code page 850 (Western European)
   -860                Use DOS code page 860 (Portuguese)
   -863                Use DOS code page 863 (French Canadian)
   -865                Use DOS code page 865 (Nordic)
 -7                    Convert 8 bit characters to 7 bit space
 -c, --convmode        conversion mode
   convmode            ascii, 7bit, iso, mac, default to ascii
 -f, --force           force conversion of binary files
 -h, --help            give this help
 -k, --keepdate        keep output file date
 -L, --license         display software license
 -l, --newline         add additional newline
 -m, --add-bom         add UTF-8 Byte Order Mark
 -n, --newfile         write to new file
   infile              original file in new file mode
   outfile             output file in new file mode
 -o, --oldfile         write to old file
   file ...            files to convert in old file mode
 -q, --quiet           quiet mode, suppress all warnings
                       always on in stdio mode
 -s, --safe            skip binary files (default)
 Cygwin version.
 DOS 16 bit version (TURBOC).
 DOS 16 bit version (WATCOMC).
 DOS 32 bit version (DJGPP).
 DOS 32 bit version (WATCOMC).
 Failed to change the owner and group of temporary output file %s: %s
 Failed to change the permissions of temporary output file %s: %s
 Failed to open temporary output file: %s
 MSYS version.
 OS/2 version.
 Skipping %s, not a regular file.
 Skipping %s, output file %s is a symbolic link.
 Skipping %s, target of symbolic link %s is not a regular file.
 Skipping UTF-16 file %s, an UTF-16 conversion error occurred.
 Skipping UTF-16 file %s, the current locale character encoding is not UTF-8.
 Skipping UTF-16 file %s, the size of wchar_t is %d bytes.
 Skipping binary file %s
 Skipping symbolic link %s, target is not a regular file.
 Skipping symbolic link %s.
 Windows 32 bit version (MinGW).
 Windows 32 bit version (WATCOMC).
 Windows 64 bit version (MinGW-w64).
 With Unicode UTF-16 support.
 With native language support.
 Without Unicode UTF-16 support.
 active code page: %d
 can not write to output file
 code page %d is not supported.
 converting file %s to DOS format ...
 converting file %s to Mac format ...
 converting file %s to Unix format ...
 converting file %s to file %s in DOS format ...
 converting file %s to file %s in Mac format ...
 converting file %s to file %s in Unix format ...
 error: Value of environment variable DOS2UNIX_LOCALEDIR is too long.
 invalid %s conversion mode specified
 option '%s' requires an argument
 problems converting file %s
 problems converting file %s to file %s
 problems renaming '%s' to '%s': %s
 problems resolving symbolic link '%s'
 program error, invalid conversion mode %d
 target of file %s not specified in new file mode
 using %s as temporary file
 using code page %d.
 Project-Id-Version: dos2unix 5.3.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2012-03-30 09:25+0200
PO-Revision-Date: 2010-03-07 19:50+0100
Last-Translator: Rugxulo <rugxulo@gmail.com>
Language-Team: Esperanto <translation-team-eo@lists.sourceforge.net>
Language: eo
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
           kreatan dosieron restas en '%s'
           kiu estas la atingon de dosiera cxenero '%s'
  -F, --follow-symlink  legu dosierajn cxenerojn kaj konverti la atingojn
 -R, --replace-symlink anstatauxe registru dosierajn cxenerojn per konvertotaj dosieroj
                       (ne-cxeneraj atingaj dosieroj restas nesxangxitaj)
 -S, --skip-symlink    retenu dosierajn cxenerojn kaj atingojn nesxangxataj (jam sxaltita)
  -V, --version         diri eldono-numeron
 %s %s (%s)
Uzado: %s [elektojn] [dosiero ...] [-n antauxajxo kreajxo ...]
 -ascii                nur traduku linio-finojn (jam ensxaltita)
 -iso                  traduku inter DOS kaj ISO-8859-1 literaro
   -1252               Uzu Vindozan kodpagxon 1252 (Okcident-Euxropa)
   -437                Uzu DOS kodpagxon 437 (Usona) (jam ensxaltita)
   -850                Uzu DOS kodpagxon 850 (Okcident-Euxropa)
   -860                Uzu DOS kodpagxon 860 (Portugala)
   -863                Uzu DOS kodpagxon 863 (Kebekia)
   -865                Uzu DOS kodpagxon 865 (Nordlandaj)
 -7                    Traduku de 8-bitaj literoj en blankspacon
 -c, --convmode        modo de sxangxo
   sxangxmodo          ascii, 7bit, iso, mac, provizore elektita ascii
 -f, --force           forte konvertado de netekstaj dosieroj
 -h, --help            diri cxi tiun mesagxon
 -k, --keepdate        konservi dato-tempon dosieran
 -L, --license         eldiru permesilon tekstan
 -l, --newline         aldoni markon linian finan
 -m, --aldoni-bom      aldoni UTF-8 internan ordo-markon
 -n, --newfile         registri novan dosieron
   antauxajxo          al antauxa dosiero metita novmoden
   kreajxo             al dosiero registrita novmoden
 -o, --oldfile         registri malnovan dosieron
   dosiero...          dosiero(j)n por registri per malnova modo
 -q, --quiet           silente eviti avertojn
                       cxiam ensxaltata dum stdio modo
 -s, --safe            evitu netekstajn dosierojn (jam sxaltita)
 Cygwin eldono.
 DOS-16 eldono (TURBOC).
 DOS-16 eldono (WATCOMC).
 DOS-32 eldono (DJGPP).
 DOS-32 eldono (WATCOMC).
 Malsukcesis sxangxi la proprietulon kaj grupon de la provizora eldona dosiero %s: %s
 Malsukcesis sxangxi la permesajxojn de la provizora eldona dosiero %s: %s
 malsukcesis malfermi provizoran dosieron registran: %s
 MSYS eldono.
 OS/2 eldono.
 Pasante %s, dosiero ne taugxa.
 Evitante %s, atingan dosieron %s jam estas dosiera cxenero.
 Evitante %s, atingon de dosiera cxenero %s ne estas normala dosiero.
 Evitante UTF-16 dosieron %s, eraro de UTF-16 tradukigxo okazis.
 Evitante UTF-16 dosieron %s, la nuntempa lingvo-loka litero-enkodigxo ne egalas UTF-8.
 Evitante UTF-16 dosieron %s, la mezuro da wchar_t estas %d okopoj.
 Pasante ne-tekstan dosieron %s
 Evitante dosieran cxeneron %s, atingon ne estas normala dosiero.
 Evitante dosieran cxeneron %s.
 Windows-32 eldono (MinGW).
 Windows-32 eldono (WATCOMC).
 Windows-64 eldono (MinGW-w64).
 Kun subteno de Unikodo da UTF-16.
 Uzante denaskan lingvon sistemon.
 Sen subteno de Unikodo da UTF-16.
 nuntempa kodpagxo: %d
 ne povas registri dosieren
 kodpagxo %d ne estas konvertebla.
 sxangxante dosiero %s DOS-en ...
 sxangxante dosiero %s Mac-en ...
 sxangxante dosiero %s Unix-en ...
 sxangxante dosiero %s al dosiero %s DOS-en ...
 sxangxante dosiero %s al dosiero %s Mac-en ...
 sxangxante dosieron %s al dosiero %s Unix-en ...
 eraro: DOS2UNIX_LOCALEDIR tro longigxis.
 neuzebla %s sxangxmodo menciita
 elekto '%s' bezonas elekto-vorton
 problemojn dum sxangxi dosiero %s
 problemojn trovitajn dum sxangxi dosiero %s al dosiero %s
 problemojn trovitajn renomigi '%s' al '%s': %s
 erarojn legante dosieran cxeneron '%s'
 programa eraro, negxustan sxangxmodon %d
 ejon de dosiero %s ne menciita en novmodo dosiera
 uzante %s kiel provizora dosiero
 uzante kodpagxon %d.
 