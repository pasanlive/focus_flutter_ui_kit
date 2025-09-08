import 'package:avatar_stack/positions.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

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
          fuiColorScheme: UIColorScheme.banana,
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
              fuiColorScheme: UIColorScheme.warning,
              avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Mike Cohen'),
            child: FUIAvatar(
              fuiColorScheme: UIColorScheme.banana,
              avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Tanner Bray'),
            child: FUIAvatar(
              fuiColorScheme: UIColorScheme.purple,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Juliana Evans'),
            child: FUIAvatar(
              fuiColorScheme: UIColorScheme.secondary,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Abdiel Roberson'),
            child: FUIAvatar(
              fuiColorScheme: UIColorScheme.purple,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Jeremy Mays'),
            child: FUIAvatar(
              fuiColorScheme: UIColorScheme.berry,
              avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Savanna Donovan'),
            child: FUIAvatar(
              fuiColorScheme: UIColorScheme.berry,
              avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
            ),
          ),
          FUITooltip(
            tooltip: Text('Mannas Khan'),
            child: FUIAvatar(
              fuiColorScheme: UIColorScheme.lightGrey,
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
            fuiColorScheme: UIColorScheme.berry,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.opal,
            text: Text('Web'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
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
            fuiColorScheme: UIColorScheme.teal,
            text: Text('GoLang'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
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
            fuiColorScheme: UIColorScheme.denim,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.lightGrey,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.purple,
            text: Text('Web'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
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
            fuiColorScheme: UIColorScheme.success,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.teal,
            text: Text('AWS'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
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
            fuiColorScheme: UIColorScheme.secondary,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
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
            fuiColorScheme: UIColorScheme.teal,
            text: Text('Web'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.cobalt,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
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
            fuiColorScheme: UIColorScheme.prussian,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
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
            fuiColorScheme: UIColorScheme.primary,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
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
            fuiColorScheme: UIColorScheme.banana,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
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
            fuiColorScheme: UIColorScheme.prussian,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.berry,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
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
            fuiColorScheme: UIColorScheme.complete,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.purple,
            text: Text('Elastic Search'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
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
            fuiColorScheme: UIColorScheme.banana,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.purple,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
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
            fuiColorScheme: UIColorScheme.teal,
            text: Text('Java'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
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
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
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
            fuiColorScheme: UIColorScheme.success,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.warning,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
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
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.black,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.bumbleBee,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
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
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('Kafka'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.denim,
            text: Text('Java'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
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
            fuiColorScheme: UIColorScheme.black,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.ruby,
            text: Text('Kafka'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.complete,
            text: Text('Flutter'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
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
            fuiColorScheme: UIColorScheme.primary,
            text: Text('AWS'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
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
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.cobalt,
            text: Text('Elastic Search'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.denim,
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
            fuiColorScheme: UIColorScheme.purple,
            text: Text('AWS'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
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
            fuiColorScheme: UIColorScheme.success,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.banana,
            text: Text('Elastic Search'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
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
            fuiColorScheme: UIColorScheme.ruby,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.cobalt,
            text: Text('Web'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
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
            fuiColorScheme: UIColorScheme.lightGrey,
            text: Text('Web'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.primary,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.opal,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
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
            fuiColorScheme: UIColorScheme.tartOrange,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.lightGrey,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
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
            fuiColorScheme: UIColorScheme.berry,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
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
            fuiColorScheme: UIColorScheme.denim,
            text: Text('Web'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
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
            fuiColorScheme: UIColorScheme.berry,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.warning,
            text: Text('Web'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.opal,
            text: Text('AWS'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
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
            fuiColorScheme: UIColorScheme.banana,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
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
            fuiColorScheme: UIColorScheme.secondary,
            text: Text('AWS'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
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
            fuiColorScheme: UIColorScheme.bumbleBee,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.ruby,
            text: Text('Web'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
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
            fuiColorScheme: UIColorScheme.error,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.purple,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
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
            fuiColorScheme: UIColorScheme.error,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.bumbleBee,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
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
            fuiColorScheme: UIColorScheme.banana,
            text: Text('Java'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
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
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('GoLang'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.primary,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.primary,
            text: Text('Web'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
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
            fuiColorScheme: UIColorScheme.secondary,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.secondary,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
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
            fuiColorScheme: UIColorScheme.secondary,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.tartOrange,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.success,
            text: Text('GoLang'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
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
            fuiColorScheme: UIColorScheme.prussian,
            text: Text('API Integration'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.purple,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
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
            fuiColorScheme: UIColorScheme.banana,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.warning,
            text: Text('Web'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.primary,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
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
            fuiColorScheme: UIColorScheme.ruby,
            text: Text('CD/CI'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.banana,
            text: Text('Kafka'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.purple,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.ruby,
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
            fuiColorScheme: UIColorScheme.bumbleBee,
            text: Text('Java'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.berry,
            text: Text('Flutter'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.tartOrange,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
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
            fuiColorScheme: UIColorScheme.papayaWhip,
            text: Text('API Integration'),
          ),
        ],
        description: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.secondary,
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
            fuiColorScheme: UIColorScheme.complete,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.banana,
            text: Text('Java'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.papayaWhip,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.banana,
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
            fuiColorScheme: UIColorScheme.opal,
            text: Text('AWS'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.complete,
            text: Text('Web'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Jeremy Mays'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.opal,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.error,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.denim,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
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
            fuiColorScheme: UIColorScheme.cobalt,
            text: Text('Java'),
          ),
        ],
        description: Text('Fusce ut placerat orci nulla pellentesque dignissim enim sit. Viverra nam libero justo laoreet sit amet.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
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
            fuiColorScheme: UIColorScheme.ruby,
            text: Text('GoLang'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.bumbleBee,
            text: Text('Elastic Search'),
          ),
          FUITextPill(
            fuiColorScheme: UIColorScheme.teal,
            text: Text('CD/CI'),
          ),
        ],
        description: Text('Integer enim neque volutpat ac tincidunt vitae semper quis. Eget nunc lobortis mattis aliquam faucibus purus in massa.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Tanner Bray'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.prussian,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Gregory Flores'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.bumbleBee,
                avatar: AssetImage('assets/demo-avatar/avatar-man-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Savanna Donovan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.tartOrange,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mckinley Davis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.complete,
                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.cobalt,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.warning,
                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mannas Khan'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.black,
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
            fuiColorScheme: UIColorScheme.primary,
            text: Text('Flutter'),
          ),
        ],
        description: Text('Sit amet volutpat consequat mauris nunc congue. Dui sapien eget mi proin sed libero. Odio pellentesque diam volutpat commodo sed.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Abdiel Roberson'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.teal,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-07.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Mike Cohen'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.lightGrey,
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
            fuiColorScheme: UIColorScheme.error,
            text: Text('AWS'),
          ),
        ],
        description: Text('Egestas diam in arcu cursus euismod quis. Morbi tristique senectus et netus et malesuada fames.'),
        avatars: FUICalendarItemAvatarStack(
          avatars: [
            FUITooltip(
              tooltip: Text('Dana Curtis'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.berry,
                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
              ),
            ),
            FUITooltip(
              tooltip: Text('Juliana Evans'),
              child: FUIAvatar(
                fuiColorScheme: UIColorScheme.success,
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
