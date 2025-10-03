# Prefixer - Jairo Linares

## Què és?
Prefixer és un menú ocult basat en combinacions de tecles (prefix i opció), pensat per facilitar l’accés a accions personalitzades.

## Com funciona?
1. Prémer `ALT+Espai` per activar el menú.  
2. En menys de 500 ms, prémer `ALT+<tecla>` per executar l’acció vinculada.  

## Configuracins
### Configuracions genèriques
Les configuracions genèriques es poden configurar en el fitxer [config.json](config.json):
- `comboTimer`: defineix el temps màxim (en mil·lisegons) que pot passar entre prémer el prefix i l'opció.

### Com editar les opcions?
- **Opcions:** defineixen l’accionament de cada tecla (funció vinculada i reinici de combinacions). Aquest es configura en el fitxer principal ([Prefixer.ahk](Prefixer.ahk)).

- **Combinacions:** contenen les funcions amb el comportament de cada opció. Aquest es configura en el fitxer [userOptions.ahk](userOptions.ahk).

## Requisits
És necessari tenir instal·lat [AutoHotKey](https://www.autohotkey.com/) (v1.1 i v2).

## Instal·lació
1. Descarrega o clona el repositori.  
2. Assegura’t que tens AutoHotKey instal·lat.  
3. Obre [`Prefixer.ahk`](Prefixer.ahk) amb doble clic o executa’l amb AHK.

## Llicència
Aquest projecte està sota la llicència [MIT](LICENSE).