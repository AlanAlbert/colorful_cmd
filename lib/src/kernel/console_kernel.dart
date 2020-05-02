part of command;

class ConsoleKernel<T> extends CommandRunner<T>{
  bool showTitle;
  Color titleColor;
  Logger _logger;
  List<IGroup<T>> _groups = [];

  ConsoleKernel({name = 'dart-cmd', 
    description = 'A library for building a beautiful command line application in dart.', 
    List<ILogHandler> logHandlers,
    this.showTitle = true,
    this.titleColor}): super(name, description) {
    logHandlers ??= [StdLogHandler(), FileLogHandler()];
    _logger = Logger(logHandlers: logHandlers);
    titleColor ??= randomColor();
  }


  ConsoleKernel<T> setGroups(List<IGroup<T>> groups) {
    _groups = groups;
    return this;
  }

  ConsoleKernel<T> addGroup(IGroup<T> group) {
    _groups.add(group);
    return this;
  }

  ConsoleKernel<T> addGroups(List<IGroup<T>> groups) {
    _groups.addAll(groups);
    return this;
  }

  ConsoleKernel<T> addCommands(List<Cmd<T>> commands) {
    commands.forEach((command) => addCommand(command));
    return this;
  }


  @override
  String get usage => '${getTitle()}${getDescription()}\n\n${usageWithoutTitleAndDescription}';


  /// uasge without title and description
  String get usageWithoutTitleAndDescription {
    var usagePrefix = 'Usage: \n';
    var pen = ColorText()
      .gold(wrap(usagePrefix))
      .white('  ${wrap(invocation, hangingIndent: usagePrefix.length)}\n\n')
      .gold('Global options: \n')
      .white('  ${argParser.usage}\n\n')
      .text('${getCommandUsage(commands, lineLength: argParser.usageLineLength)}\n');

    if (usageFooter != null) {
      pen.text('\n${wrap(usageFooter)}\n\n');
    }

    return pen.toString();
  }


  void addGroupCommands() {
    groupsCommands.forEach((command) {
      if (command.name == null) throw VariableIsNull('Cmd(${command.runtimeType})\'s name');
      if (command.description == null) throw VariableIsNull('Cmd(${command.runtimeType})\'s description');
      addCommand(command);
    });
  }


  /// get all commands that belongs to group
  List<Cmd<T>> get groupsCommands {
    var commands = <Cmd<T>>[];
    _groups.forEach((group) => commands.addAll(group.getAllCommands()));
    return commands;
  }


  @override
  Future<T> run(Iterable<String> args) async {
    try {
      
      addGroupCommands();
      return await super.run(args);

    } on UsageException catch(e) {
      _logger.error('\n\n$e');  
    } catch(e, s) {
      _logger.error(e).trace('Call stack: \n$s');
    }
    return null;
  }


  /// throw usage exception
  @override
  void usageException(String message) =>
      throw UsageException(message, usageWithoutTitleAndDescription);


  /// get title.
  String getTitle() {
    if (showTitle) {
      return TextPen().setColor(titleColor)
        .text('${formatChars(executableName)}\n')
        .normal()
        .toString();
    }
    return '';
  }

  /// get colorful description.
  String getDescription() {
    return ColorText().cyan(description).toString();
  }


  String wrap(String text, {int hangingIndent}) => wrapText(text,
      length: argParser.usageLineLength, hangingIndent: hangingIndent);

  
  /// get commands usage.
  String getCommandUsage(Map<String, Command> commands,
      {bool isSubcommand = false, int lineLength}) {
    // Don't include aliases.
    var names =
        commands.keys.where((name) => !commands[name].aliases.contains(name));

    // Filter out hidden ones, unless they are all hidden.
    var visible = names.where((name) => !commands[name].hidden);
    if (visible.isNotEmpty) names = visible;

    // Show the commands alphabetically.
    names = names.toList()..sort();

    var groupCmdMaps = <String, String>{};
    var cmdsNotInGroup = <String>[];
    names.forEach((name) {
      if (name == null) throw VariableIsNull('Cmd(${commands[name].runtimeType})\'s name');
      if (commands[name].description == null) throw VariableIsNull('Cmd(${commands[name].runtimeType})\'s description');
      var index = name.indexOf(':');
      if (index >= 0) {
        groupCmdMaps[name] = name.substring(0, index);
      } else {
        cmdsNotInGroup.add(name);
      }
    });

    var length = names.map((name) {
      return name.length;
    }).reduce(max);

    var buffer = StringBuffer(ColorText().yellow('Available ${isSubcommand ? "sub" : ""}commands:'));
    var columnStart = length + 5;

    /// display commands that not in groups
    for (var name in cmdsNotInGroup) {
      var lines = wrapTextAsLines(commands[name].summary,
          start: columnStart, length: lineLength);
      buffer.writeln();
      
      buffer.write(ColorText().green('  ${padRight(name, length)}   ').white(lines.first));

      for (var line in lines.skip(1)) {
        buffer.writeln();
        buffer.write(' ' * columnStart);
        buffer.write(line);
      }
    }


    /// display group commands
    for (var name in names) {
      if (!groupCmdMaps.containsKey(name)) {
        continue;
      }
      var lines = wrapTextAsLines(commands[name].summary,
          start: columnStart, length: lineLength);
      
      buffer.writeln();
      buffer.writeln(ColorText().yellow(' ${groupCmdMaps[name]}'));
      buffer.write(ColorText().green('  ${padRight(name, length)}   ').white(lines.first));

      for (var line in lines.skip(1)) {
        buffer.writeln();
        buffer.write(' ' * columnStart);
        buffer.write(line);
      }
    }

    return buffer.toString();
  }
}