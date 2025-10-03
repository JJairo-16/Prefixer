# Prefixer - Jairo Linares

<details>
<summary><strong>Índex</strong></summary>

- [Què és?](#què-és)
- [Com funciona?](#com-funciona)
- [Configuracions](#configuracions)
  - [Configuracions genèriques](#configuracions-genèriques)
  - [Com editar les opcions?](#com-editar-les-opcions)
  - [Llibreries prefabricades](#llibreries-prefabricades)
- [Requisits](#requisits)
- [Instal·lació](#instal·lació)
- [Llicència](#llicència)

</details>

## Què és?
Prefixer és un menú ocult basat en combinacions de tecles (prefix i opció), pensat per facilitar l’accés a accions personalitzades.

## Com funciona?
1. Prémer `ALT+Espai` per activar el menú.
2. En menys de 500 ms, prémer `ALT+<tecla>` per executar l’acció vinculada.
    > El temps es pot ajustar a la configuració.

## Configuracions
### Configuracions genèriques
Les configuracions genèriques es poden configurar en el fitxer [config.json](config.json):
- `comboTimer`: defineix el temps màxim (en mil·lisegons) que pot passar entre prémer el prefix i l'opció.

### Com editar les opcions?
- **Opcions:** defineixen l’accionament de cada tecla (funció vinculada i reinici de combinacions). Aquestes es configuren en el fitxer principal ([Prefixer.ahk](Prefixer.ahk)).

- **Combinacions:** contenen les funcions amb el comportament de cada opció. Aquestes es configuren en el fitxer [userOptions.ahk](userOptions.ahk).

### Llibreries prefabricades
En [`prefabricatedLIB`](/prefabricatedLIB/) es troben algunes llibreries prefabricades per usuaris amb menys experiència.
- **[genericLIB](prefabricatedLIB/genericLIB.ahk):** Aquesta llibreria permet utilitzar funcions bàsiques prefabricades.

    > L’**exemple d’ús** de la llibreria prefabricada es troba en el fitxer de configuració de l’usuari.

## Requisits
És necessari tenir instal·lat [AutoHotkey](https://www.autohotkey.com/) (v1.1 i v2).
> Provat amb AutoHotkey v1.1; compatibilitat amb v2 en progrés.

## Instal·lació
1. Descarrega o clona el repositori.  
2. Assegura’t que tens AutoHotkey instal·lat.  
3. Obre [`Prefixer.ahk`](Prefixer.ahk) amb doble clic o executa’l amb AHK.

## Llicència
Aquest projecte està sota la llicència [MIT](LICENSE).