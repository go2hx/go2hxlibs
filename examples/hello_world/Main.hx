function main() {
    final t = stdgo.strings.Strings.cut("Hello world", " ");
    final before = t._0, after = t._1, found = t._2;
    trace(before,after,found);
}