Install:
* apktool
* sqlite3

Updating the paints database:

1. Download latest apk from https://apkpure.com/paintrack/com.courageousoctopus.paintrack/downloading
2. Unpack using apktool
3. Inspect database at /assets/flutter_assets/assets/database
4. Rename paint_info to paint_info.db
5. Export database to json using a command like `sqlite3 db.sqlite3 '.mode json' '.once out.json' 'select * from foo'`

sqlite3 paint_info.db '.mode json' '.once paints.json' 'select ROW_NUMBER() OVER(ORDER BY _id) AS id, CorporateID as manufacturer_id, PaintName as name, Manufacturer as manufacturer, Color as color, barCode as barcode, PaintType as type, PaintClass as series, Hue as hue, Saturation as saturation, Value as value, IsMetallic as metallic, IsWash as wash from paint_info where manufacturer in ("Citadel", "Vallejo", "AK Interactive", "Pro Acryl", "Army Painter", "Scale75", "Two Thin Coats") order by manufacturer;'