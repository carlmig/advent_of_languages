fun main(args: Array<String>){
    
    val levels:Int = args[0].toInt();


    var spaces = levels -1;
    var asterisks = 1;

    for(i in 1..levels){
        println(" ".repeat(spaces) + "*".repeat(asterisks));
        spaces = spaces -1;
        asterisks = asterisks + 2;
    }
    println(" ".repeat(levels - 1) + "|");
}