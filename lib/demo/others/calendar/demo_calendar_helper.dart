import 'package:avatar_stack/positions.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoCalendarHelper {
  DateFormat df = DateFormat('MM/dd/yyyy');
  DateFormat tf = DateFormat('HH:mm');
  NumberFormat nf = NumberFormat('00');

  List<FUICalendarAllDayItem> generateAllDayItems(DateTime date) {
    var item = FUICalendarAllDayItem(
      dateIcon: Icon(CupertinoIcons.calendar),
      date: Text('All Day'),
      eventName: Text('Work, Work & Work'),
      venueIcon: Icon(CupertinoIcons.location_solid),
      venue: Text('New York HQ'),
      tags: [
        FUITextPill(
          fuiColorScheme: FUIColorScheme.banana,
          text: Text('Java'),
        ),
      ],
      description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
      avatars: FUICalendarItemAvatarStack(
        settings: RestrictedPositions(
          maxCoverage: FUICalendarTheme.ciAvatarStackMaxConverge,
          minCoverage: FUICalendarTheme.ciAvatarStackMinConverge,
          align: StackAlign.left,
        ),
        avatars: [
          FUITooltip(
            tooltip: Text('Mckinley Davis'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.warning,
              avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Mike Cohen'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.banana,
              avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Tanner Bray'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.purple,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Juliana Evans'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.secondary,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Abdiel Roberson'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.purple,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Jeremy Mays'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.berry,
              avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Savanna Donovan'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.berry,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Mannas Khan'),
            child: FUIAvatar(
              fuiColorScheme: FUIColorScheme.lightGrey,
              avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
            ),
          ),
        ],
      ),
      sidePopupMenuIconButton: FUIPopupMenuIconButton(
        fuiPopupMenuItemList: [
          FUIPopupMenuItem(
            icon: Icon(CupertinoIcons.pencil),
            label: Text('Update'),
          ),
          FUIPopupMenuItem(
            icon: Icon(CupertinoIcons.trash),
            label: Text('Delete'),
          ),
        ],
      ),
    );

    List<FUICalendarAllDayItem> itemList = [];

    switch (date.weekday) {
      case DateTime.monday:
      case DateTime.tuesday:
      case DateTime.wednesday:
      case DateTime.thursday:
      case DateTime.friday:
        itemList.add(item);
        break;
      case DateTime.saturday:
      case DateTime.sunday:
      default:
        // Do Nothing...
        break;
    }

    return itemList;
  }

  List<FUICalendarItem> generateMorningItems(DateTime date) {
    List<FUICalendarItem> items = [];

    switch (date.weekday) {
      case DateTime.monday:
        items = _generateMonMorningItems(date);
        break;
      case DateTime.tuesday:
        items = _generateTueMorningItems(date);
        break;
      case DateTime.wednesday:
        items = _generateWedMorningItems(date);
        break;
      case DateTime.thursday:
        items = _generateThuMorningItems(date);
        break;
      case DateTime.friday:
        items = _generateFriMorningItems(date);
        break;
      case DateTime.saturday:
        items = _generateSatMorningItems(date);
        break;
      case DateTime.sunday:
      default:
        break;
    }

    return items;
  }

  List<FUICalendarItem> generateAfternoonItems(DateTime date) {
    List<FUICalendarItem> items = [];

    switch (date.weekday) {
      case DateTime.monday:
        items = _generateMonAfternoonItems(date);
        break;
      case DateTime.tuesday:
        items = _generateTueAfternoonItems(date);
        break;
      case DateTime.wednesday:
        items = _generateWedAfternoonItems(date);
        break;
      case DateTime.thursday:
        items = _generateThuAfternoonItems(date);
        break;
      case DateTime.friday:
        items = _generateFriAfternoonItems(date);
        break;
      case DateTime.saturday:
      case DateTime.sunday:
      default:
        break;
    }

    return items;
  }

  List<FUICalendarItem> _generateMonMorningItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Backend Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('08:00 am - 10:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('HQ'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.berry,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.opal,
            text: Text('Web'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('API Integration'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('08:00 am - 08:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.teal,
            text: Text('GoLang'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Documentation Review'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('08:00 am - 08:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.denim,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.lightGrey,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.purple,
            text: Text('Web'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Client Site Troubleshooting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 10:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.success,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.teal,
            text: Text('AWS'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Team Meeting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 09:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.secondary,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Milestone Demo'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 11:30 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.teal,
            text: Text('Web'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.cobalt,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('External Vendor Presentation'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 10:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('HQ'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.prussian,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateMonAfternoonItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Team Meeting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 02:45 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.primary,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Backend Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 02:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Client Engagement'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 02:45 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.prussian,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.berry,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('API Integration'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 02:45 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.complete,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.purple,
            text: Text('Elastic Search'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Client Site Troubleshooting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 02:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('HQ'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.purple,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('API Integration'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 02:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.teal,
            text: Text('Java'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateTueMorningItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Team Meeting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 09:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Conference Call'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 10:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.success,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.warning,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('External Vendor Presentation'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 10:30 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.black,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.bumbleBee,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateTueAfternoonItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('UX/UI Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('03:00 pm - 03:45 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('Kafka'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.denim,
            text: Text('Java'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Conference Call'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('03:00 pm - 03:45 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.black,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.ruby,
            text: Text('Kafka'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.complete,
            text: Text('Flutter'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateWedMorningItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('External Vendor Presentation'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 09:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.primary,
            text: Text('AWS'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Team Meeting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 11:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.cobalt,
            text: Text('Elastic Search'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Backend Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 09:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.purple,
            text: Text('AWS'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Backend Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 11:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.success,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('Elastic Search'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Client Engagement'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 11:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.ruby,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.cobalt,
            text: Text('Web'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateWedAfternoonItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Conference Call'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 04:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.lightGrey,
            text: Text('Web'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.primary,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.opal,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Client Site Troubleshooting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 03:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.tartOrange,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.lightGrey,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('UX/UI Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 04:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.berry,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Client Engagement'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 03:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.denim,
            text: Text('Web'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateThuMorningItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('UX/UI Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 11:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.berry,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.warning,
            text: Text('Web'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.opal,
            text: Text('AWS'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Milestone Demo'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 10:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('UX/UI Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 12:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.secondary,
            text: Text('AWS'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateThuAfternoonItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Backend Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('03:00 pm - 03:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.bumbleBee,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.ruby,
            text: Text('Web'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Conference Call'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('03:00 pm - 04:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.error,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.purple,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Team Meeting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('03:00 pm - 03:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.error,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.bumbleBee,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateFriMorningItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Conference Call'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 09:30 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('Java'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('External Vendor Presentation'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('09:00 am - 09:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Meeting Hall'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('GoLang'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.primary,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.primary,
            text: Text('Web'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Team Meeting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 12:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.secondary,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.secondary,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Team Meeting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 12:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.secondary,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.tartOrange,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.success,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Milestone Demo'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('11:00 am - 11:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.prussian,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.purple,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Milestone Demo'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('11:00 am - 11:30 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.warning,
            text: Text('Web'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateFriAfternoonItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('UX/UI Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 02:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.ruby,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Conference Call'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('02:00 pm - 03:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.bumbleBee,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.berry,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.tartOrange,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Backend Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('03:00 pm - 04:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.papayaWhip,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('UX/UI Development'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('03:00 pm - 05:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('HQ'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.complete,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.banana,
            text: Text('Java'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Milestone Demo'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('04:00 pm - 04:30 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.opal,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.complete,
            text: Text('Web'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Conference Call'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('04:00 pm - 05:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('War Room'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.cobalt,
            text: Text('Java'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }

  List<FUICalendarItem> _generateSatMorningItems(DateTime date) {
    return [
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Documentation Review'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 12:00 pm'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('HQ'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.ruby,
            text: Text('GoLang'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.bumbleBee,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: FUIColorScheme.teal,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Milestone Demo'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 11:00 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Client Site'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.primary,
            text: Text('Flutter'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
      FUICalendarItem(
        dateIcon: Icon(CupertinoIcons.calendar),
        date: Text(df.format(date)),
        eventName: Text('Client Site Troubleshooting'),
        timeIcon: Icon(CupertinoIcons.clock),
        time: Text('10:00 am - 10:45 am'),
        venueIcon: Icon(CupertinoIcons.location_solid),
        venue: Text('Development Floor'),
        tags: [
          FUITextPill(
            fuiColorScheme: FUIColorScheme.error,
            text: Text('AWS'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: FUIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
          ],
        ),
        sidePopupMenuIconButton: FUIPopupMenuIconButton(
          fuiPopupMenuItemList: [
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.pencil),
              label: Text('Update'),
            ),
            FUIPopupMenuItem(
              icon: Icon(CupertinoIcons.trash),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    ];
  }
}
