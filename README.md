# Prefixer - Jairo Linares

## Què és?
Prefixer és un menú ocult basat en combinacions de tecles (prefix i opció), pensat per facilitar l’accés a accions personalitzades.

## Com funciona?
1. Prémer `ALT+Espai` per activar el menú.  
2. En menys de 500 ms, prémer `ALT+<tecla>` per executar l’acció vinculada.  

## Com editar les opcions?
Per personalitzar el comportament, cal modificar l’script [Prefixer.ahk](Prefixer.ahk) d’AutoHotKey (AHK):

- **Opcions:** defineixen l’accionament de cada tecla (funció vinculada i reinici de combinacions).  
- **Combinacions:** contenen les funcions amb el comportament de cada opció. Aquestes s’han de definir seguint la sintaxi d’AHK.  

## Requisits
És necessari tenir instal·lat [AutoHotKey](https://www.autohotkey.com/) (v1.1 o v2).

## Instal·lació
1. Descarrega o clona el repositori.  
2. Assegura’t que tens AutoHotKey instal·lat.  
3. Obre [`Prefixer.ahk`](Prefixer.ahk) amb doble clic o executa’l amb AHK.

## Llicència
Aquest projecte està sota la llicència [MIT](LICENSE).