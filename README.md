# Walkpaper3

Forked from Walkpaper2 (https://extensions.gnome.org/extension/5267/walkpaper2/).
I mostly forked this to add GNOME 43 to the compatibility list.

## About
Have a different wallpaper on each GNOME workspace.

Compatibility for GNOME 43 (and beyond?)

## Installation
Compile the extension by running
```
make all
```
Install `walkpaper3.zip` using Tweak Tool and restart GNOME Shell (alt+F2 + 'r' on X11).

## Configuring wallpapers

You have two options:

### Using Walkpaper3 preferences

You can open extension's preferences and set paths to each workspace's wallpaper
(double-click on a specific row to open a file explorer).

Remember that you can open extension settins from https://extensions.gnome.org/local/

### Use the default wallpaper changing method in GNOME settings.

Walkpaper3 watches for `workspace-switched`, saving the previous workspace's background.
This means that you can change the background image in a workspace and when you
next switch to another workspace, the change will be persisted.

This works regardless of how the background was changed
(you could have other extensions or programs modify the background, and those changes will be persisted).

## Limitations

The workspace thumbnails of the
[Workspace Matrix extension](https://extensions.gnome.org/extension/1485/workspace-matrix/) will all show the wallpaper
of the current active workspace.

## License
This project is licensed under the GNU License - see the [LICENSE.md](LICENSE.md) file for details
